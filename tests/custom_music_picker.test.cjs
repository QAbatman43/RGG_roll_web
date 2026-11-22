const assert = require('node:assert/strict');
const fs = require('node:fs');
const path = require('node:path');
const test = require('node:test');
const vm = require('node:vm');

const root = path.join(__dirname, '..');

test('multi music picker sends every selected track in order', { timeout: 3000 }, async () => {
    const html = fs.readFileSync(path.join(root, 'index.html'), 'utf8');
    const published = fs.readFileSync(path.join(root, 'rggweb.html'), 'utf8');
    assert.equal(html, published);
    const start = html.indexOf('window.rggOpenUserFilePicker = function');
    const end = html.indexOf('window.rggReadBackupBackground =', start);
    assert.ok(start >= 0 && end > start);

    const files = [
        { name: 'first.mp3', size: 1000, dataUrl: 'data:audio/mpeg;base64,SUQzMQ==' },
        { name: 'second.mp3', size: 1200, dataUrl: 'data:audio/mpeg;base64,SUQzMg==' },
    ];
    const input = {
        files,
        style: {},
        addEventListener(name, handler) { assert.equal(name, 'change'); this.onChange = handler; },
        click() { this.onChange(); },
    };
    const document = {
        createElement(name) { assert.equal(name, 'input'); return input; },
        body: {
            appendChild(element) { element.parentNode = this; },
            removeChild(element) { element.parentNode = null; },
        },
    };
    class FakeFileReader {
        readAsDataURL(file) {
            this.result = file.dataUrl;
            this.onload();
        }
    }
    const window = {};
    vm.runInNewContext(html.slice(start, end), { window, document, FileReader: FakeFileReader, Date, Math, Array, JSON, Promise });

    const messages = await new Promise((resolve) => {
        const received = [];
        window.rggOpenUserFilePicker('music_multiple', '.mp3,audio/mpeg', (json) => {
            received.push(JSON.parse(json));
            if (received.at(-1).stage === 'end') resolve(received);
        });
    });
    assert.equal(input.multiple, true);
    assert.deepEqual(messages.map((message) => message.stage), ['begin', 'track', 'track', 'end']);
    assert.deepEqual(messages.filter((message) => message.stage === 'track').map((message) => message.data_url), files.map((file) => file.dataUrl));
    assert.equal(new Set(messages.map((message) => message.request_id)).size, 1);
    assert.equal(input.parentNode, null);
});
