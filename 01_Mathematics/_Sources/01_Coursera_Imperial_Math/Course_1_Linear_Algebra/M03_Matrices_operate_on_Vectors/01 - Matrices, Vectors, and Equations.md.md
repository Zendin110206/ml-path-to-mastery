# 01: Matrices, Vectors, & Solving Simultaneous Equation Problems

**Chapter Goal:** To connect the abstract idea of a [[Matriks|matrix]] as a [[Transformasi Linear|transformation]] with the concrete problem of solving **systems of linear equations**.

---

## 1. The Initial Problem: "The Mystery of Apples & Bananas"

- **Context:** We start with a simple algebra problem, a system of simultaneous linear equations.
  - `2 Apples + 3 Bananas = 8 Euros`
  - `10 Apples + 1 Banana = 13 Euros`
- **Goal:** Find the price of one Apple (`a`) and one Banana (`b`).

---

## 2. A New Way to Write the Problem: Matrix Notation

The problem above can be rewritten in the form of a matrix-vector equation.

- **The Form:** `A * x = v`
  $$ \begin{bmatrix} 2 & 3 \\ 10 & 1 \end{bmatrix} \begin{bmatrix} a \\ b \end{bmatrix} = \begin{bmatrix} 8 \\ 13 \end{bmatrix} $$

- **Anatomy of the Equation:**
  - **Matrix `A`:** The "box" containing all the **coefficients** (the multipliers) of our variables.
  - **Vector `x`:** A vector whose components are the **unknowns** we want to find (the prices `a` and `b`).
  - **Vector `v`:** A vector whose components are the known **outcomes** or results.

- **Multiplication Rule:** The "row-times-column" rule (`2*a + 3*b = 8`) ensures that this matrix notation is mathematically identical to the original system of equations.

---

## 3. "Aha!" Moment: Connecting Algebra to Geometry

The equation `A * x = v` can be read in a much more powerful way:

> **"Matrix `A` operates on vector `x` to produce vector `v`."**

This reframes an algebraic problem as a **geometric transformation problem**, exactly as we learned in the 3Blue1Brown series.

The question now becomes:
> "Which **input vector `x`** (the prices `[a,b]`), when transformed by the **'machine' `A`**, will land exactly on the **output vector `v`** (the results `[8,13]`)?"

---

## 4. How Does Matrix `A` Transform Space?

As in the 3Blue1Brown series, to understand the transformation `A`, we just need to track where the basis vectors ($\vec{e}_1, \vec{e}_2$) land.

- **The Journey of $\vec{e}_1 = [1, 0]$:**
  $$ A \vec{e}_1 = \begin{bmatrix} 2 & 3 \\ 10 & 1 \end{bmatrix} \begin{bmatrix} 1 \\ 0 \end{bmatrix} = \begin{bmatrix} 2 \\ 10 \end{bmatrix} $$
  - This means the x-axis basis vector is "thrown" to the position `[2, 10]`. This is the **first column of A**.

- **The Journey of $\vec{e}_2 = [0, 1]$:**
  $$ A \vec{e}_2 = \begin{bmatrix} 2 & 3 \\ 10 & 1 \end{bmatrix} \begin{bmatrix} 0 \\ 1 \end{bmatrix} = \begin{bmatrix} 3 \\ 1 \end{bmatrix} $$
  - This means the y-axis basis vector is "thrown" to the position `[3, 1]`. This is the **second column of A**.

- **Conclusion:** Matrix `A` is a "machine" that transforms the original grid (defined by $\vec{e}_1, \vec{e}_2$) into a new, skewed and stretched grid (defined by `[2,10]` and `[3,1]`).

---

## 5. The Meaning of "Linear Algebra"

- **Linear:** Because the operations only involve multiplication by constants and addition. There are no `x²`, `sin(x)`, or `x*y` terms. The relationships are "straight lines".
- **Algebra:** Because it is a system of notation for describing mathematical objects (vectors, matrices) and the rules for manipulating them.

**Final Conclusion:**
There is a deep connection between systems of equations, matrices, and vector transformations. The key to solving a system of equations is to understand how the corresponding matrix transforms vectors.

---
**Tags:** #mml-specialization #linear-algebra #matrices #systems-of-equations #transformations