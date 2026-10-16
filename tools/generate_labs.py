#!/usr/bin/env python3
"""Render lab instructions, solutions, diagrams, and objective indexes from YAML.

The authoritative files intentionally use the JSON subset of YAML so authoring
and drift checks need only the Python standard library. This program never
executes a learner command or changes cloud resources.
"""
from __future__ import annotations

import argparse
import hashlib
import html
import json
import textwrap
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]


def block(value: str) -> str:
    return f"```powershell\n{value.strip()}\n```"


def readme(lab: dict, labs: list[dict]) -> str:
    number = int(lab["id"])
    paid_note = (
        "This lab includes repository protection features that can require a paid "
        "GitHub entitlement, especially for private repositories. Without an "
        "authorized `-AllowPaidFeatures` opt-in, the gated checkpoints remain "
        "partial. Review the current account entitlement and billing owner "
        "approval before adding that switch to setup.\n\n"
        if lab.get("requiresPaidFeatures") else ""
    )
    nav = ["[Catalog](../../docs/lab-catalog.md)"]
    if number:
        nav.insert(0, f"[Previous: Lab {number-1:02d}](../{labs[number-1]['slug']}/README.md)")
    if number < len(labs)-1:
        nav.append(f"[Next: Lab {number+1:02d}](../{labs[number+1]['slug']}/README.md)")
    intro = f"""# Lab {lab['id']}: {lab['title']}

{' · '.join(nav)}

## Scenario, role, and outcome

{lab['scenario']}

Learner role: **{lab['role']}**. Outcome: {lab['outcome']}

| Item | Value |
|---|---|
| Time | {lab['minutes']} minutes |
| Domain | {lab['domain']} |
| Platforms | {', '.join(lab['platforms'])} |
| Cost | {lab['cost']} — review [current pricing and cleanup](../../docs/cost-and-cleanup.md) before cloud execution |
| Exam blueprint | July 27, 2026; sources reviewed October 16, 2026 |
| Verification | Authored and checked offline; no live Azure deployment is claimed |

Completion requires all five checkpoints, the break/fix repair, successful
independent validation, and a passing residual-resource audit. An unavailable
external prerequisite is a visible gate; it does not become a passing result.

## Architecture and service topology

![Lab {lab['id']} service architecture: {lab['architecture']['title']}](diagrams/architecture.svg)

{lab['architecture']['topology']}

The editable [Mermaid source](diagrams/architecture.mmd) and accessible SVG
render the same authored components and relationships. Dashed connections show
separately gated integrations. Read every boundary before executing commands. Cloud changes
stay inside the exact disposable GitHub repository, Azure DevOps project, and
Azure resource group recorded for this run. Child objects inherit that cleanup
boundary. Account creation, external integrations, and privileged organization
settings belong to [one-time bootstrap](../../docs/account-bootstrap.md).

## Objectives and checkpoints

Official objective topic IDs: {', '.join('`'+x+'`' for x in lab['objectives']) or 'Foundation or cross-domain capstone; see the objective map.'}

| Checkpoint | Measurable behavior |
|---|---|
"""
    intro += "\n".join(f"| [{c['id']}](#task-{n}) | {c['title']} |" for n,c in enumerate(lab['checkpoints'],1))
    intro += f"""

The [objective map](../../docs/objective-map.md) traces every official topic to
labs. The [Microsoft study guide](https://learn.microsoft.com/en-us/credentials/certifications/resources/study-guides/az-400)
controls authoritative objective wording and domain weighting.

## Inputs, permissions, and read-only preflight

{paid_note}\
Use PowerShell 7.4+, .NET 10, Git, GitHub CLI, Azure CLI with the Azure DevOps
extension, and the pinned repository validation dependencies. Read the
[permissions matrix](../../docs/permissions-matrix.md) and [evidence policy](../../docs/evidence-handling.md).
Supply only the accounts needed by this lab. Never put a token, connection
string, or private key into a command log, committed YAML, or progress export.

The examples run from the repository root. Choose a fresh lowercase run ID;
`demo01` is an example, not a reusable shared sandbox. Set bootstrap environment
variables for the approved GitHub owner, DevOps organization, subscription, and
region. Do not run both guided and automated lanes with the same run ID.

```powershell
$lab = './labs/{lab['slug']}/scripts/cli'
& "$lab/Preflight.ps1" -RunId 'demo01'
& "$lab/Setup.ps1" -RunId 'demo01' -ProvisionOnly
# After reviewing context, permissions, cost, and cleanup:
& "$lab/Setup.ps1" -RunId 'demo01' -ProvisionOnly -Execute -AcknowledgeCost -AcknowledgeTenantChange
. "$lab/Context.ps1" -RunId 'demo01'
```

Preflight performs reads only. Provisioning creates fresh run-owned top-level
sandboxes and records their exact IDs. Context establishes `$RepoRoot`,
`$LabRoot`, `$WorkRoot`, `$RunId`, `$GhRepo`, `$AdoOrganization`, `$AdoProject`,
`$SubscriptionId`, `$Location`, and `$ResourceGroup`. A missing prerequisite or
ownership mismatch must stop execution. Local build commands may restore
packages and write ignored build output.

## Concept primer and design decisions

{lab.get('primer', 'Trace the requested behavior to an observable result. Separate source intent, execution identity, resource ownership, and evidence: a valid local contract does not prove a live external integration. Preserve immutable artifact identities and treat denied paths as part of the design.')}

"""
    sections = [intro]
    for n,c in enumerate(lab["checkpoints"],1):
        sections += [f"## Task {n} — {c['title']}\n\n<a id=\"task-{n}\"></a>\n\nCheckpoint: `{c['id']}`\n\n" + block(c['commands']),
                     f"Expected state: {c['expected']}\n\nPositive validation:\n\n"+block(c['positive']),
                     "Negative validation:\n\n"+block(c['negative']),
                     f"Evidence to retain: {c['evidence']}\n\nCommon failure and safe retry: {c['fix']}\n\nCleanup dependency: retain this checkpoint's evidence until final validation; remove run-owned children before their recorded parent boundary."]
    bf=lab['breakFix']
    sections += ["## Deterministic break/fix\n\nInject this fault only in the recorded sandbox or local run directory.\n\n"+block(bf['trigger']),
                 "Diagnose the precise difference:\n\n"+block(bf['diagnose']),
                 "Repair, then repeat the affected checkpoint validation:\n\n"+block(bf['repair']),
                 "## Optional job-style challenge\n\n"+lab['challenge'],
                 "## Final validation and result interpretation\n\n"+block(f"& './labs/{lab['slug']}/scripts/cli/Validate.ps1' -RunId 'demo01'"),
                 "A complete result requires five passing read-only assertions. Pending hosted runs, missing licensed features, and unexecuted integration challenges remain visible. Review `validation.json`; a command exiting successfully is not enough if the asserted behavior is absent.",
                 "## Troubleshooting\n\n- **401/403:** inspect the explicit account/project/repository scope and required role; do not broaden a token reflexively.\n- **Resource or artifact missing:** confirm the exact run ID and prerequisite checkpoint; retry reads after eventual consistency.\n- **Unsupported SKU/runtime/tool:** consult the specific current source, record the gate, and obtain approval before changing cost or architecture.\n- **Validation mismatch:** inspect the positive and negative assertions separately, repair the named fault, and rerun validation.\n- **Ownership refusal:** stop; never edit a manifest to claim an unrelated resource.",
                 f"## Cleanup and residual checks\n\n"+block(f"& './labs/{lab['slug']}/scripts/cli/Cleanup.ps1' -RunId 'demo01'\n# Review the exact owned-object deletion plan first.\n& './labs/{lab['slug']}/scripts/cli/Cleanup.ps1' -RunId 'demo01' -Execute"),
                 "Cleanup must verify ownership, delete only recorded sandbox objects in dependency order, and prove parent/child absence. Retain `run.json`, `validation.json`, and `cleanup.json` locally until the audit passes. Soft-deleted or deliberately retained items must remain reported. Never purge a shared vault or delete an account, organization, or pre-existing service connection to finish a lab.",
                 "## Exam debrief and assessment\n\nExplain why each checkpoint's denied path matters, which scope authorizes it, what evidence proves it, and how it is reversed. "+("Complete the [50-question assessment](QUESTIONS.md), then review [rationales](ANSWERS.md) and repeat weak checkpoints." if 1 <= number <=25 else "This foundation/capstone is hands-on only; use its validation and recovery evidence for assessment."),
                 "## Microsoft and platform sources\n\n"+"\n".join(f"- [Primary source {i}]({url}) — reviewed 2026-10-16." for i,url in enumerate(lab['sources'],1)),
                 "## Lifecycle scripts and worked solution\n\nUse `scripts/cli/Preflight.ps1`, `Setup.ps1`, `Validate.ps1`, `Cleanup.ps1`, and `Context.ps1` from this lab folder. Setup and cleanup preview until `-Execute`; `-ProvisionOnly` creates only fresh ownership-tracked containers. The [worked solution](solution/README.md) lists expected results and repair reasoning."]
    return "\n\n".join(section.strip() for section in sections).rstrip()+"\n"


def diagram(lab: dict) -> tuple[str,str]:
    graph=lab['architecture'];nodes=graph['nodes'];edges=graph['edges']
    by_id={node['id']:node for node in nodes}
    if len(by_id)!=len(nodes) or not 5<=len(nodes)<=7:
        raise ValueError(f"Lab {lab['id']} requires five to seven unique architecture components")
    mmd=['flowchart LR']
    for node in nodes:
        label=node['label'].replace('"', "'")
        mmd.append(f"  {node['id']}[\"{label}\"]")
    for edge in edges:
        if edge['from'] not in by_id or edge['to'] not in by_id:raise ValueError('Unknown architecture endpoint')
        arrow='<-->' if edge.get('style')=='bidirectional' else '-.->' if edge.get('style')=='dashed' else '-->'
        label=edge['label'].replace('|','/').replace('"', "'")
        mmd.append(f"  {edge['from']} {arrow}|{label}| {edge['to']}")
    title=f"Lab {lab['id']}: {graph['title']}"
    desc=graph['topology']+' Relationships: '+'; '.join(f"{by_id[e['from']]['label']} to {by_id[e['to']]['label']}: {e['label']}" for e in edges)
    legend_rows=(len(edges)+1)//2
    canvas_height=max(650,530+legend_rows*38)
    out=[f'<svg xmlns="http://www.w3.org/2000/svg" width="760" height="{canvas_height}" viewBox="0 0 760 {canvas_height}" role="img" aria-labelledby="title desc"><title id="title">{html.escape(title)}</title><desc id="desc">{html.escape(desc)}</desc>',
         '<defs><marker id="arrow" markerWidth="9" markerHeight="9" refX="8" refY="4" orient="auto-start-reverse"><path d="M0,0 L0,8 L8,4 z" fill="#0369a1"/></marker></defs>',
         f'<rect width="760" height="{canvas_height}" rx="16" fill="#f0f9ff"/>']
    for i,line in enumerate(textwrap.wrap(title,68)):
        out.append(f'<text x="22" y="{30+i*23}" fill="#0c4a6e" font-size="19" font-weight="bold" font-family="sans-serif">{html.escape(line)}</text>')
    def bounds(node):return (20+int(node['column'])*265,100+int(node['row'])*230,190,120)
    # Draw connectors before cards so paths remain behind the service boundaries.
    for i,edge in enumerate(edges):
        a=by_id[edge['from']];b=by_id[edge['to']]
        ax,ay,aw,ah=bounds(a);bx,by,bw,bh=bounds(b)
        acx,acy=ax+aw/2,ay+ah/2;bcx,bcy=bx+bw/2,by+bh/2
        if ay==by:
            sx=ax+aw if bx>ax else ax;tx=bx if bx>ax else bx+bw
            path=f'M{sx},{acy} H{tx}';lx=(sx+tx)/2;ly=acy-12;wrap=10;anchor='middle'
        elif ax==bx:
            sy=ay+ah if by>ay else ay;ty=by if by>ay else by+bh
            path=f'M{acx},{sy} V{ty}';lx=acx-12 if ax>500 else acx+12;ly=(sy+ty)/2-10;wrap=18;anchor='end' if ax>500 else 'start'
        else:
            sy=ay+ah if by>ay else ay;ty=by if by>ay else by+bh
            middle=(sy+ty)/2+((i%3)-1)*14
            path=f'M{acx},{sy} V{middle} H{bcx} V{ty}';lx=(acx+bcx)/2;ly=middle-9;wrap=24;anchor='middle'
        dashed=' stroke-dasharray="6 5"' if edge.get('style')=='dashed' else ''
        start=' marker-start="url(#arrow)"' if edge.get('style')=='bidirectional' else ''
        out.append(f'<path d="{path}" fill="none" stroke="#0369a1" stroke-width="2"{dashed}{start} marker-end="url(#arrow)" data-from="{html.escape(edge["from"])}" data-to="{html.escape(edge["to"])}"><title>{html.escape(edge["label"])}</title></path>')
        # Numbered markers keep service connectors legible at documentation width.
        # Full relationship text is retained in path titles, desc, and the legend.
        if ay==by:
            marker_x,marker_y=(sx+tx)/2,acy
        elif ax==bx:
            marker_x,marker_y=acx,(sy+ty)/2
        else:
            marker_x,marker_y=(acx+bcx)/2,middle
        out.append(f'<circle cx="{marker_x}" cy="{marker_y}" r="11" fill="#ffffff" stroke="#0369a1" stroke-width="1.5"/><text x="{marker_x}" y="{marker_y+4.5}" text-anchor="middle" fill="#075985" font-size="13" font-weight="bold" font-family="sans-serif">{i+1}</text>')
    palette={'identity':('#f5f3ff','#7c3aed'),'data':('#ecfdf5','#059669'),'code':('#ffffff','#0284c7'),'platform':('#e0f2fe','#0284c7'),'evidence':('#fff7ed','#ea580c')}
    for node in nodes:
        x,y,w,h=bounds(node);fill,stroke=palette.get(node['kind'],('#ffffff','#0284c7'))
        out.append(f'<g data-node="{html.escape(node["id"])}"><rect x="{x}" y="{y}" width="{w}" height="{h}" rx="11" fill="{fill}" stroke="{stroke}" stroke-width="2"/><text x="{x+13}" y="{y+23}" fill="{stroke}" font-family="sans-serif" font-size="12" font-weight="bold">{html.escape(node["kind"].upper())}</text>')
        lines=textwrap.wrap(node['label'],19)
        for n,line in enumerate(lines):
            out.append(f'<text x="{x+13}" y="{y+48+n*22}" fill="#0f172a" font-family="sans-serif" font-size="18">{html.escape(line)}</text>')
        out.append('</g>')
    out += ['<text x="22" y="480" fill="#0c4a6e" font-family="sans-serif" font-weight="bold" font-size="16">Relationships</text>']
    for i,edge in enumerate(edges):
        legend_x=22+(i%2)*370;legend_y=507+(i//2)*38
        lines=textwrap.wrap(f"{i+1}. {edge['label']}",38,break_long_words=False,break_on_hyphens=False)
        for n,line in enumerate(lines):
            out.append(f'<text x="{legend_x}" y="{legend_y+n*17}" fill="#0f172a" font-family="sans-serif" font-size="14.5">{html.escape(line)}</text>')
    out += [f'<text x="22" y="{canvas_height-14}" fill="#334155" font-family="sans-serif" font-size="12">Solid: core relationship · Dashed: separately gated integration · See walkthrough for verification limits.</text>','</svg>']
    return '\n'.join(mmd)+'\n',"\n".join(out)+"\n"


def render() -> dict[Path,str]:
    data=json.loads((ROOT/'curriculum/lab-content.yml').read_text(encoding='utf-8'))
    blueprint=json.loads((ROOT/'curriculum/blueprint.yml').read_text(encoding='utf-8'))
    labs=data['labs']; outputs={}
    if len(labs)!=28:raise ValueError('Expected 28 labs')
    for lab in labs:
        if len(lab['checkpoints'])!=5:raise ValueError(f"{lab['id']} requires five authored checkpoints")
        base=ROOT/'labs'/lab['slug']; outputs[base/'README.md']=readme(lab,labs)
        mmd,svg=diagram(lab);outputs[base/'diagrams/architecture.mmd']=mmd;outputs[base/'diagrams/architecture.svg']=svg
        solution=[f"# Lab {lab['id']} worked solution",'Use this after attempting the guided tasks. Expected results describe authored behavior; no live execution is claimed.']
        for c in lab['checkpoints']:solution.append(f"## {c['id']} — {c['title']}\n\n{c['expected']}\n\nVerify both the positive and negative probes in the lab README. {c['fix']}")
        solution.append('## Repair and recovery\n\n'+block(lab['breakFix']['repair'])+'\n\nRerun independent validation, then preview cleanup and inspect residual evidence. A skipped external gate is partial completion.')
        outputs[base/'solution/README.md']='\n\n'.join(solution)+'\n'
    catalog=['# AZ-400 lab catalog','28 command-first labs: foundation, 25 assessed topic labs, and two end-to-end capstones. Every topic lab has 50 original questions.','| Lab | Outcome | Domain | Time | Cost |','|---|---|---|---:|---|']
    catalog += [f"| [{l['id']}](../labs/{l['slug']}/README.md) | {l['title']} | {l['domain']} | {l['minutes']} min | {l['cost']} |" for l in labs]
    outputs[ROOT/'docs/lab-catalog.md']='\n\n'.join(catalog[:3])+'\n'+'\n'.join(catalog[3:])+'\n'
    mapping=['# AZ-400 objective map','Blueprint effective **2026-07-27**; reviewed **2026-10-16**. The 86 topic names below are concise paraphrases. Consult the [official study guide](https://learn.microsoft.com/en-us/credentials/certifications/resources/study-guides/az-400) for authoritative wording.']
    by_id={l['id']:l for l in labs}
    for domain in blueprint['domains']:
        mapping.append(f"## {domain['title']} ({domain['weight']})")
        mapping.append('| Topic ID | Topic | Labs |\n|---|---|---|')
        for group in domain['groups']:
            for obj in group['objectives']:
                links=', '.join(f"[{i}](../labs/{by_id[i]['slug']}/README.md)" for i in obj['labs'])
                mapping[-1]+=f"\n| `{obj['id']}` | {obj['title']} | {links} |"
    outputs[ROOT/'docs/objective-map.md']='\n\n'.join(mapping)+'\n'
    return outputs


def main() -> int:
    parser=argparse.ArgumentParser(description=__doc__);parser.add_argument('--check',action='store_true');args=parser.parse_args()
    outputs=render();drift=[]
    for path,content in outputs.items():
        if args.check:
            if not path.exists() or path.read_text(encoding='utf-8')!=content:drift.append(str(path.relative_to(ROOT)))
        else:
            path.parent.mkdir(parents=True,exist_ok=True)
            with path.open('w', encoding='utf-8', newline='\n') as handle:
                handle.write(content)
    if drift:
        print('Generated content differs: '+'; '.join(drift));return 1
    print(f"{'Checked' if args.check else 'Generated'} {len(outputs)} authored lab/diagram/index files; no learner commands executed.");return 0


if __name__=='__main__':raise SystemExit(main())
