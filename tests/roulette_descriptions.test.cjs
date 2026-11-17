const assert = require('node:assert/strict');
const fs = require('node:fs');
const path = require('node:path');
const test = require('node:test');

const root = path.join(__dirname, '..');
const read = (relativePath) => fs.readFileSync(path.join(root, relativePath), 'utf8');
const lines = (text) => text.split(/\r?\n/).map((line) => line.trim()).filter(Boolean);

test('roulette outcomes have unique matching descriptions in both list copies', () => {
    const sourceOutcomes = read('godot_source/lists/roulette.dat');
    const sourceDescriptions = read('godot_source/lists/roulette_list.dat');
    assert.equal(sourceOutcomes, read('lists/roulette.dat'));
    assert.equal(sourceDescriptions, read('lists/roulette_list.dat'));

    const outcomes = lines(sourceOutcomes);
    const descriptions = new Map();
    for (const line of lines(sourceDescriptions)) {
        const separator = line.indexOf('|');
        assert.ok(separator > 0, `Missing separator: ${line}`);
        const title = line.slice(0, separator).trim();
        const description = line.slice(separator + 1).replace(/\|lnk=https?:\/\/\S+$/, '').trim();
        assert.ok(description, `Empty description: ${title}`);
        assert.ok(!descriptions.has(title), `Duplicate description: ${title}`);
        descriptions.set(title, description);
    }

    assert.equal(new Set(outcomes).size, outcomes.length);
    assert.deepEqual(new Set(outcomes), new Set(descriptions.keys()));
    assert.ok(sourceDescriptions.includes('Орел или решка|'));
    assert.ok(sourceDescriptions.includes('|lnk=https://codepen.io/satanch/full/BrBRRv/'));
});
