# 01: What are Eigenvalues and Eigenvectors?

**Chapter Goal:** To build the core geometric intuition for **[[Eigenvector|Eigenvectors]]** and **[[Eigenvalue|Eigenvalues]]**, understanding them as the "characteristic" properties of a [[Transformasi Linear|linear transformation]].

---

## 1. Background: The Meaning of the Word "Eigen"

- **"Eigen"** (German): Translates to **"characteristic"** or **"own"**.
- **The Eigenproblem:** Is the problem of finding the characteristic properties of a transformation.
- **Approach:** We will understand this geometrically first, before moving to the formal mathematics.

---

## 2. Core Idea: Special Vectors That Don't Change Direction

- **Linear Transformation:** An action that changes space (stretches, rotates, shears).
- **Observation:**
  - **Most vectors:** After being transformed, are "knocked off" their original path (span). Their direction changes.
  - **Some special vectors:** After being transformed, they remain on the **same path (span)** as before the transformation.

- **Definition of an Eigenvector:**
  > An **Eigenvector** is a non-zero vector whose fundamental **direction is unchanged** by a transformation. The transformation only stretches or squishes it.

---

## 3. Definition of an Eigenvalue

- **Eigenvalue:** Is the **scalar (number)** that acts as the **stretching/squishing factor** for an eigenvector.
- It's the "score" paired with each eigenvector.
  - If an eigenvector's length doesn't change, its eigenvalue is **1**.
  - If an eigenvector becomes twice as long, its eigenvalue is **2**.

- **Conclusion:**
  - **Eigenvector:** The "obedient" vector that stays on its path.
  - **Eigenvalue:** How much of a "push" that obedient vector receives.

---

## 4. Visual Examples

### A. Vertical Scaling
- **Transformation:** The y-direction is stretched by a factor of 2; the x-direction is unchanged.
- **Eigenvectors:**
  - **Horizontal vectors** (e.g., `[1,0]`): Their direction and length are unchanged.
    - **Eigenvalue = 1**.
  - **Vertical vectors** (e.g., `[0,1]`): Their direction is unchanged, but their length is doubled.
    - **Eigenvalue = 2**.
  - **Other vectors** (e.g., diagonals): Their direction changes (they become steeper). They are **not** eigenvectors.

### B. Pure Shear
- **Transformation:** The y-direction stays fixed, the x-direction is shifted proportionally to y. (In this video's example, x stays fixed, y is shifted).
- **Eigenvectors:**
  - **Only horizontal vectors**: Their direction and length are unchanged.
    - **Eigenvalue = 1**.
  - **Other vectors:** All other vectors (including vertical ones) are "pushed sideways" and their direction changes. They are **not** eigenvectors.

### C. Rotation
- **Transformation:** All vectors are rotated by the same angle.
- **Eigenvectors (in $\mathbb{R}^2$):** **NONE**.
- Every non-zero vector is "knocked off" its original span. There are no "magic paths" that stay fixed.

---

## 5. Key Message

- The concept of eigenvectors and eigenvalues applies to **any number of dimensions** (3D, 4D, etc.), not just 2D.
- Finding these eigenvector-eigenvalue pairs is the way to understand the **fundamental characteristics** of a transformation.

>[!Note]
>Contoh Soal dan Intuisinya

![[Pasted image 20251216132421.png#center]]

![[Pasted image 20251216132653.png#center]]

---
**Tags:** #mml-specialization #linear-algebra #eigenvectors #eigenvalues
