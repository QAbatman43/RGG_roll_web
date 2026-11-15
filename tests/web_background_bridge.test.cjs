const assert = require('node:assert/strict');
const fs = require('node:fs');
const path = require('node:path');
const test = require('node:test');
const vm = require('node:vm');

const html = fs.readFileSync(path.join(__dirname, '..', 'index.html'), 'utf8');
const bridge = html.match(/\/\/ RGG custom web bridge start[\s\S]*?\/\/ RGG custom web bridge end/)[0];

function createBrowser(saved = new Map(), withStorage = true) {
    const urls = new Map();
    const inputs = [];
    const videos = [];
    const intervals = new Map();
    const timeouts = new Map();
    const gifDecoders = [];
    let nextUrl = 0;
    let nextInterval = 0;
    let nextTimeout = 0;

    class FakeMedia {
        constructor(tagName) {
            this.tagName = tagName;
            this.naturalWidth = 640;
            this.naturalHeight = 360;
            this.videoWidth = 640;
            this.videoHeight = 360;
            this.readyState = 3;
            this.volume = 1;
            this.muted = false;
            this.listeners = new Map();
            if (tagName === 'VIDEO') videos.push(this);
        }
        set src(url) {
            const file = urls.get(url);
            this.duration = file?.duration;
            queueMicrotask(() => {
                if (this.tagName === 'VIDEO') this.onloadedmetadata?.();
                else this.onload?.();
            });
        }
        addEventListener(name, callback) { this.listeners.set(name, callback); }
        emit(name) { this.listeners.get(name)?.(); }
        removeAttribute() {}
        load() {}
        pause() {}
        play() { return Promise.resolve(); }
    }

    const document = {
        body: {
            appendChild(node) { node.parentNode = this; },
            removeChild(node) { node.parentNode = null; },
        },
        createElement(tag) {
            if (tag === 'video') return new FakeMedia('VIDEO');
            if (tag === 'canvas') {
                const canvas = {
                    getContext() { return { fillRect() {}, drawImage(image) { canvas.lastFrame = image.frameIndex ?? 0; } }; },
                    toDataURL(type) { return `data:${type};base64,${canvas.lastFrame ?? 0}`; },
                };
                return canvas;
            }
            if (tag === 'input') {
                const input = {
                    listeners: new Map(),
                    style: {},
                    addEventListener(name, callback) { this.listeners.set(name, callback); },
                    click() {},
                    choose(file) {
                        this.files = [file];
                        return this.listeners.get('change')();
                    },
                };
                inputs.push(input);
                return input;
            }
            throw new Error(`Unexpected element: ${tag}`);
        },
    };

    const indexedDB = {
        open() {
            const request = {
                result: {
                    createObjectStore() {},
                    close() {},
                    transaction() {
                        const transaction = {
                            objectStore() {
                                return {
                                    get(key) {
                                        const getRequest = {};
                                        queueMicrotask(() => {
                                            getRequest.result = saved.get(key);
                                            getRequest.onsuccess?.();
                                        });
                                        return getRequest;
                                    },
                                    put(value, key) {
                                        saved.set(key, value);
                                        queueMicrotask(() => transaction.oncomplete?.());
                                    },
                                    delete(key) {
                                        saved.delete(key);
                                        queueMicrotask(() => transaction.oncomplete?.());
                                    },
                                };
                            },
                        };
                        return transaction;
                    },
                },
            };
            queueMicrotask(() => {
                request.onupgradeneeded?.();
                request.onsuccess?.();
            });
            return request;
        },
    };

    const window = { addEventListener() {} };
    const context = {
        window,
        document,
        indexedDB: withStorage ? indexedDB : undefined,
        Image: class extends FakeMedia { constructor() { super('IMG'); } },
        ImageDecoder: class {
            static isTypeSupported(type) { return Promise.resolve(type === 'image/gif'); }
            constructor() {
                this.tracks = { ready: Promise.resolve(), selectedTrack: { frameCount: 2 } };
                this.closed = false;
                gifDecoders.push(this);
            }
            decode({ frameIndex }) {
                return Promise.resolve({ image: {
                    frameIndex,
                    displayWidth: 640,
                    displayHeight: 360,
                    duration: 100000,
                    close() {},
                } });
            }
            close() { this.closed = true; }
        },
        FileReader: class {
            readAsDataURL() {
                queueMicrotask(() => this.onload?.({ target: { result: 'data:image/png;base64,ZmFrZQ==' } }));
            }
        },
        URL: {
            createObjectURL(file) {
                const url = `blob:${++nextUrl}`;
                urls.set(url, file);
                return url;
            },
            revokeObjectURL(url) { urls.delete(url); },
        },
        setInterval(callback) {
            const id = ++nextInterval;
            intervals.set(id, callback);
            return id;
        },
        clearInterval(id) { intervals.delete(id); },
        setTimeout(callback, delay) {
            const id = ++nextTimeout;
            timeouts.set(id, { callback: () => { timeouts.delete(id); return callback(); }, delay });
            return id;
        },
        clearTimeout(id) { timeouts.delete(id); },
        console: { error() {} },
    };
    vm.runInNewContext(bridge, context);
    return { window, saved, inputs, videos, intervals, timeouts, gifDecoders };
}

async function settle() {
    for (let i = 0; i < 30; i += 1) await Promise.resolve();
}

async function choose(browser, file) {
    const payloads = [];
    browser.window.rggOpenUserFilePicker('background', 'image/*,video/mp4', value => payloads.push(JSON.parse(value)));
    await browser.inputs.at(-1).choose(file);
    await settle();
    return payloads[0];
}

test('video is saved, looped, and stays silent even when unmuted externally', async () => {
    const browser = createBrowser();
    const result = await choose(browser, { name: 'intro.mp4', size: 1024, duration: 12 });
    assert.equal(result.media_type, 'animated');
    assert.equal(browser.saved.get('selected').type, 'video');

    const frames = [];
    const errors = [];
    browser.window.rggStartBackgroundAnimation(frame => frames.push(frame), error => errors.push(error));
    await settle();
    assert.equal(errors.length, 0);
    assert.ok(frames[0].startsWith('data:image/jpeg;base64,'));
    const video = browser.videos.at(-1);
    assert.equal(video.loop, true);
    assert.equal(video.playsInline, true);
    assert.equal(video.muted, true);
    assert.equal(video.volume, 0);
    video.muted = false;
    video.volume = 1;
    video.emit('volumechange');
    assert.equal(video.muted, true);
    assert.equal(video.volume, 0);
    browser.window.rggStopBackgroundAnimation();
    assert.equal(browser.intervals.size, 0);
});

test('video longer than 20 seconds does not replace the current background', async () => {
    const browser = createBrowser();
    await choose(browser, { name: 'good.mp4', size: 1024, duration: 20 });
    const result = await choose(browser, { name: 'long.webm', size: 1024, duration: 20.1 });
    assert.match(result.error, /20 секунд/);
    assert.equal(browser.saved.get('selected').blob.name, 'good.mp4');
});

test('GIF is animated and a still image clears the saved animation', async () => {
    const browser = createBrowser();
    const gif = await choose(browser, { name: 'loop.gif', type: 'image/gif', size: 1024, arrayBuffer: async () => new ArrayBuffer(8) });
    assert.equal(gif.media_type, 'animated');
    const frames = [];
    const errors = [];
    const reloaded = createBrowser(browser.saved);
    reloaded.window.rggStartBackgroundAnimation(frame => frames.push(frame), error => errors.push(error));
    await settle();
    assert.deepEqual(errors, []);
    assert.equal(frames.length, 1);
    assert.equal(reloaded.timeouts.size, 1);
    const tick = [...reloaded.timeouts.values()][0];
    assert.equal(tick.delay, 100);
    await tick.callback();
    await settle();
    assert.equal(frames.length, 2);
    assert.notEqual(frames[0], frames[1]);

    const image = await choose(reloaded, { name: 'still.png', type: 'image/png', size: 1024 });
    assert.ok(image.data_url.startsWith('data:image/png;base64,'));
    assert.equal(browser.saved.has('selected'), false);
    assert.equal(reloaded.timeouts.size, 0);
    assert.equal(reloaded.gifDecoders[0].closed, true);
});

test('oversized animation is rejected and reset clears saved media', async () => {
    const browser = createBrowser();
    const result = await choose(browser, { name: 'huge.gif', size: 31 * 1024 * 1024 });
    assert.match(result.error, /30 МБ/);
    await choose(browser, { name: 'small.gif', size: 1024 });
    browser.window.rggClearBackgroundAnimation();
    await settle();
    assert.equal(browser.saved.has('selected'), false);
});

test('still images remain available when browser storage is disabled', async () => {
    const browser = createBrowser(new Map(), false);
    const image = await choose(browser, { name: 'still.png', type: 'image/png', size: 1024 });
    assert.ok(image.data_url.startsWith('data:image/png;base64,'));
    const gif = await choose(browser, { name: 'loop.gif', type: 'image/gif', size: 1024 });
    assert.match(gif.error, /не разрешает сохранять/);
});
