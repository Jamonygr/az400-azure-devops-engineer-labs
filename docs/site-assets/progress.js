(() => {
  "use strict";
  const storageKey = "az400LearnerProgress.v2", legacyKey = "az400LearnerProgress.v1", schemaVersion = "2.0.0", maximumImportBytes = 256 * 1024;
  const labIds = Array.from({ length: 28 }, (_, n) => `LAB-${String(n).padStart(2, "0")}`);
  const legacyKeys = ["status", "validationPassed", "cleanupPassed", "assessmentScore", "updatedAt"];
  const entryKeys = [...legacyKeys, "breakFixPassed", "assessmentRevision", "legacyCompletion", "evidenceSource"];
  const timestamp = () => new Date().toISOString();
  const isoDate = v => typeof v === "string" && /^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}(?:\.\d+)?(?:Z|[+-]\d{2}:\d{2})$/i.test(v) && Number.isFinite(Date.parse(v));
  const exactKeys = (o, keys) => o !== null && typeof o === "object" && !Array.isArray(o) && Object.keys(o).length === keys.length && keys.every(k => Object.hasOwn(o, k));
  const emptyEntry = () => ({ status: "not-started", validationPassed: false, cleanupPassed: false, breakFixPassed: false, assessmentScore: null, assessmentRevision: null, updatedAt: timestamp(), legacyCompletion: false, evidenceSource: "self-reported" });
  const emptyRecord = () => ({ schemaVersion, exportedAt: timestamp(), labs: Object.fromEntries(labIds.map(id => [id, emptyEntry()])) });
  function validateRecord(record) {
    if (!exactKeys(record, ["schemaVersion", "exportedAt", "labs"]) || !isoDate(record.exportedAt)) throw new Error("Invalid progress fields or export timestamp.");
    const legacy = record.schemaVersion === "1.0.0";
    if (!legacy && record.schemaVersion !== schemaVersion) throw new Error("Unsupported progress schema.");
    if (!exactKeys(record.labs, labIds)) throw new Error("Progress must contain LAB-00 through LAB-27.");
    for (const [id, e] of Object.entries(record.labs)) {
      if (!exactKeys(e, legacy ? legacyKeys : entryKeys)) throw new Error(`${id} has missing or unexpected fields; identities and credentials are not allowed.`);
      if (!(legacy ? ["not-started", "in-progress", "complete"] : ["not-started", "in-progress", "complete", "needs-review"]).includes(e.status)) throw new Error(`${id} has an invalid status.`);
      if (!isoDate(e.updatedAt) || typeof e.validationPassed !== "boolean" || typeof e.cleanupPassed !== "boolean") throw new Error(`${id} has invalid evidence or timestamp.`);
      if (e.assessmentScore !== null && (!Number.isInteger(e.assessmentScore) || e.assessmentScore < 0 || e.assessmentScore > 100)) throw new Error(`${id} has an invalid assessmentScore.`);
      if (["LAB-00", "LAB-26", "LAB-27"].includes(id) && e.assessmentScore !== null) throw new Error(`${id} is hands-on only and cannot contain an assessmentScore.`);
      if (!legacy && (typeof e.breakFixPassed !== "boolean" || typeof e.legacyCompletion !== "boolean" || !["self-reported", "local-results", "legacy"].includes(e.evidenceSource) || !(e.assessmentRevision === null || (typeof e.assessmentRevision === "string" && /^[a-zA-Z0-9.-]{1,80}$/.test(e.assessmentRevision))))) throw new Error(`${id} has invalid v2 evidence.`);
      if (e.status === "complete" && (!e.validationPassed || !e.cleanupPassed || (!legacy && !e.breakFixPassed))) throw new Error(`${id} requires validation and cleanup plus break/fix before completion.`);
    }
    if (!legacy) return structuredClone(record);
    const migrated = emptyRecord(); migrated.exportedAt = record.exportedAt;
    for (const id of labIds) migrated.labs[id] = { ...emptyEntry(), ...record.labs[id], status: record.labs[id].status === "complete" ? "needs-review" : record.labs[id].status, legacyCompletion: record.labs[id].status === "complete", evidenceSource: "legacy", assessmentRevision: record.labs[id].assessmentScore === null ? null : "legacy" };
    return migrated;
  }
  const meaningful = e => e.status !== "not-started" || e.assessmentScore !== null || e.validationPassed || e.cleanupPassed || e.breakFixPassed || e.legacyCompletion;
  function mergeRecords(current, imported) {
    const result = validateRecord(current), incoming = validateRecord(imported);
    for (const id of labIds) if (meaningful(incoming.labs[id]) && (!meaningful(result.labs[id]) || Date.parse(incoming.labs[id].updatedAt) > Date.parse(result.labs[id].updatedAt))) result.labs[id] = incoming.labs[id];
    result.exportedAt = timestamp(); return validateRecord(result);
  }
  function scoreValue(value) {
    if (String(value).trim() === "") return null;
    const n = Number(value); if (!Number.isInteger(n) || n < 0 || n > 100) throw new Error("Enter a whole-number score from 0 through 100, or leave it blank."); return n;
  }
  function read(storage, strict = false) {
    try { const raw = storage.getItem(storageKey) || storage.getItem(legacyKey); return { record: raw ? validateRecord(JSON.parse(raw)) : emptyRecord(), warning: "" }; }
    catch (error) { if (strict) throw new Error(`Stored progress is unavailable or invalid: ${error.message}`); return { record: emptyRecord(), warning: "Stored progress is unavailable or invalid. Import a valid backup or clear local progress." }; }
  }
  function updateLab(storage, id, patch) {
    if (!labIds.includes(id)) throw new Error("Unknown lab.");
    const record = read(storage, true).record, entry = { ...record.labs[id], ...patch, updatedAt: timestamp() };
    if (entry.validationPassed && entry.cleanupPassed && entry.breakFixPassed) entry.status = "complete";
    else if (entry.legacyCompletion) entry.status = "needs-review";
    else if (meaningful(entry)) entry.status = "in-progress";
    record.labs[id] = entry; record.exportedAt = timestamp(); storage.setItem(storageKey, JSON.stringify(validateRecord(record))); return record;
  }
  const masteryText = e => e.assessmentScore === null ? "Assessment not recorded" : e.assessmentRevision === "legacy" ? `Previous bank: ${e.assessmentScore}% — retake revised questions` : e.assessmentScore >= 85 ? `${e.assessmentScore}% — move forward after practice` : e.assessmentScore >= 70 ? `${e.assessmentScore}% — targeted review` : `${e.assessmentScore}% — repeat mapped tasks`;
  const api = { storageKey, legacyKey, schemaVersion, maximumImportBytes, labIds, emptyRecord, validateRecord, mergeRecords, scoreValue, read, updateLab, masteryText };
  if (typeof module !== "undefined" && module.exports) { module.exports = api; return; }
  window.Az400Progress = api;
  const el = (tag, text, cls) => { const n = document.createElement(tag); if (text) n.textContent = text; if (cls) n.className = cls; return n; };
  const button = (text, action) => { const n = el("button", text); n.type = "button"; n.addEventListener("click", action); return n; };
  function safeRead() { try { return read(window.localStorage); } catch { return { record: emptyRecord(), warning: "Browser storage is unavailable. Progress cannot be saved." }; } }
  function statusNode() { const p = el("p", "", "az400-progress-message"); p.setAttribute("role", "status"); p.setAttribute("aria-live", "polite"); return p; }
  function download(record, name) {
    const a = el("a"), url = URL.createObjectURL(new Blob([JSON.stringify(record, null, 2)], { type: "application/json" })); a.href = url; a.download = name; document.body.append(a); a.click(); a.remove(); setTimeout(() => URL.revokeObjectURL(url), 1000);
  }
  function renderLab(main, id) {
    if (main.querySelector("[data-az400-lab-progress]")) return;
    const card = el("section", "", "az400-progress-card"); card.dataset.az400LabProgress = id;
    const title = el("h2", "Your practice record"); title.id = "az400-progress-title"; card.setAttribute("aria-labelledby", title.id);
    const message = statusNode(), actions = el("div", "", "az400-progress-actions");
    const refresh = () => { const s = safeRead(), e = s.record.labs[id]; message.textContent = s.warning || `${e.status}; ${masteryText(e)}. Evidence: ${e.evidenceSource}.`; };
    const change = patch => { try { updateLab(window.localStorage, id, patch); refresh(); window.dispatchEvent(new Event("az400progress")); } catch (error) { message.textContent = `Progress could not be saved: ${error.message}`; } };
    for (const [label, patch] of [["Mark in progress", { status: "in-progress" }], ["Record validation pass", { validationPassed: true }], ["Record break/fix pass", { breakFixPassed: true }], ["Record cleanup pass", { cleanupPassed: true }]]) actions.append(button(label, () => change({ ...patch, evidenceSource: "self-reported" })));
    if (!["LAB-00", "LAB-26", "LAB-27"].includes(id)) {
      const label = el("label", "Assessment score (optional): "); label.htmlFor = "az400-assessment-score";
      const input = el("input"); input.id = label.htmlFor; input.type = "number"; input.min = "0"; input.max = "100"; input.step = "1"; input.value = safeRead().record.labs[id].assessmentScore ?? ""; label.append(input); actions.append(label);
      actions.append(button("Save score", () => { try { const score = scoreValue(input.value); change({ assessmentScore: score, assessmentRevision: score === null ? null : "self-reported-v2" }); } catch (error) { message.textContent = error.message; input.focus(); } }));
    }
    card.append(title, el("p", "These buttons record your own observations. Import CLI results for evidence from scripts. A quiz score never completes a practical lab."), message, actions); main.append(card); refresh(); window.addEventListener("storage", refresh); window.addEventListener("az400progress", refresh);
  }
  function renderDashboard(main) {
    if (main.querySelector("[data-az400-progress-dashboard]")) return;
    const card = el("section", "", "az400-progress-card"); card.dataset.az400ProgressDashboard = "true";
    const summary = el("p"), meter = el("progress", "", "az400-progress-meter"); meter.max = 28;
    const message = statusNode(), grid = el("div", "", "az400-progress-grid"), actions = el("div", "", "az400-progress-actions"), preview = el("div", "", "az400-import-preview");
    const refresh = () => {
      const s = safeRead(), count = Object.values(s.record.labs).filter(e => e.status === "complete").length;
      summary.textContent = `${count} of 28 labs complete`; meter.value = count; meter.setAttribute("aria-label", summary.textContent); grid.replaceChildren();
      for (const id of labIds) { const e = s.record.labs[id], item = el("article", "", "az400-progress-item"); item.dataset.status = e.status; item.append(el("strong", id), el("p", e.status), el("p", masteryText(e))); if (e.legacyCompletion) item.append(el("small", "Previous completion retained; verify the revised course.")); grid.append(item); }
      if (s.warning) message.textContent = s.warning;
    };
    actions.append(button("Export JSON", () => { try { download(read(window.localStorage, true).record, "az400-progress.json"); message.textContent = "Progress exported without account or resource identifiers."; } catch (error) { message.textContent = error.message; } }));
    const label = el("label", "Preview an import ", "az400-file-button"), file = el("input"); file.type = "file"; file.accept = ".json,application/json"; file.setAttribute("aria-label", "Import AZ-400 progress JSON"); label.append(file); actions.append(label);
    file.addEventListener("change", async () => {
      preview.replaceChildren();
      try {
        const selected = file.files[0]; if (!selected) return; if (selected.size > maximumImportBytes) throw new Error("Progress imports must be 256 KiB or smaller.");
        const imported = validateRecord(JSON.parse(await selected.text())); preview.replaceChildren();
        const modeLabel = el("label", "Import behavior "), mode = el("select"); mode.setAttribute("aria-label", "Import behavior");
        for (const [value, text] of [["merge", "Merge — preserve untouched labs"], ["replace", "Replace — back up current progress first"]]) { const option = el("option", text); option.value = value; mode.append(option); }
        modeLabel.append(mode); const changes = el("ul");
        const show = () => { const current = read(window.localStorage, true).record, next = mode.value === "replace" ? imported : mergeRecords(current, imported); changes.replaceChildren(); for (const id of labIds) if (JSON.stringify(current.labs[id]) !== JSON.stringify(next.labs[id])) changes.append(el("li", `${id}: ${current.labs[id].status} → ${next.labs[id].status}; score ${current.labs[id].assessmentScore ?? "unrecorded"} → ${next.labs[id].assessmentScore ?? "unrecorded"}`)); if (!changes.children.length) changes.append(el("li", "No lab changes.")); };
        mode.addEventListener("change", show);
        preview.append(el("h3", "Review before importing"), modeLabel, changes, button("Apply import", () => {
          try { const current = read(window.localStorage, true).record, next = mode.value === "replace" ? imported : mergeRecords(current, imported); if (mode.value === "replace") download(current, "az400-progress-before-replacement.json"); window.localStorage.setItem(storageKey, JSON.stringify(next)); preview.replaceChildren(); refresh(); message.textContent = "Progress imported using your selected mode."; window.dispatchEvent(new Event("az400progress")); }
          catch (error) { message.textContent = `Import rejected: ${error.message}`; }
        }), button("Cancel import", () => preview.replaceChildren())); show();
      } catch (error) { message.textContent = `Import rejected: ${error.message}`; } finally { file.value = ""; }
    });
    actions.append(button("Clear local progress", () => { if (window.confirm("Clear practical progress in this browser? Export a backup first. Quiz attempts are stored separately.")) { try { window.localStorage.removeItem(storageKey); window.localStorage.removeItem(legacyKey); refresh(); message.textContent = "Practical progress cleared."; } catch (error) { message.textContent = error.message; } } }));
    card.append(el("h2", "Your learning progress"), summary, meter, message, actions, preview, grid); main.append(card); refresh(); window.addEventListener("storage", refresh); window.addEventListener("az400progress", refresh);
  }
  function render() {
    const main = document.querySelector("main .md-content__inner") || document.querySelector("main"); if (!main) return;
    const match = location.pathname.match(/\/labs\/((?:0[0-9]|1[0-9]|2[0-7]))-[^/]+\/?(?:index\.html)?$/); if (match) renderLab(main, `LAB-${match[1]}`);
    if (/\/learner-progress\/?(?:index\.html)?$/.test(location.pathname)) renderDashboard(main);
    main.querySelectorAll("[data-az400-domain-labs]").forEach(c => { const ids = c.dataset.az400DomainLabs.split(","), s = safeRead(), count = ids.filter(id => s.record.labs[id]?.status === "complete").length; c.textContent = `${count} of ${ids.length} labs complete in this domain.`; });
  }
  if (typeof document$ !== "undefined") document$.subscribe(render); else if (document.readyState === "loading") document.addEventListener("DOMContentLoaded", render); else render();
})();
