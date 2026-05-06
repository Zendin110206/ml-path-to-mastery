<div align="center">

# ML Path to Mastery

![Status](https://img.shields.io/badge/status-active-success)
![Focus](https://img.shields.io/badge/focus-math%20for%20ML-blue)
![Vault](https://img.shields.io/badge/format-Obsidian%20%2B%20GitHub-7C3AED)
![Language](https://img.shields.io/badge/notes-English%20%2B%20Indonesian-informational)

Structured learning vault for mathematics, machine learning foundations, teaching notes, and long-term research preparation.

</div>

---

## Overview

This repository documents my long-term path from Telecommunication Engineering toward **Applied Machine Learning and AI research**.

It is intentionally maintained as a hybrid project:

- an **Obsidian vault** for connected personal learning notes,
- a **GitHub portfolio repository** for public progress, structure, and accountability,
- a long-term archive for mathematical foundations, source-based notes, synthesis, and teaching material.

The content is built around first-principles understanding. Many notes preserve the original learning flow from courses, videos, and teaching preparation, so the repository values both professional organization and the personal reasoning process behind the notes.

---

## Learning Scope

### Mathematical Foundations

The strongest current focus is mathematics for machine learning:

- Linear algebra intuition and formal concepts
- Calculus and multivariate calculus
- Optimization, gradients, and backpropagation intuition
- Matrix transformations, basis changes, eigenvalues, and eigenvectors
- Taylor series, linearisation, and approximation

### Source-Based Learning Notes

The source notes preserve the learning sequence from:

- **3Blue1Brown**: Essence of Linear Algebra and Essence of Calculus
- **Imperial College London / Coursera**: Mathematics for Machine Learning
- Teaching assistant preparation for Calculus 2 topics

### Concept Navigation

The repository includes concept hub notes under `01_Mathematics/Concepts/` so common Obsidian links such as `[[Vector]]`, `[[Turunan]]`, `[[Dot Product]]`, and `[[Gradient Descent]]` resolve cleanly.

---

## Repository Structure

```text
.
├── 00_Resources/
│   ├── Markdown and Obsidian cheatsheets
│   └── reusable note template
├── 01_Mathematics/
│   ├── Concepts/
│   ├── Synthesis_and_Review/
│   ├── Teaching_Assistant/
│   └── _Sources/
├── 02_Machine_Learning/
├── 03_Projects/
├── 04_Journal/
├── assets/
│   └── images/
├── tools/
│   └── audit_vault_links.ps1
└── README.md
```

Private daily logs are intentionally excluded from version control through `.gitignore`.

---

## Current Coverage

### 3Blue1Brown Intuition Series

- [x] Essence of Linear Algebra
- [x] Essence of Calculus
- [x] Big-picture synthesis notes

### Coursera Mathematics for Machine Learning

- [x] Course 1: Linear Algebra modules and quizzes
- [x] Course 2: Multivariate Calculus modules
- [x] Notes on Jacobians, Hessians, chain rule, optimization, neural-network intuition, Taylor series, and linearisation

### Teaching Assistant Notes

- [x] Calculus 2: integration techniques
- [x] Calculus 2: sequences and series
- [x] Markdown and PDF versions for teaching/reference use

### Synthesis and Review

- [x] Mathematical foundations Q&A review
- [x] Concept hubs for common Obsidian links
- [ ] Future machine learning implementation notes
- [ ] Future applied project/research logs

---

## How to Navigate

For GitHub reading:

1. Start with [`01_Mathematics/README.md`](01_Mathematics/README.md).
2. Use [`01_Mathematics/_Sources/README.md`](01_Mathematics/_Sources/README.md) for source-based notes.
3. Use [`01_Mathematics/Concepts/README.md`](01_Mathematics/Concepts/README.md) when a concept link needs context.

For Obsidian:

1. Open the repository as a vault.
2. Use graph links between concept hubs and source notes.
3. Keep `assets/images/` as the attachment location for embedded images.

---

## Repository Conventions

- Markdown notes use a single `.md` extension.
- Exported/reference PDFs use a single `.pdf` extension.
- Image assets use stable names such as `pasted_YYYYMMDDHHMMSS.png`.
- Source notes preserve their original learning order and chapter titles.
- Concept hubs are navigation layers; they do not replace the original personal notes.
- README/index files are written for public GitHub readability.

---

## Link Integrity

This repository includes a lightweight audit script:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File tools/audit_vault_links.ps1
```

The script checks for:

- accidental `*.md.md` and `*.md.pdf` files,
- the old `M01_Intoduction` folder typo,
- broken non-placeholder wikilinks,
- broken non-placeholder image embeds,
- tracked private logs or local Obsidian workspace/plugin state.

---

## Notes on Content Preservation

The source notes are intentionally personal. They may include mixed English/Indonesian wording, intuition-first explanations, course-specific flow, and teaching-specific problem-solving structure.

Refactors in this repository should preserve that learning content. Cleanup should focus on naming, navigation, broken links, asset organization, and public documentation.

---

## Author

**Muhammad Zaenal Abidin Abdurrahman**<br>
Telecommunication Engineering Undergraduate - Telkom University

- GitHub: [Zendin110206](https://github.com/Zendin110206)
- LinkedIn: [zendin1102](https://www.linkedin.com/in/zendin1102/)
