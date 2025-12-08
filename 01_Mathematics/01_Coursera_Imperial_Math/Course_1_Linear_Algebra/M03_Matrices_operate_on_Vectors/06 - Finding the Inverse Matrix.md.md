# 06: Finding the Inverse Matrix with Gaussian Elimination

**Chapter Goal:** To use the same method as [[05 - Solving Systems of Equations|Gaussian Elimination]], but with a broader goal: not just to solve a single problem, but to find the **[[Matriks Invers|Inverse Matrix]] ($A^{-1}$)** itself.

---

## 1. The Core Idea: Solving Many Problems at Once

- **Problem:** We want to find a matrix `B` (which will be $A^{-1}$) such that $A \cdot B = I$.

- **Analyzing the Equation:**
  $A \cdot [\text{col}_1(B), \text{col}_2(B), \text{col}_3(B)] = [\text{col}_1(I), \text{col}_2(I), \text{col}_3(I)]$

- **"Aha!" Moment:** This one large matrix equation can actually be broken down into three separate systems of linear equations:
  1.  $A \cdot (\text{col}_1(B)) = \text{col}_1(I) = \begin{bmatrix} 1 \\ 0 \\ 0 \end{bmatrix}$
  2.  $A \cdot (\text{col}_2(B)) = \text{col}_2(I) = \begin{bmatrix} 0 \\ 1 \\ 0 \end{bmatrix}$
  3.  $A \cdot (\text{col}_3(B)) = \text{col}_3(I) = \begin{bmatrix} 0 \\ 0 \\ 1 \end{bmatrix}$

  We could solve each of these systems with Gaussian Elimination to find each column of the inverse matrix `B`.

---

## 2. A Clever Trick: Solving in Parallel

- **Problem:** Performing Gaussian Elimination three times separately is tedious and repetitive, because the row operations performed on matrix `A` will be identical in all three cases.
- **Solution:** Let's solve all three systems **simultaneously** in one process.

- **Setup: The "Augmented Matrix"**
  1.  Write matrix `A` on the left side.
  2.  Draw a vertical line.
  3.  Write the **Identity Matrix `I`** on the right side.
  
  > **$[ A | I ]$**
  
  The right side (`I`) acts as a "container" for our three separate $\vec{v}$ vectors ($\begin{bmatrix}1\\0\\0\end{bmatrix}$, $\begin{bmatrix}0\\1\\0\end{bmatrix}$, $\begin{bmatrix}0\\0\\1\end{bmatrix}$) at the same time.

---

## 3. The Gauss-Jordan Elimination Process

- **Goal:** Transform the matrix `A` on the left side into the **Identity Matrix `I`**.
- **Method:** Use elementary row operations (adding/subtracting multiples of rows, multiplying rows by scalars).
  1.  **Forward Elimination:** Make all entries **below** the main diagonal zero (as before).
  2.  **Backward Elimination:** Make all entries **above** the main diagonal zero.
  3.  **Normalization:** Ensure all entries on the main diagonal are `1` (by dividing each row by its diagonal value if needed).

- **The Golden Rule:**
  > Every row operation you perform on the **left side** MUST also be applied to the **right side** simultaneously.

---

## 4. The Magical Final Result

After we have successfully transformed the left side into the Identity Matrix `I`, let's see what happened to our equation:
- We started with: $[ A | I ]$.
- After the operations, we get: $[ I | B ]$.

This algebraically means we have transformed the equation $A \cdot X = I$ into $I \cdot X = B$, which simplifies to $X = B$.

- **Conclusion:** The matrix that appears on the **right side** at the end of the process **is the Inverse Matrix $A^{-1}$** that we were looking for!
  > **$[ A | I ] \xrightarrow{\text{row operations}} [ I | A^{-1} ]$**

---

## 5. Key Message

- This method (called **Gauss-Jordan Elimination**) is a very systematic and computationally efficient way to find the inverse of a matrix.
- This is the algorithm often used inside a computer when you call a function like `inv(A)`.
- By finding $A^{-1}$, we now have a "super tool" to solve $A\vec{x} = \vec{v}$ for **any** $\vec{v}$ with a single multiplication: $\vec{x} = A^{-1}\vec{v}$.


---
## 6. Worked Example: Finding the Inverse of Matrix `A`

**Matrix `A`:**
$$ A = \begin{bmatrix} 1 & 1 & 3 \\ 1 & 2 & 4 \\ 1 & 1 & 2 \end{bmatrix} $$
**Goal:** Find $A^{-1}$ using the $[ A | I ] \rightarrow [ I | A^{-1} ]$ method.

---
### **Step 1: Setup the Augmented Matrix**

We write matrix `A` on the left and the Identity matrix `I` on the right.
$$ \left[ \begin{array}{ccc|ccc} 1 & 1 & 3 & 1 & 0 & 0 \\ 1 & 2 & 4 & 0 & 1 & 0 \\ 1 & 1 & 2 & 0 & 0 & 1 \end{array} \right] \begin{array}{l} R_1 \\ R_2 \\ R_3 \end{array} $$

---
### **Phase 1: Forward Elimination (Zeros Below the Diagonal)**

**Goal:** Make the entries at positions (2,1) and (3,1) zero.

**Operation 1: `R₂' = R₂ - R₁`**
- **Left Side:** `[1, 2, 4] - [1, 1, 3] = [0, 1, 1]`
- **Right Side:** `[0, 1, 0] - [1, 0, 0] = [-1, 1, 0]`

**Operation 2: `R₃' = R₃ - R₁`**
- **Left Side:** `[1, 1, 2] - [1, 1, 3] = [0, 0, -1]`
- **Right Side:** `[0, 0, 1] - [1, 0, 0] = [-1, 0, 1]`

**Result after Steps 1 & 2:**
$$ \left[ \begin{array}{ccc|ccc} 1 & 1 & 3 & 1 & 0 & 0 \\ 0 & 1 & 1 & -1 & 1 & 0 \\ 0 & 0 & -1 & -1 & 0 & 1 \end{array} \right] $$
Phase 1 is almost done. We just need to make the diagonal `1`.

**Operation 3: `R₃'' = R₃' * (-1)`** (Normalize Row 3)
- **Left Side:** `[0, 0, -1] * (-1) = [0, 0, 1]`
- **Right Side:** `[-1, 0, 1] * (-1) = [1, 0, -1]`

**Final Result of Phase 1 (Row Echelon Form):**
$$ \left[ \begin{array}{ccc|ccc} 1 & 1 & 3 & 1 & 0 & 0 \\ 0 & 1 & 1 & -1 & 1 & 0 \\ 0 & 0 & 1 & 1 & 0 & -1 \end{array} \right] $$

---
### **Phase 2: Backward Elimination (Zeros Above the Diagonal)**

Now we work from the bottom up.

**Goal:** Make the entries at (2,3) and (1,3) zero, using $R_3$.

**Operation 4: `R₂'' = R₂' - R₃''`**
- **Left Side:** `[0, 1, 1] - [0, 0, 1] = [0, 1, 0]`
- **Right Side:** `[-1, 1, 0] - [1, 0, -1] = [-2, 1, 1]`

**Operation 5: `R₁' = R₁ - 3 * R₃''`**
- **Left Side:** `[1, 1, 3] - 3*[0, 0, 1] = [1, 1, 3] - [0, 0, 3] = [1, 1, 0]`
- **Right Side:** `[1, 0, 0] - 3*[1, 0, -1] = [1, 0, 0] - [3, 0, -3] = [-2, 0, 3]`

**Intermediate Result:**
$$ \left[ \begin{array}{ccc|ccc} 1 & 1 & 0 & -2 & 0 & 3 \\ 0 & 1 & 0 & -2 & 1 & 1 \\ 0 & 0 & 1 & 1 & 0 & -1 \end{array} \right] $$
Almost there! Just one more entry to zero out.

**Goal:** Make the entry at position (1,2) zero, using $R_2$.

**Operation 6: `R₁'' = R₁' - R₂''`**
- **Left Side:** `[1, 1, 0] - [0, 1, 0] = [1, 0, 0]`
- **Right Side:** `[-2, 0, 3] - [-2, 1, 1] = [0, -1, 2]`

---
### **Final Result of the Process**

Let's assemble our final matrix:
$$ \left[ \begin{array}{ccc|ccc} 1 & 0 & 0 & 0 & -1 & 2 \\ 0 & 1 & 0 & -2 & 1 & 1 \\ 0 & 0 & 1 & 1 & 0 & -1 \end{array} \right] $$
The left side has become the Identity matrix `I`. Therefore, the right side is the inverse matrix we were looking for.

**Inverse Matrix $A^{-1}$:**
$$ A^{-1} = \begin{bmatrix} 0 & -1 & 2 \\ -2 & 1 & 1 \\ 1 & 0 & -1 \end{bmatrix} $$
This is the exact same result obtained in the video.

![[WhatsApp Image 2025-12-08 at 03.38.52_862474e6.jpg#center]]

---

>[!NOTE]
>Menurut aku untuk soal latihan corsera bagian ini, bagus apabila ditaruh di catatan

1) ![[Pasted image 20251208041521.png#center]]
2) ![[Pasted image 20251208045908.png#center]]
3) ![[Pasted image 20251208045945.png]]
	Langkah - langkahnya : ![[Pasted image 20251208051211.png#center]]

4) ![[Pasted image 20251208050539.png#center]]

5) ![[Pasted image 20251208050625.png#center]]
	langkah-langkah : ![[Pasted image 20251208051345.png#center]]

6) ![[Pasted image 20251208050830.png]]
	Langkah-langkahnya : ![[Pasted image 20251208051432.png#center]]

7) ![[Pasted image 20251208050956.png#center]]

---
**Tags:** #mml-specialization #linear-algebra #inverse-matrix #gauss-jordan-elimination