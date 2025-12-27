# 04: Matrix Multiplication as a Composition of Transformations

**Chapter Goal:** To understand that multiplying two matrices is the algebraic representation of a geometric action: **composing** or applying two [[Transformasi Linear|transformations]] one after the other.

---

## 1. Core Idea: Applying Transformations Sequentially

- **Problem:** What happens if we apply one transformation ($A_1$), and then apply another transformation ($A_2$) to the result?
- **Composition:** The action of "applying one transformation then another" is called a **Composition**.
- **Final Result:** The outcome of this entire process (from start to finish) is a **single, new transformation** that encapsulates both actions.

---

## 2. Two Ways of Thinking, One Answer

There are two ways to find the matrix of this combined transformation:

### Method #1: Geometric (Following the Basis Vectors)
1.  Start with the standard basis vectors $\hat{i}$ and $\hat{j}$.
2.  Apply the **first transformation ($A_1$)** to $\hat{i}$ and $\hat{j}$ to get $\hat{i}'$ and $\hat{j}'$.
3.  **NOW**, apply the **second transformation ($A_2$)** to the results from step 2 ($\hat{i}'$ and $\hat{j}'$) to get the final positions $\hat{i}''$ and $\hat{j}''$.
4.  The combined matrix ($A_2A_1$) is the matrix whose columns are the **FINAL** positions of the basis vectors, namely $\hat{i}''$ and $\hat{j}''$.

### Method #2: Algebraic (Matrix Multiplication)
1.  The combined matrix ($A_2A_1$) can be calculated directly by multiplying matrix $A_2$ by matrix $A_1$.
2.  **Reading Rule:** Just like function composition `g(f(x))`, we read it from **right to left**. $A_2A_1$ means "**apply $A_1$ first, then apply $A_2$**".
3.  **Calculation Rule:** "Row times column". To find the entry in row `i`, column `j` of the resulting matrix, you multiply row `i` of the left matrix with column `j` of the right matrix.

The video demonstrates that both of these methods (Geometric and Algebraic) will produce the **exact same final matrix**.

---

## 3. Important Properties of Matrix Multiplication

- **NOT Commutative:**
  > $A_1A_2 \neq A_2A_1$
- **Meaning:** The **order** of transformations matters GREATLY.
- **Visual Intuition:** "Rotating by 90° then reflecting vertically" gives a **DIFFERENT** final result than "Reflecting vertically first, then rotating by 90°". The video proves this visually and with matrix calculations.

- **Associative:**
  > $A_3(A_2A_1) = (A_3A_2)A_1$
- **Meaning:** The way we **group** the multiplications doesn't matter, as long as the order remains the same.
- **Visual Intuition:** "Apply $A_1$, then $A_2$, then $A_3$" will always be the same, regardless of whether you think of it as `(A₃(A₂A₁))` or `((A₃A₂)A₁)`. The sequence of actions remains `A₁ → A₂ → A₃`.

---

## 4. Key Message

- [[Perkalian Matriks]] is not just an arbitrary operation on numbers.
- It is the algebraic representation of a geometric action: **composing transformations in sequence.**
- Understanding this helps us see why its properties (like being non-commutative) make perfect sense.

---
## 5. Worked Example: Proving `FR ≠ RF`

Let's prove that matrix multiplication is not commutative with a concrete example.

### Initial Setup
Let's define two simple transformations:

- **Transformation `R` (90° Counter-Clockwise Rotation):**
  - $\hat{i}$ becomes `[0, 1]`
  - $\hat{j}$ becomes `[-1, 0]`
  - Matrix $R = \begin{bmatrix} 0 & -1 \\ 1 & 0 \end{bmatrix}$

- **Transformation `F` (Horizontal Flip / Mirror):**
  - $\hat{i}$ becomes `[1, 0]` (stays the same)
  - $\hat{j}$ becomes `[0, -1]` (flips down)
  - Matrix $F = \begin{bmatrix} 1 & 0 \\ 0 & -1 \end{bmatrix}$

We will investigate the difference between **`F * R`** (rotate first, then flip) and **`R * F`** (flip first, then rotate).

---
### **Case 1: `F * R` (Rotate First, then Flip)**

#### Method #1: Geometric (Following the Basis Vectors)
1.  **Start:** $\hat{i} = [1, 0]$, $\hat{j} = [0, 1]$.
2.  **Step 1 (Apply `R`):**
    - $\hat{i}$ is rotated 90° to become $\hat{i}' = [0, 1]$.
    - $\hat{j}$ is rotated 90° to become $\hat{j}' = [-1, 0]$.
3.  **Step 2 (Apply `F` to the RESULT):**
    - We flip $\hat{i}' = [0, 1]$ horizontally. This flips the y-component: $\hat{i}'' = [0, -1]$.
    - We flip $\hat{j}' = [-1, 0]$ horizontally. This flips the y-component, but it's 0, so it stays: $\hat{j}'' = [-1, 0]$.
4.  **Resulting Matrix:** The columns are $\hat{i}''$ and $\hat{j}''$.
    $$ F R = \begin{bmatrix} 0 & -1 \\ -1 & 0 \end{bmatrix} $$

#### Method #2: Algebraic (Matrix Multiplication)
$$ F R = \begin{bmatrix} 1 & 0 \\ 0 & -1 \end{bmatrix} \begin{bmatrix} 0 & -1 \\ 1 & 0 \end{bmatrix} $$
- **Entry (1,1):** (Row 1 of F) $\cdot$ (Col 1 of R) = $[1,0] \cdot [0,1] = (1 \cdot 0) + (0 \cdot 1) = 0$.
- **Entry (1,2):** (Row 1 of F) $\cdot$ (Col 2 of R) = $[1,0] \cdot [-1,0] = (1 \cdot -1) + (0 \cdot 0) = -1$.
- **Entry (2,1):** (Row 2 of F) $\cdot$ (Col 1 of R) = $[0,-1] \cdot [0,1] = (0 \cdot 0) + (-1 \cdot 1) = -1$.
- **Entry (2,2):** (Row 2 of F) $\cdot$ (Col 2 of R) = $[0,-1] \cdot [-1,0] = (0 \cdot -1) + (-1 \cdot 0) = 0$.
- **Resulting Matrix:** $\begin{bmatrix} 0 & -1 \\ -1 & 0 \end{bmatrix}$.

Both methods give the same result! ✔️

---
### **Case 2: `R * F` (Flip First, then Rotate)**

#### Method #1: Geometric (Following the Basis Vectors)
1.  **Start:** $\hat{i} = [1, 0]$, $\hat{j} = [0, 1]$.
2.  **Step 1 (Apply `F`):**
    - $\hat{i}$ is flipped to become $\hat{i}' = [1, 0]$.
    - $\hat{j}$ is flipped to become $\hat{j}' = [0, -1]$.
3.  **Step 2 (Apply `R` to the RESULT):**
    - We rotate $\hat{i}' = [1, 0]$ by 90°. It moves to the y-axis: $\hat{i}'' = [0, 1]$.
    - We rotate $\hat{j}' = [0, -1]$ by 90°. It moves to the positive x-axis: $\hat{j}'' = [1, 0]$.
4.  **Resulting Matrix:** The columns are $\hat{i}''$ and $\hat{j}''$.
    $$ R F = \begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix} $$

#### Method #2: Algebraic (Matrix Multiplication)
$$ R F = \begin{bmatrix} 0 & -1 \\ 1 & 0 \end{bmatrix} \begin{bmatrix} 1 & 0 \\ 0 & -1 \end{bmatrix} $$
- **Entry (1,1):** $[0,-1] \cdot [1,0] = 0$.
- **Entry (1,2):** $[0,-1] \cdot [0,-1] = 1$.
- **Entry (2,1):** $[1,0] \cdot [1,0] = 1$.
- **Entry (2,2):** $[1,0] \cdot [0,-1] = 0$.
- **Resulting Matrix:** $\begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix}$.

Both methods give the same result! ✔️

---
### **Conclusion**

Compare our two final results:
- **`F * R`** = $\begin{bmatrix} 0 & -1 \\ -1 & 0 \end{bmatrix}$ (This is a reflection across the line `y=-x`).
- **`R * F`** = $\begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix}$ (This is a reflection across the line `y=x`).

The results are completely different. This proves concretely that the order of matrix multiplication matters: **`FR ≠ RF`**.


---
## 6. Practice Problems

### Problem 1: Standard Multiplication
Calculate $A \cdot B$ where:
$$ A = \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}, \quad B = \begin{bmatrix} 5 & 6 \\ 7 & 8 \end{bmatrix} $$
**Solution:**
$$ A \cdot B = \begin{bmatrix} ? & ? \\ ? & ? \end{bmatrix} $$
- **(1,1):** $[1,2] \cdot [5,7] = (1 \cdot 5) + (2 \cdot 7) = 5 + 14 = 19$
- **(1,2):** $[1,2] \cdot [6,8] = (1 \cdot 6) + (2 \cdot 8) = 6 + 16 = 22$
- **(2,1):** $[3,4] \cdot [5,7] = (3 \cdot 5) + (4 \cdot 7) = 15 + 28 = 43$
- **(2,2):** $[3,4] \cdot [6,8] = (3 \cdot 6) + (4 \cdot 8) = 18 + 32 = 50$

**Answer:**
$$ A \cdot B = \begin{bmatrix} 19 & 22 \\ 43 & 50 \end{bmatrix} $$

---
### Problem 2: Composition (Scaling then Shear)
Calculate $S \cdot T$ where `S` is a Shear and `T` is a Scaling transformation.
$$ S = \begin{bmatrix} 1 & 1 \\ 0 & 1 \end{bmatrix}, \quad T = \begin{bmatrix} 2 & 0 \\ 0 & 3 \end{bmatrix} $$
*Meaning: Apply Scaling first, then apply Shear.*

**Solution:**
$$ S \cdot T = \begin{bmatrix} ? & ? \\ ? & ? \end{bmatrix} $$
- **(1,1):** $[1,1] \cdot [2,0] = (1 \cdot 2) + (1 \cdot 0) = 2$
- **(1,2):** $[1,1] \cdot [0,3] = (1 \cdot 0) + (1 \cdot 3) = 3$
- **(2,1):** $[0,1] \cdot [2,0] = (0 \cdot 2) + (1 \cdot 0) = 0$
- **(2,2):** $[0,1] \cdot [0,3] = (0 \cdot 0) + (1 \cdot 3) = 3$

**Answer:**
$$ S \cdot T = \begin{bmatrix} 2 & 3 \\ 0 & 3 \end{bmatrix} $$

---
### Problem 3 (Challenge): Reverse Order
Calculate $T \cdot S$ from the previous problem. Is the result the same?
$$ T \cdot S = \begin{bmatrix} 2 & 0 \\ 0 & 3 \end{bmatrix} \begin{bmatrix} 1 & 1 \\ 0 & 1 \end{bmatrix} $$
**Solution:**
$$ T \cdot S = \begin{bmatrix} ? & ? \\ ? & ? \end{bmatrix} $$
- **(1,1):** $[2,0] \cdot [1,0] = (2 \cdot 1) + (0 \cdot 0) = 2$
- **(1,2):** $[2,0] \cdot [1,1] = (2 \cdot 1) + (0 \cdot 1) = 2$
- **(2,1):** $[0,3] \cdot [1,0] = (0 \cdot 1) + (3 \cdot 0) = 0$
- **(2,2):** $[0,3] \cdot [1,1] = (0 \cdot 1) + (3 \cdot 1) = 3$

**Answer:**
$$ T \cdot S = \begin{bmatrix} 2 & 2 \\ 0 & 3 \end{bmatrix} $$
**Conclusion:** $S \cdot T \neq T \cdot S$. This proves again that order matters.

---
### Problem 4 (Non-Square Matrices)
Calculate $M \cdot N$ where `M` is a 2x3 matrix and `N` is a 3x2 matrix.
$$ M = \begin{bmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \end{bmatrix}, \quad N = \begin{bmatrix} 7 & 8 \\ 9 & 1 \\ 2 & 3 \end{bmatrix} $$
*(The result will be a 2x2 matrix)*

**Solution:**
$$ M \cdot N = \begin{bmatrix} ? & ? \\ ? & ? \end{bmatrix} $$
- **(1,1):** $[1,2,3] \cdot [7,9,2] = (1\cdot7) + (2\cdot9) + (3\cdot2) = 7 + 18 + 6 = 31$
- **(1,2):** $[1,2,3] \cdot [8,1,3] = (1\cdot8) + (2\cdot1) + (3\cdot3) = 8 + 2 + 9 = 19$
- **(2,1):** $[4,5,6] \cdot [7,9,2] = (4\cdot7) + (5\cdot9) + (6\cdot2) = 28 + 45 + 12 = 85$
- **(2,2):** $[4,5,6] \cdot [8,1,3] = (4\cdot8) + (5\cdot1) + (6\cdot3) = 32 + 5 + 18 = 55$

**Answer:**
$$ M \cdot N = \begin{bmatrix} 31 & 19 \\ 85 & 55 \end{bmatrix} $$

![[Pasted image 20251206102940.png#center]]


---
**Tags:** #mml-special-ization #linear-algebra #matrix-multiplication #compositions #transformations
