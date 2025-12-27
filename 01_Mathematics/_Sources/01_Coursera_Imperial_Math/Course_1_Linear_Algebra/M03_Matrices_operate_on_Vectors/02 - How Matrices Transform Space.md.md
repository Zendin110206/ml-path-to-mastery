
# 02: How Matrices Transform Space

**Chapter Goal:** To reinforce the core intuition from 3Blue1Brown that a [[Matriks|matrix]] is fundamentally a **linear transformation** of space, and to connect the visual properties of this transformation with its formal algebraic rules.

---

## 1. Core Idea: A Matrix is a Transformation Machine

- **Reminder:** The **columns** of a matrix tell us the final destination of the [[Basis]] vectors ($\hat{i}, \hat{j}$) after the transformation.
- **Implication:** Since every vector in the space can be written as a [[Kombinasi Linear]] of the basis vectors ($\vec{v} = x\hat{i} + y\hat{j}$), then...
  > ...the final position of $\vec{v}$ after the transformation ($\vec{v}_{new}$) will be the **same linear combination** of the **new basis vectors** ($\vec{v}_{new} = x \cdot \hat{i}_{new} + y \cdot \hat{j}_{new}$).

---

## 2. Visual Properties of a Matrix Transformation (Linearity)

- **"Aha!" Moment (from 3Blue1Brown):** The rule above has very specific visual consequences for what a matrix transformation can do to space.
  - Grid lines remain **straight** (nothing gets curved).
  - Grid lines remain **parallel**.
  - The **origin stays fixed**.

- **What CAN happen?** Space can be **stretched**, **squished**, **rotated**, or **sheared**.
- **What CANNOT happen?** Space cannot be "bent" or **warped**.

This is the essence of the word **"Linear"** in Linear Algebra.

---

## 3. Algebraic Properties of a Matrix Transformation (Linearity)

The visual properties above can also be described by two formal algebraic rules (this is the universal definition of "linear", as seen in 3b1b Ch. 16).

If `A` is a matrix and $\vec{r}, \vec{s}$ are vectors:

- **Scaling Rule:**
  > $A(n\vec{r}) = n(A\vec{r})$
- **Meaning:** "Stretching a vector by `n` times, then transforming it" is the **SAME AS** "Transforming the vector first, then stretching the result by `n` times".

- **Addition Rule (Additivity):**
  > $A(\vec{r} + \vec{s}) = A\vec{r} + A\vec{s}$
- **Meaning:** "Adding two vectors first, then transforming the result" is the **SAME AS** "Transforming each vector separately, then adding the results".

- **Conclusion:** Matrix transformations "respect" the basic vector operations (addition and scalar multiplication).

---

## 4. Verification with an Example

The video verifies the ideas above with an example.

- **Problem:** Calculate $A\vec{v}$ where $A = \begin{bmatrix} 2 & 3 \\ 10 & 1 \end{bmatrix}$ and $\vec{v} = \begin{bmatrix} 3 \\ 2 \end{bmatrix}$.

### Method #1: Mechanical (The "School" Way)
- Row 1 * Column: $(2 \cdot 3) + (3 \cdot 2) = 6 + 6 = 12$.
- Row 2 * Column: $(10 \cdot 3) + (1 \cdot 2) = 30 + 2 = 32$.
- **Result:** $\begin{bmatrix} 12 \\ 32 \end{bmatrix}$.

### Method #2: Intuitive (The 3Blue1Brown / Geometric Way)
1.  **Deconstruct `v`** into a linear combination of basis vectors:
    $\vec{v} = 3\hat{i} + 2\hat{j}$.
2.  **Apply the transformation `A`** to the whole expression:
    $A(3\hat{i} + 2\hat{j})$.
3.  **Use the properties of linearity:**
    $3(A\hat{i}) + 2(A\hat{j})$.
4.  We know $A\hat{i}$ is the first column ($\begin{bmatrix} 2 \\ 10 \end{bmatrix}$) and $A\hat{j}$ is the second column ($\begin{bmatrix} 3 \\ 1 \end{bmatrix}$).
5.  **Substitute and calculate:**
    $3 \begin{bmatrix} 2 \\ 10 \end{bmatrix} + 2 \begin{bmatrix} 3 \\ 1 \end{bmatrix} = \begin{bmatrix} 6 \\ 30 \end{bmatrix} + \begin{bmatrix} 6 \\ 2 \end{bmatrix} = \begin{bmatrix} 12 \\ 32 \end{bmatrix}$.

- **The results are the same!**

**Instructor's Key Message:**
Method #2, while it may seem longer, provides a much deeper understanding. It proves that we don't have to just memorize the "row-times-column" mechanic. We can always think of matrix-vector multiplication as **"finding the linear combination of the matrix columns (the new basis vectors)"**.

---
**Tags:** #mml-specialization #linear-algebra #matrices #transformations #linearity