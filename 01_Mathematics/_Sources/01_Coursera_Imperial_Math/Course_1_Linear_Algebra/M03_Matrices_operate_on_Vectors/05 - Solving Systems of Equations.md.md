# 05: Solving Systems of Linear Equations & Gaussian Elimination

**Chapter Goal:** To introduce the first practical method for solving systems of linear equations, **Gaussian Elimination**, and to connect it with the theoretical concept of the [[Matriks Invers|inverse matrix]].

---

## 1. The Big Idea: The Inverse Matrix (`A⁻¹`)

- **Problem:** We have the equation $A\vec{x} = \vec{v}$. We want to find $\vec{x}$.
- **Solution Idea (Theoretical):** What if we could find a "canceling matrix" ($A^{-1}$) that, when multiplied by `A`, results in the identity matrix `I` (which "does nothing")?
  > $A^{-1}A = I$

- **Solution Flow:**
  1.  Start with $A\vec{x} = \vec{v}$.
  2.  Multiply both sides from the left by $A^{-1}$: $A^{-1}(A\vec{x}) = A^{-1}\vec{v}$.
  3.  Simplify the left side: $(A^{-1}A)\vec{x} = I\vec{x} = \vec{x}$.
  4.  **Solution:** $\vec{x} = A^{-1}\vec{v}$.

- **Conclusion:** If we can find the inverse matrix ($A^{-1}$), we can solve the system for **any** $\vec{v}$ with just one matrix multiplication. This is very powerful.

---

## 2. The Practical Method: Gaussian Elimination

- **Problem:** Finding $A^{-1}$ itself can be difficult. To solve one specific system, there is a more direct way.
- **Intuitive Idea:** In a system of equations, we are allowed to subtract one row (equation) from another. This will not change the final solution.
- **Method Name:** **Gaussian Elimination**.

---

## 3. The Process of Gaussian Elimination (Step-by-Step)

This method consists of two phases:

### Phase 1: Forward Elimination
- **Goal:** To transform matrix `A` into **row echelon form**, or an **upper triangular matrix**.
- **Meaning:** To make all entries **below the main diagonal** equal to zero.
- **How-to:**
  1.  Use the first row to "eliminate" (make zero) the first entry in the second and third rows.
  2.  Use the new second row to eliminate the second entry in the third row.
  3.  Continue until the matrix is in a triangular shape.
- **IMPORTANT:** Any operation you perform on matrix `A` (e.g., `Row2 - Row1`) must also be performed on the vector `v` on the right-hand side.

### Phase 2: Back Substitution
- **Situation:** We now have a new, simpler system of equations where the last row has only one variable.
- **Example from video:** $-1c = -2 \implies$ we immediately know $c=2$.
- **How-to:**
  1.  Solve for the last variable from the last row.
  2.  Substitute that known value into the row above it to find the next variable.
  3.  Repeat this process all the way to the top row.

- **Optional (Gauss-Jordan Elimination):**
  Instead of back substitution, we can continue the elimination process upwards to also make all entries **above the main diagonal** zero.
  - This will transform matrix `A` into the **identity matrix `I`**.
  - If this is done, the vector `v` on the right-hand side will magically become the solution vector `x` itself!

---

## 4. Method Comparison

### Gaussian Elimination:
- **Pros:** Computationally very efficient for solving a **single, specific** system $A\vec{x}=\vec{v}$.
- **Cons:** If `v` changes, you have to repeat the entire process from the start.

### Using the Inverse Matrix (`x = A⁻¹v`):
- **Pros:** Once you find $A^{-1}$ one time, you can solve for **any** `v` very quickly.
- **Cons:** Finding $A^{-1}$ itself is a longer process.

- **"Aha!" Moment:** The process of **Gauss-Jordan Elimination** (transforming `A` into `I`) is actually the core of the method used to find the inverse matrix $A^{-1}$, which will be discussed in the next video.

---
## 5. Worked Example: The Apple, Banana, and Carrot Problem

Let's walk through the exact example from the video to see Gaussian Elimination in action.

### Initial System of Equations:
1.  `1a + 1b + 3c = 15`
2.  `1a + 2b + 4c = 21`
3.  `1a + 1b + 2c = 13`

### Matrix Form `A * x = v`:
$$ \begin{bmatrix} 1 & 1 & 3 \\ 1 & 2 & 4 \\ 1 & 1 & 2 \end{bmatrix} \begin{bmatrix} a \\ b \\ c \end{bmatrix} = \begin{bmatrix} 15 \\ 21 \\ 13 \end{bmatrix} $$
We will call these rows $R_1, R_2, \text{ and } R_3$.

---
### Phase 1: Forward Elimination (Making the Lower Triangle Zero)

**Goal:** Eliminate `a` from $R_2$ and $R_3$, then eliminate `b` from the new $R_3$.

**Step 1: Eliminate `a` from Row 2**
- **Operation:** $R_2' = R_2 - R_1$ (The new Row 2 is the result of Old Row 2 minus Row 1).
- **Matrix `A` Calculation:**
  `[1, 2, 4] - [1, 1, 3] = [0, 1, 1]`
- **Vector `v` Calculation:**
  `21 - 15 = 6`

- **Intermediate Result:**
$$ \begin{bmatrix} 1 & 1 & 3 \\ \mathbf{0} & \mathbf{1} & \mathbf{1} \\ 1 & 1 & 2 \end{bmatrix} \begin{bmatrix} a \\ b \\ c \end{bmatrix} = \begin{bmatrix} 15 \\ \mathbf{6} \\ 13 \end{bmatrix} $$

**Step 2: Eliminate `a` from Row 3**
- **Operation:** $R_3' = R_3 - R_1$
- **Matrix `A` Calculation:**
  `[1, 1, 2] - [1, 1, 3] = [0, 0, -1]`
- **Vector `v` Calculation:**
  `13 - 15 = -2`

- **Result after Forward Elimination:**
$$ \begin{bmatrix} 1 & 1 & 3 \\ 0 & 1 & 1 \\ \mathbf{0} & \mathbf{0} & \mathbf{-1} \end{bmatrix} \begin{bmatrix} a \\ b \\ c \end{bmatrix} = \begin{bmatrix} 15 \\ 6 \\ \mathbf{-2} \end{bmatrix} $$
Success! Matrix `A` is now in **upper triangular form**. All entries below the diagonal are zero.

---
### Phase 2: Back Substitution (Finding `c`, then `b`, then `a`)

![[Pasted image 20251208032942.png#center]]

Now we can "read" the solution from the bottom up.

**Step 3: Find `c` from Row 3**
- **Equation $R_3$:** `0a + 0b - 1c = -2`
- `-c = -2`
- **`c = 2`**
  *(As noted in the video, he multiplies this row by -1 to get `0 0 1 | 2`)*

**Step 4: Find `b` from Row 2 (using `c=2`)**
- **Equation $R_2$:** `0a + 1b + 1c = 6`
- `b + c = 6`
- Substitute `c=2`: `b + 2 = 6`
- **`b = 4`**

**Step 5: Find `a` from Row 1 (using `b=4` and `c=2`)**
- **Equation $R_1$:** `1a + 1b + 3c = 15`
- `a + b + 3c = 15`
- Substitute `b=4` and `c=2`: `a + 4 + 3(2) = 15`
- `a + 4 + 6 = 15`
- `a + 10 = 15`
- **`a = 5`**

---
### Final Solution

We have found the answer:
- `a = 5` (Apples cost 5 Euros)
- `b = 4` (Bananas cost 4 Euros)
- `c = 2` (Carrots cost 2 Euros)

**Solution Vector `x`:**
$$ \vec{x} = \begin{bmatrix} 5 \\ 4 \\ 2 \end{bmatrix} $$

**Additional Note (Advanced Process in Video):**
In the video, after finding `c=2`, the instructor performs an "upward elimination" process (part of Gauss-Jordan Elimination) to turn matrix `A` into the identity matrix, which directly yields the solution vector on the right-hand side. The process we did (back substitution) is conceptually equivalent and often faster for manual calculations. 

---
**Tags:** #mml-specialization #linear-algebra #systems-of-equations #gaussian-elimination #inverse-matrix