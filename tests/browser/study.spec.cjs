const {test,expect}=require('@playwright/test');
const fs=require('node:fs'),path=require('node:path');
const {emptyRecord}=require('../../docs/site-assets/progress.js');
const base='http://127.0.0.1:8787/az400-azure-devops-engineer-labs/';
const key='az400LearnerProgress.v2';
test('catalog filters and study navigation work under the project prefix',async({page})=>{
  await page.goto('./docs/lab-explorer/');
  await expect(page.getByRole('status')).toContainText('28 of 28');
  await page.getByRole('searchbox',{name:'Search labs',exact:true}).fill('Git recovery');
  await expect(page.getByRole('status')).toContainText('1 of 28');
  await page.locator('.az400-lab-card a').click();
  await expect(page).toHaveURL(/06-git-recovery-history/);
  await expect(page.getByRole('link',{name:'Practise this lab',exact:true})).toBeVisible();
  const overflow=await page.evaluate(()=>document.documentElement.scrollWidth>innerWidth+1);
  expect(overflow).toBe(false);
});
test('two lab tabs preserve progress and blank score stays null',async({context,page})=>{
  await page.goto('./labs/01-work-tracking-traceability/');
  const other=await context.newPage(); await other.goto(base+'labs/02-devops-metrics/');
  for(const name of ['Record validation pass','Record break/fix pass','Record cleanup pass']) await page.getByRole('button',{name,exact:true}).click();
  await other.getByRole('button',{name:'Save score',exact:true}).click();
  const record=await other.evaluate(k=>JSON.parse(localStorage.getItem(k)),key);
  expect(record.labs['LAB-01'].status).toBe('complete');expect(record.labs['LAB-02'].assessmentScore).toBeNull();
  await other.reload(); await expect(other.locator('[data-az400-lab-progress] [role="status"]')).toContainText('Assessment not recorded');
});
test('import previews and merges without wiping untouched achievements',async({page})=>{
  await page.goto('./docs/learner-progress/');
  const old=emptyRecord();Object.assign(old.labs['LAB-01'],{status:'complete',validationPassed:true,cleanupPassed:true,breakFixPassed:true});
  await page.evaluate(([k,v])=>localStorage.setItem(k,JSON.stringify(v)),[key,old]);await page.reload();
  const incoming=emptyRecord();incoming.labs['LAB-02'].assessmentScore=86;
  await page.getByLabel('Import AZ-400 progress JSON').setInputFiles({name:'progress.json',mimeType:'application/json',buffer:Buffer.from(JSON.stringify(incoming))});
  await expect(page.getByRole('heading',{name:'Review before importing'})).toBeVisible();
  expect(await page.evaluate(k=>JSON.parse(localStorage.getItem(k)).labs['LAB-02'].assessmentScore,key)).toBeNull();
  await page.getByRole('button',{name:'Apply import',exact:true}).click();
  const saved=await page.evaluate(k=>JSON.parse(localStorage.getItem(k)),key);expect(saved.labs['LAB-01'].status).toBe('complete');expect(saved.labs['LAB-02'].assessmentScore).toBe(86);
});
test('quiz hides explanations until submission, resumes and tracks missed questions',async({page})=>{
  await page.goto('./docs/practice/?lab=01'); await expect(page.getByRole('button',{name:'Start new attempt'})).toBeVisible();
  await page.getByLabel('Practice mode').selectOption('advanced'); await page.getByRole('button',{name:'Start new attempt'}).click();
  await expect(page.locator('.az400-quiz-explanation')).toHaveCount(0);
  await page.locator('.az400-quiz-card input[type="radio"]').first().check(); await page.getByRole('button',{name:'Submit answer',exact:true}).click();
  await expect(page.locator('.az400-quiz-explanation')).toBeVisible(); await page.reload();
  await expect(page.locator('.az400-quiz-explanation')).toBeVisible();
  expect(await page.evaluate(k=>localStorage.getItem(k),key)).toBeNull();
  await expect(page.locator('.az400-quiz-card fieldset legend')).toBeVisible();
});
test('full quiz updates the score without completing a practical lab',async({page})=>{
  const bank=JSON.parse(fs.readFileSync(path.join(__dirname,'../../.site-docs/docs/site-assets/data/quiz-01.json'),'utf8'));
  await page.goto('./docs/practice/?lab=01');await page.getByRole('button',{name:'Start new attempt'}).click();
  for(let i=0;i<bank.questions.length;i++){
    await page.locator(`input[name="quiz-answer"][value="${bank.questions[i].correctAnswers[0]}"]`).check();
    await page.getByRole('button',{name:'Submit answer',exact:true}).click();
    await page.getByRole('button',{name:i===49?'Finish attempt':'Next question',exact:true}).click();
  }
  await expect(page.getByRole('heading',{name:'Attempt complete: 100%'})).toBeVisible();
  const record=await page.evaluate(k=>JSON.parse(localStorage.getItem(k)),key);expect(record.labs['LAB-01'].assessmentScore).toBe(100);expect(record.labs['LAB-01'].validationPassed).toBe(false);expect(record.labs['LAB-01'].status).toBe('in-progress');
});
test('unavailable storage still permits practice and announces failed saves',async({page})=>{
  await page.addInitScript(()=>{Object.defineProperty(window,'localStorage',{get(){throw new DOMException('Denied','SecurityError');}});});
  await page.goto('./docs/practice/');await page.getByRole('button',{name:'Start new attempt'}).click();
  await expect(page.getByRole('status')).toContainText('storage');
  await page.locator('.az400-quiz-card input[type="radio"]').first().focus();await page.keyboard.press('Space');await page.getByRole('button',{name:'Submit answer',exact:true}).click();
  await expect(page.locator('.az400-quiz-explanation')).toBeVisible();
});
test('legacy imports retain scores and require new verification, replacement is explicit',async({page})=>{
  await page.goto('./docs/learner-progress/');
  const current=emptyRecord();current.labs['LAB-03'].assessmentScore=91;
  await page.evaluate(([k,v])=>localStorage.setItem(k,JSON.stringify(v)),[key,current]);await page.reload();
  const legacy={schemaVersion:'1.0.0',exportedAt:new Date().toISOString(),labs:{}};
  for(const [id,entry] of Object.entries(emptyRecord().labs)){const {status,validationPassed,cleanupPassed,assessmentScore,updatedAt}=entry;legacy.labs[id]={status,validationPassed,cleanupPassed,assessmentScore,updatedAt};}
  Object.assign(legacy.labs['LAB-01'],{status:'complete',validationPassed:true,cleanupPassed:true,assessmentScore:88});
  await page.getByLabel('Import AZ-400 progress JSON').setInputFiles({name:'legacy.json',mimeType:'application/json',buffer:Buffer.from(JSON.stringify(legacy))});
  await expect(page.getByLabel('Import behavior')).toHaveValue('merge');
  await page.getByLabel('Import behavior').selectOption('replace');
  const backup=page.waitForEvent('download');await page.getByRole('button',{name:'Apply import',exact:true}).click();
  expect((await backup).suggestedFilename()).toBe('az400-progress-before-replacement.json');
  const record=await page.evaluate(k=>JSON.parse(localStorage.getItem(k)),key);
  expect(record.labs['LAB-01'].status).toBe('needs-review');expect(record.labs['LAB-01'].assessmentScore).toBe(88);
  expect(record.labs['LAB-01'].breakFixPassed).toBe(false);expect(record.labs['LAB-03'].assessmentScore).toBeNull();
  await page.reload();await expect(page.locator('.az400-progress-grid')).toContainText('Previous bank: 88%');
});
test('invalid import leaves progress untouched and export is available',async({page})=>{
  await page.goto('./docs/learner-progress/');
  const record=emptyRecord();record.labs['LAB-01'].assessmentScore=75;
  await page.evaluate(([k,v])=>localStorage.setItem(k,JSON.stringify(v)),[key,record]);await page.reload();
  await page.getByLabel('Import AZ-400 progress JSON').setInputFiles({name:'invalid.json',mimeType:'application/json',buffer:Buffer.from('{"tenantId":"should-not-import"}')});
  await expect(page.getByRole('status')).toContainText('Import rejected');
  expect(await page.evaluate(k=>JSON.parse(localStorage.getItem(k)).labs['LAB-01'].assessmentScore,key)).toBe(75);
  const download=page.waitForEvent('download');await page.getByRole('button',{name:'Export JSON',exact:true}).click();
  expect((await download).suggestedFilename()).toBe('az400-progress.json');
});
test('missed practice is isolated and question revisions reset affected answers',async({page})=>{
  const bank=JSON.parse(fs.readFileSync(path.join(__dirname,'../../.site-docs/docs/site-assets/data/quiz-01.json'),'utf8'));
  await page.goto('./docs/practice/?lab=01');await page.getByLabel('Practice mode').selectOption('advanced');await page.getByRole('button',{name:'Start new attempt'}).click();
  const question=bank.questions.find(q=>q.difficulty==='advanced'),wrong=question.options.find(o=>!question.correctAnswers.includes(o.key)).key;
  await page.locator(`input[name="quiz-answer"][value="${wrong}"]`).check();await page.getByRole('button',{name:'Submit answer',exact:true}).click();
  await page.getByLabel('Practice mode').selectOption('missed');await page.getByRole('button',{name:'Start new attempt'}).click();
  await expect(page.getByRole('heading',{name:'Question 1 of 1',exact:true})).toBeVisible();
  await page.locator(`input[name="quiz-answer"][value="${question.correctAnswers[0]}"]`).check();await page.getByRole('button',{name:'Submit answer',exact:true}).click();await page.getByRole('button',{name:'Finish attempt',exact:true}).click();
  expect(await page.evaluate(k=>localStorage.getItem(k),key)).toBeNull();
  await page.evaluate(()=>{const k='az400QuizProgress.v1',v=JSON.parse(localStorage.getItem(k));v.labs['01'].revision='old';localStorage.setItem(k,JSON.stringify(v));});
  await page.reload();await expect(page.getByRole('status')).toContainText('Previous answers were reset');
  await expect(page.locator('.az400-quiz-explanation')).toHaveCount(0);
});
