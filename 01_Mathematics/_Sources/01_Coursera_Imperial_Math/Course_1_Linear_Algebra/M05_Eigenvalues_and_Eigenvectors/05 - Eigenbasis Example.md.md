# 05: Eigenbasis Example & Diagonalization

**Chapter Goal:** To demonstrate with a concrete example how to use **[[04 - Changing to the Eigenbasis|Diagonalization]]** to compute powers of a matrix, and to verify that it gives the same result as the "brute force" method.

---

## 1. Problem Setup

- **Transformation `T`:** A 2x2 matrix.
  $$ T = \begin{bmatrix} 1 & 1 \\ 0 & 2 \end{bmatrix} $$
- **Geometric Interpretation:** This is a combination of a vertical scaling (by a factor of 2) and a horizontal shear.
- **Initial Vector `v`:**
  $$ \vec{v} = \begin{bmatrix} -1 \\ 1 \end{bmatrix} $$
- **Goal:** Calculate $T^2\vec{v}$. (Where will $\vec{v}$ land after being transformed by `T` twice?).

---

## 2. Method #1: "Brute Force" (Direct Calculation)

This method does not use diagonalization, only standard matrix multiplication.

### Option A: Apply `T` to the Vector Twice
- **First Step:**
  $$ \vec{v}_1 = T\vec{v} = \begin{bmatrix} 1 & 1 \\ 0 & 2 \end{bmatrix} \begin{bmatrix} -1 \\ 1 \end{bmatrix} = \begin{bmatrix} (-1+1) \\ (0+2) \end{bmatrix} = \begin{bmatrix} 0 \\ 2 \end{bmatrix} $$
- **Second Step:**
  $$ \vec{v}_2 = T\vec{v}_1 = \begin{bmatrix} 1 & 1 \\ 0 & 2 \end{bmatrix} \begin{bmatrix} 0 \\ 2 \end{bmatrix} = \begin{bmatrix} (0+2) \\ (0+4) \end{bmatrix} = \begin{bmatrix} 2 \\ 4 \end{bmatrix} $$
- **Final Result:** $\begin{bmatrix} 2 \\ 4 \end{bmatrix}$.

### Option B: Calculate `T²` First, then Multiply by Vector
- **Calculate `T²`:**
  $$ T^2 = T \cdot T = \begin{bmatrix} 1 & 1 \\ 0 & 2 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ 0 & 2 \end{bmatrix} = \begin{bmatrix} (1+0) & (1+2) \\ (0+0) & (0+4) \end{bmatrix} = \begin{bmatrix} 1 & 3 \\ 0 & 4 \end{bmatrix} $$
- **Multiply by `v`:**
  $$ T^2\vec{v} = \begin{bmatrix} 1 & 3 \\ 0 & 4 \end{bmatrix} \begin{bmatrix} -1 \\ 1 \end{bmatrix} = \begin{bmatrix} (-1+3) \\ (0+4) \end{bmatrix} = \begin{bmatrix} 2 \\ 4 \end{bmatrix} $$
- **Final Result:** $\begin{bmatrix} 2 \\ 4 \end{bmatrix}$. Both ways give the same result, as expected.

---

## 3. Method #2: "The Elegant Way" (Using Diagonalization)

Now we will use the recipe $T^2 = C D^2 C^{-1}$.

### Step 1: Find the "Ingredients" (`λ`, `C`, `D`, `C⁻¹`)

- **Find the Eigenvalues and Eigenvectors of `T`:**
  (This is skipped in the video, but we can calculate it quickly: $\det(T-\lambda I) = (1-\lambda)(2-\lambda) = 0$)
  - $\lambda_1 = 1$, with corresponding eigenvector $\vec{v}_1 = \begin{bmatrix} 1 \\ 0 \end{bmatrix}$.
  - $\lambda_2 = 2$, with corresponding eigenvector $\vec{v}_2 = \begin{bmatrix} 1 \\ 1 \end{bmatrix}$.

- **Form Matrices `C` and `D`:**
  - **`C` (Eigenvector Matrix):** Its columns are the eigenvectors.
    $$ C = \begin{bmatrix} 1 & 1 \\ 0 & 1 \end{bmatrix} $$
  - **`D` (Diagonal Matrix):** Its diagonal entries are the eigenvalues, in the same order as the columns in `C`.
    $$ D = \begin{bmatrix} 1 & 0 \\ 0 & 2 \end{bmatrix} $$

- **Find `C⁻¹` (The Inverse of `C`):**
  - $\det(C) = (1\cdot1) - (1\cdot0) = 1$.
  - $$ C^{-1} = \frac{1}{1} \begin{bmatrix} 1 & -1 \\ 0 & 1 \end{bmatrix} = \begin{bmatrix} 1 & -1 \\ 0 & 1 \end{bmatrix} $$

### Step 2: Calculate `T²` with the Diagonalization Formula

$$ T^2 = C D^2 C^{-1} $$
$$ T^2 = \begin{bmatrix} 1 & 1 \\ 0 & 1 \end{bmatrix} \begin{bmatrix} 1^2 & 0 \\ 0 & 2^2 \end{bmatrix} \begin{bmatrix} 1 & -1 \\ 0 & 1 \end{bmatrix} = \begin{bmatrix} 1 & 1 \\ 0 & 1 \end{bmatrix} \begin{bmatrix} 1 & 0 \\ 0 & 4 \end{bmatrix} \begin{bmatrix} 1 & -1 \\ 0 & 1 \end{bmatrix} $$

- **Calculate $D^2 C^{-1}$ first:**
  $$ \begin{bmatrix} 1 & 0 \\ 0 & 4 \end{bmatrix} \begin{bmatrix} 1 & -1 \\ 0 & 1 \end{bmatrix} = \begin{bmatrix} (1+0) & (-1+0) \\ (0+0) & (0+4) \end{bmatrix} = \begin{bmatrix} 1 & -1 \\ 0 & 4 \end{bmatrix} $$
- **Multiply `C` by the result:**
  $$ \begin{bmatrix} 1 & 1 \\ 0 & 1 \end{bmatrix} \begin{bmatrix} 1 & -1 \\ 0 & 4 \end{bmatrix} = \begin{bmatrix} (1+0) & (-1+4) \\ (0+0) & (0+4) \end{bmatrix} = \begin{bmatrix} 1 & 3 \\ 0 & 4 \end{bmatrix} $$
- **Result for `T²`:** $\begin{bmatrix} 1 & 3 \\ 0 & 4 \end{bmatrix}$. This is **EXACTLY the same** as the `T²` we calculated with the brute force method!

### Step 3: Multiply by the Initial Vector
$$ T^2\vec{v} = \begin{bmatrix} 1 & 3 \\ 0 & 4 \end{bmatrix} \begin{bmatrix} -1 \\ 1 \end{bmatrix} = \begin{bmatrix} (-1+3) \\ (0+4) \end{bmatrix} = \begin{bmatrix} 2 \\ 4 \end{bmatrix} $$
- **Final Result:** $\begin{bmatrix} 2 \\ 4 \end{bmatrix}$. Once again, the result is identical.

---

## 4. Conclusion
- This example provides concrete proof that both methods (brute force and diagonalization) yield the identical result.
- While the difference in effort is not dramatic for a 2x2 matrix raised to the power of 2, imagine if we had to calculate $T^{100}$. The diagonalization method would be vastly more efficient because calculating $D^{100}$ is instantaneous.
- This serves as a validation that the theory of $T^n = CD^nC^{-1}$ truly works in practice.

---
**Tags:** #mml-specialization #linear-algebra #eigenbasis #diagonalization #worked-example