const { test } = require('node:test');
const assert = require('node:assert/strict');
const { emptyRecord, validateRecord, mergeRecords, updateLab, read, scoreValue, storageKey } = require('../docs/site-assets/progress.js');

test('round-trip retains all 28 labs without identities', () => {
  const record = emptyRecord();
  assert.equal(Object.keys(validateRecord(JSON.parse(JSON.stringify(record))).labs).length, 28);
  assert(!JSON.stringify(record).includes('subscriptionId'));
});
test('completion needs validation and cleanup', () => {
  const record = emptyRecord();
  record.labs['LAB-01'].status = 'complete';
  assert.throws(() => validateRecord(record), /validation and cleanup/);
  record.labs['LAB-01'].validationPassed = true;
  record.labs['LAB-01'].cleanupPassed = true;
  record.labs['LAB-01'].breakFixPassed = true;
  assert.equal(validateRecord(record).labs['LAB-01'].status, 'complete');
});

test('blank scores remain unrecorded while zero remains a real score', () => {
  assert.equal(scoreValue(''), null);
  assert.equal(scoreValue('  '), null);
  assert.equal(scoreValue('0'), 0);
  assert.throws(() => scoreValue('12.5'));
  assert.throws(() => scoreValue('NaN'));
});

test('v1 migration preserves history without granting new verification', () => {
  const old = emptyRecord(); old.schemaVersion = '1.0.0';
  for (const entry of Object.values(old.labs)) for (const key of ['breakFixPassed','assessmentRevision','legacyCompletion','evidenceSource']) delete entry[key];
  Object.assign(old.labs['LAB-01'], {status:'complete',validationPassed:true,cleanupPassed:true,assessmentScore:90});
  const migrated = validateRecord(old);
  assert.equal(migrated.labs['LAB-01'].status, 'needs-review');
  assert.equal(migrated.labs['LAB-01'].assessmentScore, 90);
  assert.equal(migrated.labs['LAB-01'].legacyCompletion, true);
  assert.equal(migrated.labs['LAB-01'].breakFixPassed, false);
});

test('import merge ignores untouched defaults and retains existing achievements', () => {
  const current = emptyRecord(), incoming = emptyRecord();
  Object.assign(current.labs['LAB-01'], {status:'complete',validationPassed:true,cleanupPassed:true,breakFixPassed:true});
  incoming.labs['LAB-02'].assessmentScore=84;
  const merged = mergeRecords(current, incoming);
  assert.equal(merged.labs['LAB-01'].status, 'complete');
  assert.equal(merged.labs['LAB-02'].assessmentScore, 84);
});

test('sequential writes from stale UI references preserve other labs', () => {
  const data = new Map(), storage = {getItem:k=>data.get(k)||null,setItem:(k,v)=>data.set(k,v)};
  const oldTab = read(storage).record;
  updateLab(storage,'LAB-01',{validationPassed:true,cleanupPassed:true,breakFixPassed:true});
  updateLab(storage,'LAB-02',{assessmentScore:scoreValue('')});
  const current = JSON.parse(storage.getItem(storageKey));
  assert.equal(oldTab.labs['LAB-01'].status,'not-started');
  assert.equal(current.labs['LAB-01'].status,'complete');
  assert.equal(current.labs['LAB-02'].assessmentScore,null);
});

test('invalid stored state cannot be silently overwritten by a save', () => {
  const storage = {getItem:()=>'{broken',setItem:()=>assert.fail('must not write')};
  assert.throws(()=>updateLab(storage,'LAB-01',{status:'in-progress'}));
});
test('unknown fields and nested identity data are rejected', () => {
  const record = emptyRecord();
  record.labs['LAB-01'].tenantId = 'private';
  assert.throws(() => validateRecord(record));
});
test('hands-on labs cannot carry assessment scores', () => {
  const record = emptyRecord();
  record.labs['LAB-26'].assessmentScore = 90;
  assert.throws(() => validateRecord(record), /hands-on only/);
});
test('malformed scores, timestamps, and lab IDs are rejected', () => {
  for (const mutate of [r => r.labs['LAB-02'].assessmentScore = 101, r => r.exportedAt = 'yesterday', r => delete r.labs['LAB-27']]) {
    const record = emptyRecord(); mutate(record);
    assert.throws(() => validateRecord(record));
  }
});
