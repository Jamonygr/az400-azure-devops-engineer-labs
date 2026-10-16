const { test } = require('node:test');
const assert = require('node:assert/strict');
const { validState, score } = require('../docs/site-assets/quiz.js');
const bank={revision:'abc',questions:[{id:'L01-Q001',options:[{key:'A'},{key:'B'},{key:'C'},{key:'D'}],correctAnswers:['B']}]};
test('changed question content invalidates only that bank state',()=>{
  const state=validState({revision:'old',history:{'L01-Q001':{choice:'B',correct:true}}},bank);
  assert.deepEqual(state.history,{}); assert.equal(state.session,null);
});
test('stored correctness is recomputed from the current bank',()=>{
  const state=validState({revision:'abc',history:{'L01-Q001':{choice:'A',correct:true}}},bank);
  assert.equal(state.history['L01-Q001'].correct,false);
});
test('unknown questions and impossible session positions are discarded',()=>{
  assert.equal(validState({revision:'abc',session:{mode:'full',ids:['bad'],index:8,answers:{}}},bank).session,null);
});
test('scoring uses submitted responses',()=>{
  assert.equal(score(bank,{ids:['L01-Q001'],answers:{'L01-Q001':'B'}}),100);
  assert.equal(score(bank,{ids:['L01-Q001'],answers:{'L01-Q001':'A'}}),0);
});
test('malformed answer history is discarded without breaking practice',()=>{
  const state=validState({revision:'abc',history:{'L01-Q001':null}},bank);
  assert.deepEqual(state.history,{});
});
