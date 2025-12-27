# 03: Types of Matrix Transformations

**Chapter Goal:** To build a visual catalog of common 2x2 matrices and their corresponding geometric effects on space. This solidifies the idea of a [[Matriks|matrix]] as a [[Transformasi Linear|transformation]].

---

## 1. Basic Transformations

### Identity Matrix (`I`)
- **Form:** $\begin{bmatrix} 1 & 0 \\ 0 & 1 \end{bmatrix}$ (The columns are the standard basis vectors).
- **Effect:** Does nothing. $\hat{i}$ stays at `[1,0]`, $\hat{j}$ stays at `[0,1]`. For any vector $\vec{v}$, $I\vec{v} = \vec{v}$.
- It's called the "Identity" because it preserves the identity of every vector.

### Scaling
- **Form:** A diagonal matrix, $\begin{bmatrix} a & 0 \\ 0 & d \end{bmatrix}$.
- **Effect:**
  - Stretches or squishes space in the x-direction by a factor of `a`.
  - Stretches or squishes space in the y-direction by a factor of `d`.
- The unit square transforms into a rectangle.
- If `a` or `d` is a fraction (between 0 and 1), space is squished.

---

## 2. "Flipping" Transformations

### Axis Flip (Reflection over an axis)
- **Form:** A diagonal matrix with a negative value, e.g., $\begin{bmatrix} -1 & 0 \\ 0 & 2 \end{bmatrix}$.
- **Effect:** $\hat{i}$, which was at `[1,0]`, is now "flipped" to `[-1,0]`.
- **Consequence:** This changes the **orientation** or "handedness" of the coordinate system.

### Inversion
- **Form:** $\begin{bmatrix} -1 & 0 \\ 0 & -1 \end{bmatrix}$ (which is equal to `-I`).
- **Effect:** Flips both axes. Every vector `[x,y]` becomes `[-x,-y]`. This is equivalent to a **180-degree rotation**.

### General Reflections (Mirrors)
- $\begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix}$: Reflects space across the line `y=x`. ($\hat{i}$ and $\hat{j}$ swap places).
- $\begin{bmatrix} 0 & -1 \\ -1 & 0 \end{bmatrix}$: Reflects space across the line `y=-x`.
- $\begin{bmatrix} -1 & 0 \\ 0 & 1 \end{bmatrix}$: A vertical mirror (reflects across the y-axis).
- $\begin{bmatrix} 1 & 0 \\ 0 & -1 \end{bmatrix}$: A horizontal mirror (reflects across the x-axis).

---

## 3. "Slanting" Transformations

### Shear
- **Form:** $\begin{bmatrix} 1 & 1 \\ 0 & 1 \end{bmatrix}$
- **Effect:**
  - The $\hat{i}$ axis stays in place ($\hat{i}_{new} = [1,0]$).
  - The $\hat{j}$ axis is "pushed" or "sheared" to a new position ($\hat{j}_{new} = [1,1]$).
- **Visualization:** The unit square transforms into a parallelogram.

---

## 4. "Turning" Transformations

### Rotation
- **Example: 90° Counter-Clockwise Rotation**
  - $\hat{i}$ moves to the position `[0, 1]`.
  - $\hat{j}$ moves to the position `[-1, 0]`.
  - **Matrix Form:** $\begin{bmatrix} 0 & -1 \\ 1 & 0 \end{bmatrix}$.

- **General Formula for Rotation by an angle `θ`:**
  $$ R(\theta) = \begin{bmatrix} \cos(\theta) & -\sin(\theta) \\ \sin(\theta) & \cos(\theta) \end{bmatrix} $$
  *(Note: There might be slight notational/convention differences in the video, but this is the standard form for counter-clockwise rotation).*

---

## 5. Key Message

- All complex transformations can essentially be seen as a **combination** of these basic transformations (stretching, rotating, reflecting, shearing).
- In data science, these transformations are very useful, for example, to normalize facial data so that all faces are oriented in the same direction before processing.
- The next step is to think about what happens when we apply one transformation, and then follow it with another.

---
**Tags:** #mml-specialization #linear-algebra #matrices #transformations #scaling #rotation #shear #reflection