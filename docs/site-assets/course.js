(() => {
  "use strict";
  const root = new URL("../../", document.querySelector('script[src*="site-assets/course.js"]').src);
  const el = (tag, text, cls) => { const n = document.createElement(tag); if (text) n.textContent = text; if (cls) n.className = cls; return n; };
  const href = path => new URL(path, root).href;
  async function boot() {
    let data;
    try { const response = await fetch(href("docs/site-assets/data/catalog.json")); if (!response.ok) throw new Error(); data = await response.json(); }
    catch { document.querySelectorAll("[data-az400-catalog]").forEach(n => { n.textContent = "The interactive catalog is unavailable. Use the plain catalog below."; }); return; }
    document.querySelectorAll("[data-az400-continue]").forEach(container => {
      let entries = [];
      try { entries = Object.entries(window.Az400Progress.read(localStorage).record.labs).filter(([, e]) => e.status !== "not-started").sort((a, b) => Date.parse(b[1].updatedAt) - Date.parse(a[1].updatedAt)); } catch { /* The start links remain available without storage. */ }
      const lab = data.find(l => `LAB-${l.id}` === entries[0]?.[0]) || data[0], link = el("a", entries.length ? `Continue studying: ${lab.id} · ${lab.title}` : "New here? Check your toolchain and accounts."); link.href = href(`labs/${lab.slug}/`); container.replaceChildren(link);
    });
    const match = location.pathname.match(/\/labs\/(\d\d)-[^/]+\/?(?:index\.html)?$/);
    if (match && Number(match[1]) > 0 && Number(match[1]) < 26) {
      const main = document.querySelector("main .md-content__inner"), links = el("p", "", "az400-study-links");
      const quiz = el("a", "Practise this lab"); quiz.href = href(`docs/practice/?lab=${match[1]}`); links.append(quiz, el("span", " · "));
      const questions = el("a", "Markdown questions"); questions.href = new URL("QUESTIONS/", location.href); links.append(questions); main?.querySelector("h1")?.after(links);
    }
    document.querySelectorAll("[data-az400-catalog]").forEach(container => {
      if (container.dataset.ready) return; container.dataset.ready = "true";
      const controls = el("div", "", "az400-catalog-controls"), result = el("p"), grid = el("div", "", "az400-lab-grid"); result.setAttribute("role", "status"); result.setAttribute("aria-live", "polite");
      const label = el("label", "Search labs "), search = el("input"); search.type = "search"; search.setAttribute("aria-label", "Search labs"); label.append(search); controls.append(label);
      const dropdown = (title, values) => { const label = el("label", title + " "), select = el("select"); select.setAttribute("aria-label", title); const all = el("option", "All"); all.value = ""; select.append(all); for (const value of values) { const option = el("option", value); option.value = value; select.append(option); } label.append(select); controls.append(label); return select; };
      const domain = dropdown("Domain", [...new Set(data.map(l => l.domain))]), platform = dropdown("Platform", ["local", "github", "azure-devops", "azure"]);
      const draw = () => {
        const query = search.value.trim().toLowerCase(), filtered = data.filter(l => (!domain.value || l.domain === domain.value) && (!platform.value || l.platforms.includes(platform.value)) && (!query || `${l.id} ${l.slug.replaceAll("-", " ")} ${l.title} ${l.scenario} ${l.prerequisites.join(" ")}`.toLowerCase().includes(query)));
        grid.replaceChildren(); result.textContent = `${filtered.length} of ${data.length} labs`;
        for (const lab of filtered) { const card = el("article", "", "az400-lab-card"), heading = el("h2"), link = el("a", `${lab.id} · ${lab.title}`); link.href = href(`labs/${lab.slug}/`); heading.append(link); card.append(el("p", `${lab.domain} · ${lab.minutes} min`, "az400-eyebrow"), heading, el("p", lab.scenario), el("p", `Platforms: ${lab.platforms.join(", ")}`), el("p", `Cost: ${lab.cost}`), el("p", `Prerequisites: ${lab.prerequisites.join("; ")}`), el("p", `Verification: ${lab.verification}`)); grid.append(card); }
      };
      for (const control of [search, domain, platform]) control.addEventListener("input", draw);
      container.append(controls, result, grid); draw();
    });
  }
  if (document.readyState === "loading") document.addEventListener("DOMContentLoaded", boot); else boot();
})();
