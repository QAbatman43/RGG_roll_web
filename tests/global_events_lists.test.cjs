const assert = require('node:assert/strict');
const fs = require('node:fs');
const path = require('node:path');
const test = require('node:test');

const root = path.join(__dirname, '..');

function readList(folder, name) {
    const bytes = fs.readFileSync(path.join(root, folder, 'global_events_' + name + '.dat'));
    return new TextDecoder('utf-8', { fatal: true }).decode(bytes).replace(/^\uFEFF/, '').split(/\r?\n/).map(line => line.trim()).filter(Boolean);
}

test('global event categories have unique entries and matching descriptions', () => {
    const categories = ['normal', 'comp', 'special'];
    const entries = categories.flatMap(name => {
        const source = readList('godot_source/lists', name);
        assert.deepEqual(source, readList('lists', name), `${name} web list differs from Godot`);
        assert.ok(source.length > 0, `${name} is empty`);
        return source;
    });
    assert.equal(new Set(entries).size, entries.length, 'an event is present in multiple categories');

    const descriptionLines = readList('godot_source/lists', 'list');
    assert.deepEqual(descriptionLines, readList('lists', 'list'), 'web descriptions differ from Godot');
    const descriptions = new Map(descriptionLines.map(line => {
        const separator = line.indexOf('|');
        assert.ok(separator > 0 && line.slice(separator + 1).trim(), `missing description: ${line}`);
        return [line.slice(0, separator).trim(), line.slice(separator + 1).trim()];
    }));
    assert.equal(descriptions.size, descriptionLines.length, 'duplicate description title');
    for (const entry of entries) assert.ok(descriptions.has(entry), `missing description for ${entry}`);
});
