const assert = require('node:assert/strict');
const fs = require('node:fs');
const path = require('node:path');
const test = require('node:test');
const vm = require('node:vm');

const root = path.join(__dirname, '..');
const audioDir = path.join(root, 'godot_source', 'audio');
const script = fs.readFileSync(path.join(root, 'godot_source', 'RGGmain.gd'), 'utf8');
const exportPresets = fs.readFileSync(path.join(root, 'godot_source', 'export_presets.cfg'), 'utf8');

test('every bundled sound has an external web asset', () => {
    const references = [...script.matchAll(/"res:\/\/audio\/([^"\n]+\.(?:mp3|wav))"/g)].map((match) => match[1]);
    const files = fs.readdirSync(audioDir).filter((name) => /\.(mp3|wav)$/i.test(name));
    assert.deepEqual(new Set(references), new Set(files));
    assert.equal(references.length, new Set(references).size);

    for (const name of files) {
        const bytes = fs.readFileSync(path.join(audioDir, name));
        assert.ok(bytes.length > 100, `Empty sound: ${name}`);
        if (name.toLowerCase().endsWith('.wav')) {
            assert.equal(bytes.toString('ascii', 0, 4), 'RIFF', name);
            assert.equal(bytes.toString('ascii', 8, 12), 'WAVE', name);
        } else {
            assert.ok(bytes.toString('ascii', 0, 3) === 'ID3' || (bytes[0] === 0xff && (bytes[1] & 0xe0) === 0xe0), `Invalid MP3: ${name}`);
        }
    }

    const webPreset = exportPresets.split('[preset.0.options]')[0];
    assert.match(webPreset, /exclude_filter="[^"]*audio\/\*\.mp3[^"]*audio\/\*\.wav/);
});

test('web audio loader fetches a Unicode filename from the published audio folder', () => {
    const loader = script.slice(script.indexOf('func _load_audio_stream('));
    const match = loader.match(/var script: = """\r?\n([\s\S]*?)\r?\n""" % JSON\.stringify\(path\.get_file\(\)\)/);
    assert.ok(match, 'Web audio request script was not found');
    const javascript = match[1].replace('%s', JSON.stringify('пицца.mp3'));
    const requested = [];

    class FakeRequest {
        open(method, url, asynchronous) {
            assert.equal(method, 'GET');
            assert.equal(asynchronous, false);
            requested.push(url);
        }
        overrideMimeType() {}
        set responseType(value) { this.type = value; }
        send() {
            this.status = 200;
            this.response = Uint8Array.from([0x49, 0x44, 0x33]).buffer;
        }
    }

    const result = vm.runInNewContext(javascript, {
        XMLHttpRequest: FakeRequest,
        ArrayBuffer,
        Uint8Array,
        encodeURIComponent,
    });
    assert.equal(requested[0], `godot_source/audio/${encodeURIComponent('пицца.mp3')}`);
    assert.deepEqual([...new Uint8Array(result)], [0x49, 0x44, 0x33]);
});

test('startup preloads every external sound and the Godot loader reuses its bytes', async () => {
    const index = fs.readFileSync(path.join(root, 'index.html'), 'utf8');
    const published = fs.readFileSync(path.join(root, 'rggweb.html'), 'utf8');
    const audioBlock = (html) => {
        const match = html.match(/\/\/ RGG audio preload start\r?\n([\s\S]*?)\r?\n\s*\/\/ RGG audio preload end/);
        assert.ok(match, 'Audio preload bridge was not found');
        assert.match(html, /await audioPreloadPromise;[\s\S]*?await audioPreparedPromise;/);
        return match[1];
    };
    assert.equal(audioBlock(index), audioBlock(published));

    const requested = [];
    const browser = {};
    vm.runInNewContext(audioBlock(index), {
        window: browser,
        fetch: async (url) => {
            requested.push(url);
            return { ok: true, arrayBuffer: async () => Uint8Array.from([0x49, 0x44, 0x33]).buffer };
        },
        encodeURIComponent,
        Map,
        Promise,
        Array,
        console,
    });
    const filenames = await new Promise((resolve) => browser.rggPreloadAudio((json) => resolve(JSON.parse(json))));
    const references = [...script.matchAll(/"res:\/\/audio\/([^"\n]+\.(?:mp3|wav))"/g)].map((match) => match[1]);
    assert.deepEqual(filenames.slice().sort(), references.slice().sort());
    assert.ok(requested.includes(`godot_source/audio/${encodeURIComponent('пицца.mp3')}`));

    const loader = script.slice(script.indexOf('func _load_audio_stream('));
    const match = loader.match(/var script: = """\r?\n([\s\S]*?)\r?\n""" % JSON\.stringify\(path\.get_file\(\)\)/);
    assert.ok(match);
    const javascript = match[1].replace('%s', JSON.stringify('roll.wav'));
    const bytes = vm.runInNewContext(javascript, {
        window: browser,
        XMLHttpRequest: class { constructor() { throw new Error('Unexpected first-roll request'); } },
        ArrayBuffer,
        Uint8Array,
        encodeURIComponent,
    });
    assert.deepEqual([...new Uint8Array(bytes)], [0x49, 0x44, 0x33]);
    assert.equal(browser.rggTakePreloadedAudio('roll.wav'), null);
    browser.rggFinishAudioPreload();
});
