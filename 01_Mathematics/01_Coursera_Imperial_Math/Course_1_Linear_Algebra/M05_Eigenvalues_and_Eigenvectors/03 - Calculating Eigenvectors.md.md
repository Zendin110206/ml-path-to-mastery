# 03: Calculating Eigenvectors

**Chapter Goal:** To translate the geometric intuition of an [[01 - What are Eigenvalues and Eigenvectors|eigenvector]] into a formal algebraic procedure for finding both eigenvalues and eigenvectors.

---

## 1. Translating Intuition into Algebra

- **Geometric Intuition:** An eigenvector $\vec{x}$ is a vector that, when transformed by `A`, stays on its own span, and is only scaled by a factor `λ`.
- **Formal Equation:** This idea can be written directly as:
  > $$ A\vec{x} = \lambda\vec{x} $$

- **Anatomy of the Equation:**
  - `A`: The `n x n` transformation matrix.
  - $\vec{x}$: The `n`-dimensional eigenvector we want to find.
  - `λ`: The eigenvalue (a single number/scalar) paired with $\vec{x}$.
- Our task is to find the pairs of $\vec{x}$ (non-zero) and `λ` that satisfy this equation.

---

## 2. The Algebraic "Trick" to Simplify the Problem

- **Problem:** The equation $A\vec{x} = \lambda\vec{x}$ is difficult to solve directly because it involves matrix multiplication on the left and scalar multiplication on the right.
- **Solution:** We rearrange the equation so that all terms are on one side and we can factor out $\vec{x}$.
  1.  Rewrite $\lambda\vec{x}$ as matrix multiplication: $\lambda\vec{x} = (\lambda I)\vec{x}$, where `I` is the identity matrix.
  2.  Move to the left side: $A\vec{x} - (\lambda I)\vec{x} = \vec{0}$.
  3.  Factor out $\vec{x}$:
      > $$ (A - \lambda I)\vec{x} = \vec{0} $$

---

## 3. The "Aha!" Moment: The Connection to the Determinant

- The equation $(A - \lambda I)\vec{x} = \vec{0}$ is a system of linear equations.
- We are looking for a **non-zero** solution for $\vec{x}$ (a non-trivial solution).
- **Key Condition:** A system of equations $M\vec{x} = \vec{0}$ only has a non-trivial solution if and only if the matrix `M` "squishes" space into a lower dimension.
- **The "Squish" Test:** A matrix squishes space if and only if its **determinant is zero**.

- **Conclusion:** To find a non-zero eigenvector $\vec{x}$, the matrix $(A - \lambda I)$ **must have a determinant of zero**.
  > $$ \det(A - \lambda I) = 0 $$

---

## 4. The "Recipe" for Hunting Eigenvalues and Eigenvectors

This gives us a two-step recipe:

### Step 1: Hunt for Eigenvalues (`λ`)
1.  Form the matrix $A - \lambda I$.
2.  Calculate its determinant: $\det(A - \lambda I)$. The result will be a polynomial in `λ` (called the **Characteristic Polynomial**).
3.  Solve the equation $\det(A - \lambda I) = 0$ to find all possible values of `λ`.

### Step 2: Hunt for Eigenvectors (`x`)
1.  Take each `λ` value you found, one by one.
2.  Plug that value of `λ` back into the equation $(A - \lambda I)\vec{x} = \vec{0}$.
3.  Solve this system of linear equations to find the vector $\vec{x}$ (or set of vectors) that is the solution. This is the **[[07 - Inverse Matrices, Column Space and Null Space#4. Null Space (Kernel) - "Pasukan yang Lenyap ke Titik Nol"|Null Space]]** of the matrix $A - \lambda I$.

---

## 5. Practical Examples

### A. Vertical Scaling: $A = \begin{bmatrix} 1 & 0 \\ 0 & 2 \end{bmatrix}$
- **Step 1 (Find `λ`):**
  $\det\left(\begin{bmatrix} 1-\lambda & 0 \\ 0 & 2-\lambda \end{bmatrix}\right) = (1-\lambda)(2-\lambda) = 0$.
  The solutions are $\lambda_1 = 1$ and $\lambda_2 = 2$.

- **Step 2 (Find `x` for `λ=1`):**
  $\begin{bmatrix} 0 & 0 \\ 0 & 1 \end{bmatrix} \begin{bmatrix} x_1 \\ x_2 \end{bmatrix} = \begin{bmatrix} 0 \\ 0 \end{bmatrix}$. This results in the equation $x_2=0$. The eigenvectors are all vectors on the x-axis, of the form `[t, 0]`.

- **Step 2 (Find `x` for `λ=2`):**
  $\begin{bmatrix} -1 & 0 \\ 0 & 0 \end{bmatrix} \begin{bmatrix} x_1 \\ x_2 \end{bmatrix} = \begin{bmatrix} 0 \\ 0 \end{bmatrix}$. This results in the equation $-x_1=0$. The eigenvectors are all vectors on the y-axis, of the form `[0, t]`.

### B. 90° Rotation: $A = \begin{bmatrix} 0 & -1 \\ 1 & 0 \end{bmatrix}$
- **Step 1 (Find `λ`):**
  $\det\left(\begin{bmatrix} -\lambda & -1 \\ 1 & -\lambda \end{bmatrix}\right) = (-\lambda)(-\lambda) - (-1)(1) = \lambda^2 + 1 = 0$.
- The equation $\lambda^2 + 1 = 0$ has **no real number solutions**.
- **Conclusion:** There are no real eigenvalues, which means there are no real eigenvectors. This matches our visual intuition.

---

## 6. Final Message
- Although this process seems long, it is a systematic method to find the "axes of action" for any transformation.
- In the real world, for large matrices, computers use iterative numerical methods, not solving polynomials.
- The most important takeaway is understanding the concept behind the method ($\det(A - \lambda I) = 0$), not becoming an expert in manual calculation.


---
## 7. Worked Example: Hunting for the Eigenvectors

**Context:** We have already "hunted" for the eigenvalues. For the matrix $A = \begin{bmatrix} 1 & 0 \\ 0 & 2 \end{bmatrix}$, we found two "magic" values: $\lambda_1 = 1$ and $\lambda_2 = 2$.

**Current Goal:** For each `λ`, we must find the corresponding eigenvector `x`. We will be finding the "special line" (the Null Space) of the matrix $A - \lambda I$.

---
### **Hunt #1: The Eigenvector for `λ = 1`**

1.  **The "Recipe" to Use:**
    $(A - \lambda I)\vec{x} = \vec{0}$. We will plug in $\lambda = 1$.

2.  **Prepare the "Squish" Matrix:**
    $A - 1I = \begin{bmatrix} 1-1 & 0 \\ 0 & 2-1 \end{bmatrix} = \begin{bmatrix} 0 & 0 \\ 0 & 1 \end{bmatrix}$

3.  **Write the System of Equations:**
    We are looking for a vector $\vec{x} = \begin{bmatrix} x_1 \\ x_2 \end{bmatrix}$ that satisfies:
    $$ \begin{bmatrix} 0 & 0 \\ 0 & 1 \end{bmatrix} \begin{bmatrix} x_1 \\ x_2 \end{bmatrix} = \begin{bmatrix} 0 \\ 0 \end{bmatrix} $$

4.  **Translate to Regular Algebra (Row-times-Column):**
    - **Row 1:** $(0 \cdot x_1) + (0 \cdot x_2) = 0 \implies 0 = 0$. This equation is true, but gives us no information.
    - **Row 2:** $(0 \cdot x_1) + (1 \cdot x_2) = 0 \implies x_2 = 0$. **This is the key piece of information!**

5.  **Interpret the Result ($x_2 = 0$):**
    - This system of equations gives us one condition: "The second component ($x_2$) of the eigenvector must be zero."
    - What about $x_1$? The equations say nothing about $x_1$. This means $x_1$ is **free** to be any number.

6.  **Write the General Solution:**
    - The eigenvector $\vec{x}$ must be of the form $\begin{bmatrix} x_1 \\ 0 \end{bmatrix}$.
    - To show that $x_1$ can be any number, we replace it with a parameter, typically `t`.
    $$ \vec{x} = \begin{bmatrix} t \\ 0 \end{bmatrix} = t \begin{bmatrix} 1 \\ 0 \end{bmatrix} $$
    This is a mathematical description of the entire x-axis.
    - **Examples:** If t=1, $\vec{x}=[1,0]$. If t=5, $\vec{x}=[5,0]$. If t=-100, $\vec{x}=[-100,0]$. All are valid eigenvectors.

- **Conclusion of Hunt #1:**
  The eigenvectors paired with $\lambda=1$ are all vectors that lie on the x-axis, which can be represented as `[t, 0]`.

---
### **Hunt #2: The Eigenvector for `λ = 2`**

We repeat the exact same process.

1.  **The "Recipe" to Use:**
    $(A - \lambda I)\vec{x} = \vec{0}$ with $\lambda = 2$.

2.  **Prepare the "Squish" Matrix:**
    $A - 2I = \begin{bmatrix} 1-2 & 0 \\ 0 & 2-2 \end{bmatrix} = \begin{bmatrix} -1 & 0 \\ 0 & 0 \end{bmatrix}$

3.  **Write the System of Equations:**
    $$ \begin{bmatrix} -1 & 0 \\ 0 & 0 \end{bmatrix} \begin{bmatrix} x_1 \\ x_2 \end{bmatrix} = \begin{bmatrix} 0 \\ 0 \end{bmatrix} $$

4.  **Translate to Regular Algebra:**
    - **Row 1:** $(-1 \cdot x_1) + (0 \cdot x_2) = 0 \implies -x_1 = 0 \implies x_1 = 0$. **This is the key info!**
    - **Row 2:** $(0 \cdot x_1) + (0 \cdot x_2) = 0 \implies 0 = 0$. No new information.

5.  **Interpret the Result ($x_1 = 0$):**
    - The condition is: "The first component ($x_1$) of the eigenvector must be zero."
    - $x_2$ is free to be any number.

6.  **Write the General Solution:**
    - The eigenvector $\vec{x}$ must be of the form $\begin{bmatrix} 0 \\ x_2 \end{bmatrix}$.
    - We replace $x_2$ with the parameter `t`.
    $$ \vec{x} = \begin{bmatrix} 0 \\ t \end{bmatrix} = t \begin{bmatrix} 0 \\ 1 \end{bmatrix} $$
    This is a mathematical description of the entire y-axis.

- **Conclusion of Hunt #2:**
  The eigenvectors paired with $\lambda=2$ are all vectors that lie on the y-axis, which can be represented as `[0, t]`.

---
**Answering Your Confusion:**
- The terms `0*x₂` and `-1*x₁` are simply the results of the "row-times-column" multiplication shown in the video and worked out above.
- The notations `[t, 0]` and `[0, t]` are not single specific vectors. They are a representation of a whole "family" or "line" of vectors. The free parameter `t` tells you that any scalar multiple of the basis vector `[1,0]` (for the first case) or `[0,1]` (for the second case) is also a valid eigenvector.

---
**Tags:** #mml-specialization #linear-algebra #eigenvectors #eigenvalues #characteristic-polynomial