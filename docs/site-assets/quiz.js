(() => {
  "use strict";
  const key = "az400QuizProgress.v1";
  const rootUrl = () => new URL("../../", document.querySelector('script[src*="site-assets/quiz.js"]').src);
  const el = (tag, text, cls) => { const n = document.createElement(tag); if (text) n.textContent = text; if (cls) n.className = cls; return n; };
  const button = (text, action) => { const n = el("button", text); n.type = "button"; n.addEventListener("click", action); return n; };
  const safeFetch = async url => { const response = await fetch(url); if (!response.ok) throw new Error("Practice data could not be loaded. Reload or use the Markdown questions."); return response.json(); };
  function validState(value, bank) {
    if (!value || value.revision !== bank.revision) return { revision: bank.revision, history: {}, session: null };
    const questions = new Map(bank.questions.map(q => [q.id, q]));
    const clean = { revision: bank.revision, history: {}, session: null };
    for (const [id, answer] of Object.entries(value.history || {})) if (questions.has(id) && answer && questions.get(id).options.some(o => o.key === answer.choice)) clean.history[id] = { choice: answer.choice, correct: questions.get(id).correctAnswers.includes(answer.choice) };
    const s = value.session;
    if (s && ["full", "foundational", "applied", "advanced", "missed"].includes(s.mode) && Array.isArray(s.ids) && s.ids.length > 0 && new Set(s.ids).size === s.ids.length && s.ids.every(id => questions.has(id)) && Number.isInteger(s.index) && s.index >= 0 && s.index <= s.ids.length) {
      const answers = {};
      for (const [id, choice] of Object.entries(s.answers || {})) if (s.ids.includes(id) && questions.get(id).options.some(o => o.key === choice)) answers[id] = choice;
      if (s.mode !== "full" || s.ids.length === bank.questions.length) clean.session = { mode: s.mode, ids: s.ids, index: Math.min(s.index, Object.keys(answers).length), answers };
    }
    return clean;
  }
  const score = (bank, session) => Math.round(100 * session.ids.filter(id => bank.questions.find(q => q.id === id).correctAnswers.includes(session.answers[id])).length / session.ids.length);
  if (typeof module !== "undefined" && module.exports) { module.exports = { validState, score }; return; }
  async function render(container) {
    if (container.dataset.ready) return; container.dataset.ready = "true";
    const status = el("p"); status.setAttribute("role", "status"); status.setAttribute("aria-live", "polite");
    const controls = el("div", "", "az400-quiz-controls"), body = el("section", "", "az400-quiz-card"); container.append(controls, status, body);
    try {
      const catalog = await safeFetch(new URL("docs/site-assets/data/catalog.json", rootUrl()));
      const labLabel = el("label", "Choose a lab "), select = el("select"); select.id = "quiz-lab"; labLabel.htmlFor = select.id;
      for (const lab of catalog.filter(l => Number(l.id) >= 1 && Number(l.id) <= 25)) { const option = el("option", `${lab.id} · ${lab.title}`); option.value = lab.id; select.append(option); } labLabel.append(select); controls.append(labLabel);
      const modeLabel = el("label", "Practice mode "), mode = el("select"); mode.id = "quiz-mode"; modeLabel.htmlFor = mode.id;
      for (const [value, title] of [["full", "Full lab — 50 questions"], ["foundational", "Foundational practice"], ["applied", "Applied practice"], ["advanced", "Advanced practice"], ["missed", "Review missed questions"]]) { const option = el("option", title); option.value = value; mode.append(option); } modeLabel.append(mode); controls.append(modeLabel);
      let bank, state, loadSequence = 0;
      const save = () => {
        try { let all; try { all = JSON.parse(localStorage.getItem(key) || '{}'); } catch { throw new Error("Stored quiz data is invalid. Clear quiz attempts before saving new attempts."); } if (!all || typeof all !== "object" || Array.isArray(all)) throw new Error("Stored quiz data is invalid."); const labs = all.schemaVersion === 1 && all.labs && typeof all.labs === "object" ? all.labs : {}; labs[bank.labId] = state; localStorage.setItem(key, JSON.stringify({ schemaVersion: 1, labs })); return true; }
        catch { status.textContent = "This attempt is available for this page only: browser storage is unavailable or invalid."; return false; }
      };
      const link = (text, path) => { const a = el("a", text); a.href = new URL(path, rootUrl()); return a; };
      function draw(focus = false) {
        body.replaceChildren();
        if (!state.session) { body.append(el("h2", bank.title), el("p", "Choose a mode and start. Answers appear after you submit each question. Full attempts update your assessment score; targeted practice does not."), link("Read the lab", `labs/${bank.slug}/`), el("span", " · "), link("Markdown questions", `labs/${bank.slug}/QUESTIONS/`)); return; }
        const s = state.session;
        if (s.index >= s.ids.length) {
          const result = score(bank, s), title = el("h2", `Attempt complete: ${result}%`); title.tabIndex = -1; body.append(title);
          body.append(el("p", `${Object.keys(s.answers).length} of ${s.ids.length} questions answered. ${s.mode === "full" ? "Full lab assessment" : "Targeted practice — your overall score is unchanged"}.`));
          const missed = s.ids.filter(id => !bank.questions.find(q => q.id === id).correctAnswers.includes(s.answers[id]));
          body.append(el("h3", missed.length ? "Review these checkpoints" : "Continue with practical validation"));
          const list = el("ul"); for (const id of missed) { const q = bank.questions.find(q => q.id === id), li = el("li"); li.append(link(`${id} — ${q.checkpointId} (${q.objectiveIds.join(", ")})`, `labs/${bank.slug}/#task-${q.checkpointId.slice(2)}`)); list.append(li); } body.append(list);
          body.append(button("Review missed questions", () => { mode.value = "missed"; start(); })); if (focus) title.focus(); return;
        }
        const q = bank.questions.find(item => item.id === s.ids[s.index]), chosen = s.answers[q.id];
        const title = el("h2", `Question ${s.index + 1} of ${s.ids.length}`); title.tabIndex = -1;
        body.append(title, el("p", `${q.id} · ${q.difficulty} · ${q.objectiveIds.join(", ")}`, "az400-eyebrow"));
        const fieldset = el("fieldset"), legend = el("legend", q.question); fieldset.append(legend);
        if (q.exhibit) { const pre = el("pre"), code = el("code", q.exhibit.code); code.className = `language-${q.exhibit.language}`; pre.append(code); fieldset.append(pre); }
        for (const option of q.options) { const label = el("label", "", "az400-quiz-option"), input = el("input"); input.type = "radio"; input.name = "quiz-answer"; input.value = option.key; input.checked = chosen === option.key; input.disabled = Boolean(chosen); label.append(input, el("span", `${option.key}. ${option.text}`)); fieldset.append(label); }
        body.append(fieldset);
        if (!chosen) body.append(button("Submit answer", () => {
          const selected = fieldset.querySelector('input:checked'); if (!selected) { status.textContent = "Choose an answer before submitting."; fieldset.querySelector('input').focus(); return; }
          s.answers[q.id] = selected.value; state.history[q.id] = { choice: selected.value, correct: q.correctAnswers.includes(selected.value) }; const saved = save(); if (saved) status.textContent = state.history[q.id].correct ? "Correct. Review the explanation." : "Not quite. Review why each choice succeeds or fails."; draw();
        }));
        else {
          const explanation = el("section", "", "az400-quiz-explanation"); explanation.append(el("h3", q.correctAnswers.includes(chosen) ? "Correct" : `Correct answer: ${q.correctAnswers[0]}`), el("p", q.explanation));
          const list = el("ul"); for (const option of q.options) list.append(el("li", `${option.key}: ${option.rationale}`)); explanation.append(list);
          explanation.append(link(`Practice ${q.checkpointId}`, `labs/${bank.slug}/#task-${q.checkpointId.slice(2)}`));
          for (const id of q.sourceIds) { const source = bank.sources.find(item => item.id === id); if (source) { explanation.append(el("span", " · ")); const a = el("a", `Source ${id}`); a.href = source.url; explanation.append(a); } }
          body.append(explanation, button(s.index + 1 === s.ids.length ? "Finish attempt" : "Next question", () => {
            s.index++; save();
            if (s.index === s.ids.length && s.mode === "full" && Object.keys(s.answers).length === bank.questions.length) {
              try { window.Az400Progress.updateLab(localStorage, `LAB-${bank.labId}`, { assessmentScore: score(bank, s), assessmentRevision: bank.revision }); status.textContent = "Full assessment score saved. Practical completion is unchanged."; window.dispatchEvent(new Event("az400progress")); }
              catch { status.textContent = "Attempt complete, but your assessment score could not be saved in browser storage."; }
            }
            draw(true);
          }));
        }
        if (focus) title.focus();
      }
      function start() {
        if (!bank) return;
        const ids = bank.questions.filter(q => mode.value === "full" || q.difficulty === mode.value || (mode.value === "missed" && state.history[q.id]?.correct === false)).map(q => q.id);
        if (!ids.length) { status.textContent = "No missed questions for this revision yet. Complete some practice first."; return; }
        state.session = { mode: mode.value, ids, index: 0, answers: {} }; if (save()) status.textContent = "Attempt started. Your submitted answers are saved locally."; draw(true);
      }
      controls.append(button("Start new attempt", start), button("Clear quiz attempts", () => { if (confirm("Clear this lab's quiz attempts? Your practical progress and recorded score remain unchanged.")) { state = validState(null, bank); save(); draw(); status.textContent = "Quiz attempts cleared for this lab."; } }));
      async function load() {
        const sequence = ++loadSequence; body.textContent = "Loading questions…";
        const loaded = await safeFetch(new URL(`docs/site-assets/data/quiz-${select.value}.json`, rootUrl())); if (sequence !== loadSequence) return; bank = loaded;
        let stored; try { stored = JSON.parse(localStorage.getItem(key) || '{}').labs?.[bank.labId]; status.textContent = stored && stored.revision !== bank.revision ? "The questions changed. Previous answers were reset for this lab; practical progress remains." : "Answers and progress stay in this browser."; } catch { status.textContent = "Browser storage is unavailable. You can still practise on this page."; }
        state = validState(stored, bank); mode.value = state.session?.mode || "full"; draw();
      }
      select.addEventListener("change", () => load().catch(error => { status.textContent = error.message; }));
      const requested = new URL(location.href).searchParams.get("lab"); if (Array.from(select.options).some(o => o.value === requested)) select.value = requested;
      await load();
    } catch (error) { status.textContent = error.message; }
  }
  function boot() { document.querySelectorAll("[data-az400-quiz]").forEach(render); }
  if (document.readyState === "loading") document.addEventListener("DOMContentLoaded", boot); else boot();
})();
