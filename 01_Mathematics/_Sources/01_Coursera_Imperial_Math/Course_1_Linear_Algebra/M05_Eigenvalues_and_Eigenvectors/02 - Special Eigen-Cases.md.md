# 02: Special Eigen-Cases

**Chapter Goal:** To test and strengthen our intuition about [[Eigenvector|eigenvectors]] by examining several special 2D transformation cases, and to briefly see how the concept extends to 3D.

---

## 1. Goal: Testing Intuition

We will look at three special 2D transformation cases to ensure our understanding of eigenvectors is robust. Then, we will glance at how this concept applies in 3D.

---

## 2. Special 2D Cases

### A. Uniform Scaling
- **Transformation:** Stretches or squishes space by the **same factor in all directions**. (Example: all vectors become 2x longer).
- **"Aha!" Moment:**
  - Every vector, after being uniformly scaled, will remain on its own path (span). Its direction does not change.
- **Conclusion:** For a uniform scaling, **ALL VECTORS** in the space are eigenvectors.
- **Eigenvalue:** They all share the same eigenvalue, which is the scaling factor itself.

### B. 180-Degree Rotation
- **Transformation:** Rotates the entire space by 180 degrees.
- **Observation:** Every vector $\vec{v}$ is mapped to $-\vec{v}$. The vector $-\vec{v}$ lies on the same span as $\vec{v}$, just in the opposite direction.
- **"Aha!" Moment:**
  - Since every vector remains on its own span, **ALL VECTORS** are also eigenvectors for a 180° rotation.
- **Eigenvalue:** Because every vector $\vec{v}$ becomes $-1 \cdot \vec{v}$, all of these eigenvectors share the same eigenvalue: **-1**.

### C. A Combination (Shear + Scaling)
- **Transformation:** A more complex transformation, combining multiple actions.
- **Observation:**
  - Horizontal vectors remain eigenvectors (just like in a pure shear).
  - Other vectors (vertical, diagonal) appear to have their directions changed.
- **"Aha!" Moment:**
  - Although it's not visually obvious, it turns out there is a **second, hidden eigenvector** in a "skewed" or diagonal direction.
- **Key Lesson:** Eigenvectors are not always easy to find by visual inspection alone, especially for complex transformations. We will need a more powerful mathematical method to find them.

---

## 3. Extension to 3D: Rotation

- **Transformation:** A rotation in 3D space.
- **Observation:** Vectors that are not on the axis of rotation will change their direction.
- **"Aha!" Moment (Same as 3Blue1Brown):**
  - Vectors that lie exactly on the **axis of rotation** will not change their direction. They simply spin in place.
- **Conclusion:** The eigenvector of a 3D rotation is its **axis of rotation**.
- **Eigenvalue:** It must be **1**, because a pure rotation does not change the length of any vector.

---

## 4. Final Message

- These examples show that eigenvectors can be everywhere (uniform scaling), only in one direction (shear), or not exist at all in the real plane (standard 2D rotation).
- Most importantly, they are **not always easy to see**. This motivates the need for a formal mathematical definition and a computational method to find eigenvectors and eigenvalues, which will be covered in the next video.

---
**Tags:** #mml-specialization #linear-algebra #eigenvectors #eigenvalues #special-cases #rotation #scaling