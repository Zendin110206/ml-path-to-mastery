# 07: Determinants and The Inverse

**Chapter Goal:** To connect the concept of the **[[Determinan|Determinant]]** with **[[Linear Independence]]** and the existence of the **[[Matriks Invers|Inverse Matrix]]**. This is a Coursera version of 3Blue1Brown's Chapters 5 and 7.

---

## 1. Geometric Intuition of the Determinant: The Area/Volume Scaling Factor

- **Core Idea:** The determinant of a transformation matrix is a single number that tells us how much an **area (in 2D)** or **volume (in 3D)** is stretched or squished by that transformation.

- **Simple Example (Diagonal Matrix):**
  - The matrix $\begin{bmatrix} a & 0 \\ 0 & d \end{bmatrix}$ stretches the x-axis by `a` and the y-axis by `d`.
  - The unit square (area 1) becomes a rectangle with area `a * d`.
  - Thus, $\det\left(\begin{bmatrix} a & 0 \\ 0 & d \end{bmatrix}\right) = ad$.

- **Parallelogram Example:**
  - For a general matrix $\begin{bmatrix} a & b \\ c & d \end{bmatrix}$, the unit square becomes a parallelogram.
  - The area of this parallelogram (base * height) turns out to be exactly $|ad - bc|$.

- **Definition of the 2x2 Determinant:**
  $$ \det\left(\begin{bmatrix} a & b \\ c & d \end{bmatrix}\right) = ad - bc $$

---

## 2. The Relationship Between Determinant and Inverse Matrix

- **The 2x2 Inverse Formula (from school):**
  $$ A^{-1} = \frac{1}{\det(A)} \begin{bmatrix} d & -b \\ -c & a \end{bmatrix} $$
  *(Swap the main diagonal, negate the other diagonal, and divide by the determinant).*

- **"Aha!" Moment:**
  - The $\begin{bmatrix} d & -b \\ -c & a \end{bmatrix}$ part (called the Adjugate Matrix) is the geometric "undoing" transformation.
  - The determinant, `det(A)`, appears as a scaling factor that must be reversed.
  - **Intuition:** If transformation `A` stretches all areas by a factor of 2 (`det(A)=2`), then its inverse transformation must squish all areas by a factor of one-half (`1/det(A) = 1/2`) to return to the original state.

---

## 3. The Most Important Case: Determinant = 0

- **Geometric Meaning:**
  - If `det(A) = 0`, the area/volume scaling factor is zero.
  - This means the transformation has **squished** the space into a lower dimension.
    - **In 2D:** a line or a point.
    - **In 3D:** a plane, a line, or a point.

- **Relationship with Linear Independence:**
  - If the space is squished, it means the columns of matrix `A` (the new basis vectors) are no longer [[Linear Independence|linearly independent]].
  - At least one of the new basis vectors can be created from a combination of the others (e.g., $\hat{i}_{new}$ and $\hat{j}_{new}$ become co-linear).

- **Key Conclusion:**
  > **`det(A) = 0` ⇔ The columns of `A` are linearly dependent.**

---

## 4. Consequences of `det(A) = 0`

If the determinant of a matrix is zero:

- **There is NO Inverse:**
  - **Algebraically:** We cannot calculate `1 / det(A)` because we would be dividing by zero.
  - **Geometrically:** You cannot "un-squish" a line back into a plane. Information has been permanently lost. The transformation `A` cannot be undone.

- **The System `Ax=v` Becomes Problematic:**
  - Because the output space is limited (just a line or a plane), a solution only exists if the vector `v` happens to lie on that line/plane.
  - If a solution does exist, there will typically be infinitely many solutions.
  - **Gaussian Elimination Example:** If a matrix is linearly dependent, the elimination process will result in a row of all zeros (`0a + 0b + 0c = 0`). This is a "true but useless" equation and signals that we lack enough information to find a single, unique solution.

- **Final Message:**
  - Before performing a transformation or trying to solve a system of equations, checking the value of the determinant is a crucial step.
  - **`det(A) ≠ 0`:** All is well. The transformation is invertible, and a unique solution for `Ax=v` can be found.
  - **`det(A) = 0`:** Be careful! The transformation is not invertible, and the solution for `Ax=v` may not exist or may not be unique.

---
**Tags:** #mml-specialization #linear-algebra #determinant #inverse-matrix #linear-independence