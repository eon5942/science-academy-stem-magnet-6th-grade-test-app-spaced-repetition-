# Science Academy STEM Magnet — 6th Grade Test App (Spaced Repetition)

A single-file, browser-based study app to prepare for the **Science-Specific Verification Eligibility Assessment (SVEA)** — the mandatory science exam required to enter the [Science Academy STEM Magnet](https://scienceacademy.lausd.org/) (Los Angeles Unified School District) before the magnet lottery.

## What it does

It's a **spaced repetition** study tool (Anki/SuperMemo-style) built on the school's official 6th-grade preparation topics. Each question is treated as a "card" with its own review schedule, so hard material comes back sooner and easy material gets pushed further out — fighting the "forgetting curve" to move facts into long-term memory.

- **80+ questions** covering the official topic list: Life Science, Chemistry, Physics, Earth & Space Science, Scientific Method, and Math
- **SM-2 scheduling** (the classic SuperMemo algorithm): rate each card **Again / Hard / Good / Easy** and the next review date is computed automatically
- **Progress persists** in your browser's `localStorage`, so it keeps working as a real multi-day routine
- **New cards** are introduced gradually (10 per day)
- **Setup dashboard** shows due / new / learned counts, plus an "upcoming reviews" breakdown after each session

## The test it prepares you for

| | |
|---|---|
| **Official name** | Science-Specific Verification Eligibility Assessment (SVEA) |
| **Format** | Multiple-choice science only (no essay) |
| **Subjects** | Life science, physical science, earth science |
| **Scoring** | Pass/fail |
| **Gifted ID required** | Yes (LAUSD GATE or Verification of Eligibility) |

Topics come from the school's published 6th-grade list: intro to biology/chemistry/astronomy/earth science, atomic structure, periodic table, scientific method, elements, planets, chemical reactions, matter, cells, heredity, acids/bases, metric system, the 11 biological systems, ecology, kinematics/forces, photosynthesis, plus elementary math (fractions, decimals, percents, expressions, area/volume, word problems, etc.).

## How to use

1. Open `index.html` in any browser (double-click it, or `xdg-open index.html`).
2. Pick the topics you want to study and click **Study Now**.
3. Answer each multiple-choice question, then rate how well you recalled it:
   - **Again** — come back in ~10 minutes
   - **Hard** — 1 day
   - **Good** / **Easy** — schedule scales outward (1 day → 6 days → …)
4. Come back daily. The app will show you exactly what's due.

No server, no install, no dependencies — just one HTML file. Progress is stored locally in your browser.

## Running on GitHub Pages

Enable Pages in the repo settings (**Settings → Pages → Deploy from `main` branch**), then open:

```
https://<username>.github.io/science-academy-stem-magnet-6th-grade-test-app-spaced-repetition-/
```

## Note

This is an unofficial study aid. Topics are based on the school's published list and may change from year to year — always confirm against the current list on the Science Academy's admissions page.
