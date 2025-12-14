# 06: Example - Reflection in a Plane

**Chapter Goal:** To demonstrate the combined power of the [[05 - The Gram-Schmidt Process|Gram-Schmidt Process]] and [[02 - How a Matrix Changes Basis|Change of Basis]] by solving a geometrically difficult problem in a very elegant way.

---

## 1. The Problem: Reflection in a Skewed Mirror

- **Goal:** We want to find the result of reflecting a vector $\vec{r}$ across a "mirror" (a plane) that is positioned at a skewed angle in 3D space.
- **The Difficulty:** Solving this with standard trigonometry would be extremely hard because all the angles are "weird".

- **Known Information:**
  - We don't know the equation of the mirror plane, but we know two vectors that lie on it: $\vec{v}_1$ and $\vec{v}_2$.
  - We also know a third vector, $\vec{v}_3$, that is not on the plane.

---

## 2. The Clever Strategy: Change Your Perspective!

- **Core Idea:** Instead of solving the problem in "our world" where the axes (`x,y,z`) are not aligned with the mirror, let's move to a new, simpler "world".

- **The Ideal "Mirror World":**
  - Imagine a new coordinate system ($\vec{e}_1, \vec{e}_2, \vec{e}_3$) where:
    - $\vec{e}_1$ and $\vec{e}_2$ lie perfectly **on the surface** of the mirror.
    - $\vec{e}_3$ points **perpendicularly out** of the mirror (this is called the "normal" vector).
  - These three vectors, $\vec{e}_1, \vec{e}_2, \vec{e}_3$, form an **[[04 - Orthogonal Matrices#2. Our "Superhero": The Orthogonal Matrix|orthonormal basis]]**.

- **Why is this World "Easy"?**
  - In this mirror world, the action of "reflection" becomes incredibly simple:
    - The $\vec{e}_1$ component of a vector **does not change**.
    - The $\vec{e}_2$ component of a vector **does not change**.
    - The $\vec{e}_3$ component (the distance from the mirror) simply has its **sign flipped** (`z` becomes `-z`).

---

## 3. The Game Plan (Three Main Steps)

### 1. Build the Mirror World (Using Gram-Schmidt)
- We start with our "messy" vectors $\{\vec{v}_1, \vec{v}_2, \vec{v}_3\}$.
- Use the **[[05 - The Gram-Schmidt Process|Gram-Schmidt Process]]** to transform them into a "nice" orthonormal basis $\{\vec{e}_1, \vec{e}_2, \vec{e}_3\}$.
- $\vec{e}_1$ and $\vec{e}_2$ will now define the mirror plane, and $\vec{e}_3$ will be its normal vector.

### 2. Define the Reflection in the Mirror World
- Inside the basis `E` = $\{\vec{e}_1, \vec{e}_2, \vec{e}_3\}$, the transformation matrix for the reflection ($T_E$) is very simple:
  $$ T_E = \begin{bmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & -1 \end{bmatrix} \quad \begin{matrix} (\vec{e}_1 \text{ is unchanged}) \\ (\vec{e}_2 \text{ is unchanged}) \\ (\vec{e}_3 \text{ is flipped}) \end{matrix} $$

### 3. Take the Translation Journey (Using `A⁻¹MA` Logic)
- To reflect our original vector $\vec{r}$ (which lives in our world), we take a 3-step journey:
  a. **Translate $\vec{r}$ to the Mirror World:** $\vec{r}_E = E^{-1} \vec{r}$
  b. **Perform the Easy Reflection there:** $\vec{r}'_E = T_E \vec{r}_E$
  c. **Translate the Result Back to Our World:** $\vec{r}' = E \vec{r}'_E$

- **The "Super-Machine" for Reflection in Our World (`T`):**
  Combining all three steps, we get the total reflection matrix in our world:
  > **`T = E * T_E * E⁻¹`**

---

## 4. An Added Bonus

- **Easy Inverse:** Because we built the basis `E` using Gram-Schmidt, it is guaranteed to be an **[[04 - Orthogonal Matrices|orthonormal matrix]]**.
- **Superpower of Orthogonal Matrices:** We know that for an orthogonal matrix, $E^{-1} = E^T$ (the Inverse is the Transpose).

- **Simpler Final Formula:**
  > **`T = E * T_E * Eᵀ`**
- This is much easier to compute than finding the inverse of a general 3x3 matrix.

**Final Conclusion:**
By combining the **Gram-Schmidt Process** (to create a nice basis) and **[[Change of Basis]]** (to work within that nice basis), we can transform a very difficult geometric problem (reflection in a skewed plane) into a series of matrix multiplications that can be easily solved by a computer. This is a pinnacle of the power of linear algebra.

![[Pasted image 20251215021431.png#center]]

---
**Tags:** #mml-specialization #linear-algebra #gram-schmidt #change-of-basis #orthogonal-matrix #reflection