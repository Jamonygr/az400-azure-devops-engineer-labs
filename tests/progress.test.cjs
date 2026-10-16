const { test } = require('node:test');
const assert = require('node:assert/strict');
const { emptyRecord, validateRecord } = require('../docs/site-assets/progress.js');

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
  assert.equal(validateRecord(record).labs['LAB-01'].status, 'complete');
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
