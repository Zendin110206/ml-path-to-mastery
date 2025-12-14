# 03: Performing Transformations in a Changed Basis

**Chapter Goal:** To understand how to represent a [[Transformasi Linear]] (like a rotation) in a different, non-standard [[Basis]]. This is the Coursera version of 3Blue1Brown's Chapter 13.

---

## 1. The Problem: Performing an Action in a Different World

- **Setup:**
  - **My World:** Standard basis $\vec{e}_1, \vec{e}_2$.
  - **Bear's World:** His basis is $\vec{b}_1 = \begin{bmatrix}3\\1\end{bmatrix}$, $\vec{b}_2 = \begin{bmatrix}1\\1\end{bmatrix}$ (written in my coordinates).

- **Task:** We want to perform a **45° Rotation** on a vector.

- **The Problem:**
  - We have a vector `[x, y]` defined in **Bear's language**.
  - But, we only know the "recipe" or matrix for a 45° rotation ($R_{45}$) in **my language**.
  - We don't know how to perform a rotation directly in Bear's "skewed" world.

---

## 2. The Solution: The Three-Step Journey

This is the exact same logical flow as our language translator analogy.

### Step 1: Translate from Bear's World to My World
- **Goal:** Take Bear's vector `[x, y]` and find out what it's called in my world.
- **Tool:** Use the "Bear → Me" translator dictionary, which is matrix `B` (whose columns are Bear's basis).
  $$ B = \begin{bmatrix} 3 & 1 \\ 1 & 1 \end{bmatrix} $$
- **Result of Step 1:** $B \begin{bmatrix} x \\ y \end{bmatrix}$. This is now the same vector, but in my coordinates.

### Step 2: Perform the Rotation in My World
- **Goal:** Now that the vector is in our world, we can use our rotation "recipe".
- **Tool:** The 45° Rotation Matrix ($R_{45}$) in the standard basis.
  $$ R_{45} = \frac{1}{\sqrt{2}} \begin{bmatrix} 1 & -1 \\ 1 & 1 \end{bmatrix} $$
- **Result of Step 2:** $R_{45} \left( B \begin{bmatrix} x \\ y \end{bmatrix} \right)$. This is the rotated vector, but the result is still in my coordinates.

### Step 3: Translate Back to Bear's World
- **Goal:** Bear wants to know the final result in his own language.
- **Tool:** Use the "Me → Bear" reverse dictionary, which is $B^{-1}$.
  $$ B^{-1} = \frac{1}{2} \begin{bmatrix} 1 & -1 \\ -1 & 3 \end{bmatrix} $$
- **Final Result:** $B^{-1} \left( R_{45} \left( B \begin{bmatrix} x \\ y \end{bmatrix} \right) \right)$. This is the rotated vector, with the result back in Bear's coordinates.

---

## 3. "Aha!" Moment: The Transformation Matrix in Bear's World

The entire 3-step journey can be summarized into a single "super-machine".
- This machine takes an input in Bear's language and outputs the rotated result, also in Bear's language.
- This "machine" is the product of the three matrices.

> $R_{\text{Bear}} = B^{-1} R_{\text{Me}} B$

$R_{\text{Bear}}$ is the matrix that represents the **action** of a 45° Rotation, but as seen from Bear's **perspective** or through his "glasses".
The form $B^{-1}RB$ is a very common and powerful pattern in linear algebra.

---

## 4. Intuition of the Expression `B⁻¹ R B`

This is the universal "recipe" for a change of perspective.

- **`B` (Right-most):** "Enter my world" (from Bear's world).
- **`R` (Center):** "Perform the action in my world".
- **`B⁻¹` (Left-most):** "Return to your world" (Bear's world).

The entire expression is a way of performing an action from our world, but completely "inside" another world.

**Key Message:**
When we change basis, it's not just the vector coordinates that change. The **matrix representation** of the transformation itself must also change to remain consistent. The formula $B^{-1}RB$ is the way to perform that change.

---
**Tags:** #mml-specialization #linear-algebra #change-of-basis #transformations #matrices