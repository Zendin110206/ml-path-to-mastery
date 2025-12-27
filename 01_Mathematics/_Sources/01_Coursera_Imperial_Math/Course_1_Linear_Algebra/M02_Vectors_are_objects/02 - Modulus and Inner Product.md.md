# 02: Modulus & Inner Product

**Chapter Goal:** To formally define and understand two essential vector concepts: the **length** of a vector (modulus) and the computational definition of the **Dot Product** (inner product).

---

## 1. Background & Goal

We already know the two basic vector operations: [[Vector Addition]] and [[Scalar Multiplication]].

Now, we will define two other essential concepts:
- The **length/size** of a vector (also called **modulus** or **magnitude**).
- The **Dot Product** (also called **inner/scalar product**), a way of "multiplying" two vectors that results in a single number (a scalar).

implementation : 
![[Pasted image 20251203182616.png]]


---

## 2. Calculating Length (Modulus)

- **Core Idea:** A geometric vector has a length and a direction, regardless of any coordinate system.

- **How to Calculate (in an Orthogonal Coordinate System):**
  - If a vector `r` in 2D is written as `a*î + b*ĵ` (where `î` and `ĵ` are orthogonal unit basis vectors), we can use the **Pythagorean Theorem**.
  - `r` becomes the hypotenuse of a right-angled triangle with sides `a` and `b`.

- **Length (Modulus) Formula:**
  > **`|r| = √(a² + b²)`**
  (The notation `|r|` or `||r||` means "the length of r")

- **Generalization:** This definition is extended to any `n`-dimensional space, even if the "axes" are not spatial dimensions.
  > The size of a vector `v` is defined as the square root of the sum of the squares of its components.
  > **`|v| = √(v₁² + v₂² + ... + vₙ²)`**

---

## 3. The Definition of the Dot Product (Inner Product)

- **How to Calculate (Computational Definition):**
  - Take two vectors `r = [r₁, r₂]` and `s = [s₁, s₂]`.
  - Their dot product, **`r · s`**, is calculated by:
    1.  Multiplying the corresponding components (`r₁*s₁`, `r₂*s₂`).
    2.  Summing up all those products.

- **Formula:**
  > **`r · s = r₁s₁ + r₂s₂ + ... + rₙsₙ`**

- **Key Point:** The result of a dot product is a single **NUMBER (scalar)**, not a new vector.

---

## 4. Key Properties of the Dot Product

- **Commutative** (Order doesn't matter):
  `r · s = s · r`
  - **Why?** Because the multiplication of regular numbers is commutative (`r₁s₁ = s₁r₁`).

- **Distributive** over Addition:
  `r · (s + t) = (r · s) + (r · t)`
  - **Why?** This can be proven by expanding the algebra. It means we can "distribute" the dot product into a sum.

- **Associative** with Scalar Multiplication:
  `r · (a*s) = a * (r · s)`
  - **Why?** Because `a` (a scalar) can be factored out of each term in the sum.

---

## 5. The Magical Connection: Dot Product and Length

- **What happens if a vector is dotted with itself?**
  `r · r = r₁*r₁ + r₂*r₂ + ... = r₁² + r₂² + ...`

- **The "Aha!" Moment:** This expression `r₁² + r₂² + ...` is exactly the **square of the length** of `r`!
  > **`r · r = |r|²`**

- **Practical Conclusion:**
  > The length of a vector can be calculated by dotting the vector with itself and then taking the square root.
  > **`|r| = √(r · r)`**

This is a very neat and fundamental relationship.

---
**Tags:** #mml-specialization #linear-algebra #vectors #modulus #inner-product