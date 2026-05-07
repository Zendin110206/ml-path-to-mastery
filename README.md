# 🧠 Mathematics for Machine Learning & Research Log ![Status](https://img.shields.io/badge/status-active-success) ![Focus](https://img.shields.io/badge/focus-mathematics%20for%20ML-blue) ![Vault](https://img.shields.io/badge/vault-Obsidian%20%2B%20GitHub-7C3AED) ![Language](https://img.shields.io/badge/notes-English%20%2B%20Indonesian-informational)

**Documentation of Independent Study, Technical Notes, and Applied AI Research Preparation**

This repository serves as the central documentation for my transition from Telecommunication Engineering to **Applied Machine Learning Research**. It contains structured notes, mathematical derivations, concept maps, source-based study notes, teaching assistant material, and long-term research preparation logs.

The curriculum follows a rigorous path from mathematical foundations to machine learning and deep learning, with the long-term goal of preparing for a **master's degree in AI** and applied research work, including engineering, IoT, and intelligent systems.

---

## Overview

This repository is intentionally maintained as a hybrid **Obsidian vault** and **GitHub portfolio repository**.

As an Obsidian vault, it is designed for connected learning: source notes, concept hubs, review notes, and visual assets are linked together so mathematical ideas can be revisited from multiple directions.

As a GitHub repository, it is designed to present the learning path professionally: clear folder structure, consistent naming, stable links, public README files, and reproducible repository hygiene.

The most important principle is that the learning notes remain personal and pedagogical. Refactors should improve structure, navigation, naming, assets, and documentation without rewriting the substance of the original learning process.

---

## 🗺️ Learning Roadmap

### 1️⃣ Phase 1: Mathematical Foundations

*Objective: establish rigorous mathematical intuition and computational readiness for machine learning.*

- [x] **Linear Algebra**: vectors, matrices, linear transformations, determinants, basis, eigenvalues, and eigenvectors.
- [x] **Calculus**: derivatives, integrals, limits, Taylor series, and the fundamental theorem of calculus.
- [x] **Multivariate Calculus**: gradients, Jacobians, Hessians, chain rule, optimization, neural-network intuition, and linearisation.
- [ ] **Probability & Statistics**: probability distributions, expectation, variance, inference, and statistical learning foundations.

Primary references include:

- [3Blue1Brown - Essence of Linear Algebra](https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab)
- [3Blue1Brown - Essence of Calculus](https://www.youtube.com/playlist?list=PLZHQObOWTQDMsr9K-rj53DwVRMYO3t5Yr)
- [Imperial College London - Mathematics for Machine Learning](https://www.coursera.org/specializations/mathematics-machine-learning)

### 2️⃣ Phase 2: Classical Machine Learning

*Objective: master core algorithms, implementation patterns, and statistical learning theory.*

- [ ] **Supervised Learning**: regression, classification, SVM, decision trees, ensemble methods, and evaluation metrics.
- [ ] **Unsupervised Learning**: clustering, PCA, dimensionality reduction, and representation learning foundations.
- [ ] **Model Evaluation**: cross-validation, bias-variance tradeoff, error analysis, and experiment tracking.
- [ ] **Python Implementation**: NumPy, pandas, scikit-learn, notebook-based experiments, and reproducible workflows.

### 3️⃣ Phase 3: Deep Learning & Applied Research

*Objective: build toward advanced AI systems and applied engineering research.*

- [ ] **Neural Networks**: perceptrons, backpropagation, optimization, initialization, and regularization.
- [ ] **Computer Vision**: CNNs, object detection, image processing, and applied visual intelligence.
- [ ] **Time Series Forecasting**: RNNs, LSTMs, Transformers, and engineering time-series data.
- [ ] **Capstone Research Direction**: IoT water quality prediction and intelligent monitoring systems.

---

## Current Coverage

### 3Blue1Brown Intuition Series

- [x] Essence of Linear Algebra notes
- [x] Essence of Calculus notes
- [x] Big-picture synthesis notes for mathematical intuition

### Coursera Mathematics for Machine Learning

- [x] Course 1: Linear Algebra modules and quizzes
- [x] Course 2: Multivariate Calculus modules
- [x] Notes on vectors, projections, matrix transformations, eigenvalues, gradients, optimization, and Taylor series

### Teaching Assistant Notes

- [x] Calculus 2 integration techniques
- [x] Sequences and series material
- [x] Markdown and PDF references for teaching and review

### Synthesis and Concept Navigation

- [x] Mathematical foundations Q&A review
- [x] Concept hubs for common Obsidian links such as `[[Vector]]`, `[[Turunan]]`, `[[Dot Product]]`, and `[[Gradient Descent]]`
- [ ] Future machine learning implementation notes
- [ ] Future applied project and research logs

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

Private daily logs, local Obsidian workspace state, plugin vendor files, cache files, and OS/editor artifacts are intentionally excluded from version control.

---

## How to Navigate

For GitHub reading:

1. Start with [`01_Mathematics/README.md`](01_Mathematics/README.md) for the main mathematics index.
2. Open [`01_Mathematics/_Sources/README.md`](01_Mathematics/_Sources/README.md) for source-based notes from courses and video series.
3. Use [`01_Mathematics/Concepts/README.md`](01_Mathematics/Concepts/README.md) to browse concept hubs and repaired Obsidian links.
4. Check [`01_Mathematics/Teaching_Assistant/README.md`](01_Mathematics/Teaching_Assistant/README.md) for teaching assistant notes.
5. Review [`01_Mathematics/Synthesis_and_Review/README.md`](01_Mathematics/Synthesis_and_Review/README.md) for higher-level review material.

For Obsidian:

1. Open this repository as a vault.
2. Use the graph view and wikilinks to move between concepts and source notes.
3. Keep embedded visual assets under [`assets/images/`](assets/images/).
4. Treat concept hubs as navigation pages, not replacements for the original study notes.

---

## Repository Conventions

- Markdown notes use a single `.md` extension.
- Exported/reference PDFs use a single `.pdf` extension.
- Source folders keep the original learning order from each course or video series.
- Image assets use stable filenames such as `pasted_YYYYMMDDHHMMSS.png`.
- `00_Resources/` stores templates, cheatsheets, and reusable documentation helpers.
- `01_Mathematics/Concepts/` stores lightweight concept hubs used to repair and strengthen Obsidian navigation.
- Protected source notes preserve their original explanations, learning flow, formulas, and personal reasoning style.

---

## Link Integrity

This repository includes a lightweight audit script for vault maintenance:

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

## Content Preservation

Many notes in this repository are written as part of an actual learning process. Some are in English, some are in Indonesian, and some intentionally mix both depending on the source, the class context, or the way I understood the concept at that time.

Those notes are not meant to be rewritten into generic textbook prose. The purpose of the repository cleanup is to make the vault easier to navigate and more professional to present, while preserving the original reasoning, explanations, worked steps, and learning style.

---

## Credits, Thanks & Inspirations

This learning path and repository structure are inspired by:

- **Harry Connor** - for the comprehensive [Math for AI/ML Roadmap](https://www.youtube.com/watch?v=YZOAiJmnNvc), which helped shape the direction of the mathematics-first learning path.
- **3Blue1Brown / Grant Sanderson** - for intuitive visual explanations of linear algebra and calculus that make abstract mathematics easier to connect with machine learning.
- **Imperial College London and Coursera** - for the Mathematics for Machine Learning specialization used as one of the main structured study references.
- **Arifian Saputra** - for professional technical documentation style and public learning presentation references, especially in the context of AI development learning repositories.
- **0xHadyy** - for the digital garden and learning-in-public philosophy that influenced the way this repository treats notes as connected, evolving knowledge.
- **Telkom University learning and teaching context** - for the academic and teaching assistant environment that shaped many of the calculus notes and problem-solving explanations.

---

## Author

**Muhammad Zaenal Abidin Abdurrahman**<br>
Telecommunication Engineering Undergraduate - Telkom University

- GitHub: [Zendin110206](https://github.com/Zendin110206)
- LinkedIn: [zendin1102](https://www.linkedin.com/in/zendin1102/)
