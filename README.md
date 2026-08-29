# QMB 6315 — Interactive Statistics Widgets

Self-contained interactive pages for **QMB 6315, Business Analysis for Decision Making** (MSIS, Florida International University, Fall 2026). They replace recorded lecture video, particularly for the online cohort and for the two self-directed project weeks that have no live session.

Live at **https://andresarias.com/qmb6315/**

Because `andresarias.github.io` carries a custom domain, this project site is served from `andresarias.com`. The GitHub-hosted address **https://andresarias.github.io/qmb6315/** serves the identical content and is worth keeping in mind — if one domain is blocked by an institutional iframe policy, the other may not be.

| Week | Widget | Concept |
|---|---|---|
| 2 | `z-score-explorer.html` | Normal distribution, z-scores, and when the normal model fails |
| 3 | `clt-sandbox.html` | Sampling distribution of the mean, central limit theorem |
| 4 | `ci-simulator.html` | Confidence intervals, and what "95% confident" does not mean |

Each file is standalone HTML with inline CSS, SVG, and JavaScript — no build step, no dependencies, no network calls. Open one in a browser and it works.

Notation follows OpenStax *Introductory Statistics 2e*, the course's free textbook.

## Editing

The source of truth is the LionMind vault, not this repo:

```
01 Teaching/_QMB 6315/Widgets/
```

Edit there, then run `./publish.sh "what changed"` to copy the files here and push. Design notes, verification data, and Canvas embedding instructions live in that folder's `_Widgets.md`.

## Embedding in Canvas

Canvas strips `<script>` from the Rich Content Editor, so these cannot be pasted in as markup. Use the HTML editor (`</>`) and an iframe:

```html
<p><a href="https://andresarias.com/qmb6315/z-score-explorer.html" target="_blank">Open this in its own tab</a></p>
<iframe src="https://andresarias.com/qmb6315/z-score-explorer.html"
        width="100%" height="2400" style="border:0;"
        title="Z-score explorer"></iframe>
```

Heights: z-score explorer **2400**, CLT sandbox **1500**, CI simulator **2950**. Keep the "open in its own tab" link — on a phone the pages run considerably taller than any fixed iframe height.
