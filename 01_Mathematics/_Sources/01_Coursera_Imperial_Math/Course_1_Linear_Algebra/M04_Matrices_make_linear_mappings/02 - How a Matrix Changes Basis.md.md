# 02: How a Matrix Changes Basis

**Chapter Goal:** To understand the mechanics of translating vector coordinates between different coordinate systems (bases) using matrices, including the standard method (matrix inverse) and a special shortcut for orthonormal bases.

![[Pasted image 20251214112233.png#center]]

---

## 1. Setup: Two Worlds, One Vector

- **My World (Blue):** Uses the standard basis, $\vec{e}_1 = \begin{bmatrix} 1 \\ 0 \end{bmatrix}$ and $\vec{e}_2 = \begin{bmatrix} 0 \\ 1 \end{bmatrix}$.

- **"Bear's" World (Orange):** Uses its own basis. From my perspective, Bear's basis vectors are:
  - $\vec{b}_1 = \begin{bmatrix} 3 \\ 1 \end{bmatrix}$ (This is `[1,0]` in Bear's world).
  - $\vec{b}_2 = \begin{bmatrix} 1 \\ 1 \end{bmatrix}$ (This is `[0,1]` in Bear's world).

---

## 2. Translating from Bear's World to My World

- **Matrix `B` (The "Bear → Me" Translator):**
  This matrix's columns are Bear's basis vectors, written in my coordinates.
  $$ B = \begin{bmatrix} 3 & 1 \\ 1 & 1 \end{bmatrix} $$

- **Problem:** Bear has a vector with coordinates $\begin{bmatrix} 3/2 \\ 1/2 \end{bmatrix}$ in his world. What are the coordinates of this same vector in my world?

- **Logic:** Bear's coordinates are a "recipe". They mean: $(\frac{3}{2})\vec{b}_1 + (\frac{1}{2})\vec{b}_2$.
- **Calculation:** This is a matrix multiplication of `B` and Bear's vector.
  `[my vector] = B * [Bear's vector]`
  $$ \begin{bmatrix} 3 & 1 \\ 1 & 1 \end{bmatrix} \begin{bmatrix} 3/2 \\ 1/2 \end{bmatrix} = \begin{bmatrix} (3 \cdot 3/2) + (1 \cdot 1/2) \\ (1 \cdot 3/2) + (1 \cdot 1/2) \end{bmatrix} = \begin{bmatrix} 9/2 + 1/2 \\ 3/2 + 1/2 \end{bmatrix} = \begin{bmatrix} 10/2 \\ 4/2 \end{bmatrix} = \begin{bmatrix} 5 \\ 2 \end{bmatrix} $$

- **Result:** The vector `[3/2, 1/2]` in Bear's world is the vector `[5, 2]` in my world.

---

## 3. Translating from My World to Bear's World (The Reverse Process)

- **Problem:** Now I have the vector `[5, 2]` in my world. How do I find its coordinates in Bear's world?
- **Logic:** We need a "translation machine" that goes in the opposite direction. We need the inverse of matrix `B`, which is $B^{-1}$.

- **Matrix $B^{-1}$ (The "Me → Bear" Translator):**
  - Find the determinant of `B`: $\det(B) = (3 \cdot 1) - (1 \cdot 1) = 2$.
  - Use the 2x2 inverse formula: $\frac{1}{\det} \begin{bmatrix} d & -b \\ -c & a \end{bmatrix}$.
  $$ B^{-1} = \frac{1}{2} \begin{bmatrix} 1 & -1 \\ -1 & 3 \end{bmatrix} $$

- **Calculation:**
  `[Bear's vector] = B⁻¹ * [my vector]`
  $$ \frac{1}{2} \begin{bmatrix} 1 & -1 \\ -1 & 3 \end{bmatrix} \begin{bmatrix} 5 \\ 2 \end{bmatrix} = \frac{1}{2} \begin{bmatrix} (1\cdot5 + -1\cdot2) \\ (-1\cdot5 + 3\cdot2) \end{bmatrix} = \frac{1}{2} \begin{bmatrix} 3 \\ 1 \end{bmatrix} = \begin{bmatrix} 3/2 \\ 1/2 \end{bmatrix} $$

- **Result:** The vector `[5, 2]` in my world is the vector `[3/2, 1/2]` in Bear's world. The process is perfectly reversible!

---

## 4. Special Case & "Shortcut": Orthonormal Basis

What if Bear's basis was **orthonormal** (perpendicular and unit length)?

- **Example Orthonormal Bear Basis:**
  $\vec{b}_1 = \frac{1}{\sqrt{2}}\begin{bmatrix}1\\1\end{bmatrix}$, $\vec{b}_2 = \frac{1}{\sqrt{2}}\begin{bmatrix}-1\\1\end{bmatrix}$.

- **Advantage:** The change of basis can be done with the **[[Dot Product]]** (as we learned previously), with no need to find a complicated matrix inverse.

- **Problem:** My vector is $\frac{1}{\sqrt{2}}\begin{bmatrix}1\\3\end{bmatrix}$. What are its coordinates in Bear's orthonormal world?

- **The "Shortcut" with Projection (Dot Product):**
  - **Coordinate 1:** `(my vector) · b₁`
    $$ \left(\frac{1}{\sqrt{2}}\begin{bmatrix}1\\3\end{bmatrix}\right) \cdot \left(\frac{1}{\sqrt{2}}\begin{bmatrix}1\\1\end{bmatrix}\right) = \frac{1}{2} ([1,3] \cdot [1,1]) = \frac{1}{2}(1+3) = 2 $$
  - **Coordinate 2:** `(my vector) · b₂`
    $$ \left(\frac{1}{\sqrt{2}}\begin{bmatrix}1\\3\end{bmatrix}\right) \cdot \left(\frac{1}{\sqrt{2}}\begin{bmatrix}-1\\1\end{bmatrix}\right) = \frac{1}{2} ([1,3] \cdot [-1,1]) = \frac{1}{2}(-1+3) = 1 $$

- **Result:** The vector $\frac{1}{\sqrt{2}}\begin{bmatrix}1\\3\end{bmatrix}$ in my world is the vector `[2, 1]` in Bear's world.

---

## 5. Important Warning

- The "shortcut" using the dot product **ONLY WORKS** if the new basis is **orthonormal**.
- If the basis is not orthogonal (like our first example, `[[3,1],[1,1]]`), you **MUST** use the matrix inverse method.

---
**Tags:** #mml-specialization #linear-algebra #change-of-basis #basis-vectors #orthonormal-basis