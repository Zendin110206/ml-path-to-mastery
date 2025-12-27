# 03: The Cosine Rule & The Dot Product

**Chapter Goal:** To uncover the **geometric meaning** of the [[Dot Product]] and understand its role as a measure of "alignment" between vectors.

---

## 1. Core Idea: Finding the Geometric Meaning

- We already know **how to calculate** the dot product (`r₁s₁ + ...`).
- Now we want to know **what it means geometrically**. The answer comes from the **Cosine Rule**.

---

## 2. Deriving the Formula (Logical Flow)

- **Setup:** Create a triangle with vectors `r`, `s`, and `r-s` as its sides. The angle between `r` and `s` is `θ`.

- **The Cosine Rule (Geometric Version):**
  > `|r-s|² = |r|² + |s|² - 2|r||s|cos(θ)`

- **Rewrite with the Dot Product:**
  - We know from the previous lesson that `|v|² = v · v`. Let's apply this to the left side of the equation.
  - `|r-s|² = (r-s) · (r-s)`
  - **Expand:** `(r-s)·(r-s) = r·r - r·s - s·r + s·s = |r|² - 2(r·s) + |s|²`

- **Equate the Two Expressions:**
  `|r|² - 2(r·s) + |s|² = |r|² + |s|² - 2|r||s|cos(θ)`

- **Simplify:**
  - Cancel `|r|²` and `|s|²` from both sides.
  - `-2(r·s) = -2|r||s|cos(θ)`
  - Cancel `-2` from both sides.

---

## 3. The "Aha!" Moment: The Geometric Definition of the Dot Product

- **Final Formula:**
  > **`r · s = |r| |s| cos(θ)`**

- This is the **geometric definition** of the dot product. It tells us the dot product is:
  > "The product of the lengths of the two vectors, multiplied by the cosine of the angle between them."
  

---

## 4. Geometric Interpretation (The Meaning of `cos(θ)`)

The dot product is a **"measure of alignment"**. The `cos(θ)` factor tells us about the relative direction of the two vectors.

- **Case 1: `θ = 0°` (Same Direction)**
  - `cos(0°) = 1`.
  - `r · s = |r| |s|`. The dot product is at its maximum positive value.

- **Case 2: `θ = 90°` (Perpendicular / Orthogonal)**
  - `cos(90°) = 0`.
  - `r · s = 0`.
  - **Key Conclusion:** If the dot product of two non-zero vectors is zero, the vectors are mutually **orthogonal**.

- **Case 3: `θ = 180°` (Opposite Directions)**
  - `cos(180°) = -1`.
  - `r · s = -|r| |s|`. The dot product is at its maximum negative value.

- **Conclusion about the Sign:**
  - `r · s > 0`: The vectors are generally pointing in the same direction (angle < 90°).
  - `r · s = 0`: The vectors are perpendicular.
  - `r · s < 0`: The vectors are generally pointing in opposite directions (angle > 90°).

![[Pasted image 20251203182512.png#center]]

---
**Tags:** #mml-specialization #linear-algebra #dot-product #cosine-rule #orthogonality