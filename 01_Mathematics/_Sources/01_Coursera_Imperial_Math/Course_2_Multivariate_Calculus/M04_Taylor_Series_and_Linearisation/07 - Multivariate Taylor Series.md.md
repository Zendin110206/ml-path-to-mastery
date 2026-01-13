# 07: The Multivariate Taylor Series

**Chapter Goal:** To "level up" the [[Ch 11 - Taylor Series|Taylor Series]] from the one-dimensional version into its more general and powerful multivariate form, bringing together all the concepts we've learned in this course.

---

## 1. Background: From 1D to Multi-Dimensional Approximations

- **Recap of 1D Taylor Series (using `Δx` notation):**
  We can approximate a function `f` at a point `x + Δx` using information from point `x`:
  $$ f(x + \Delta x) \approx f(x) + f'(x)\Delta x + \frac{f''(x)}{2!}(\Delta x)^2 + \dots $$
- **The New Problem:** How do we do this for a function with multiple inputs, like $f(x, y)$?
- **Goal:** To approximate the function at a nearby point $(x+\Delta x, y+\Delta y)$.
- **The Visual:**
  - A 1D function is a **curve**. Its Taylor Series approximation is another (polynomial) **curve**.
  - A 2D function is a **surface**. Its Taylor Series approximation will be another (polynomial) **surface**.

---

## 2. The Layers of Multivariate Approximation (Visualized)

Let's look at the 2D Gaussian function, $f(x, y) = e^{-(x^2+y^2)}$, as our example "landscape".

![[Pasted image 20260105015120.png#center]]
### **Zeroth-Order Approximation ($g_0$)**
- **Formula:** $g_0(x+\Delta x, y+\Delta y) = f(x, y)$
- **Idea:** Match only the **height** of the function at the point of expansion.
- **Visual:** A **flat, horizontal plane**.
  - *As seen in the screenshot,* if we approximate at the peak, it's a flat plane at the maximum height. If we approximate on the side of the hill, it's a flat plane at that specific height.
  
![[Pasted image 20260105015127.png#center]]

### **First-Order Approximation ($g_1$) - Linearisation**
- **Formula:** Incorporates the gradient information.
- **Idea:** Match the **height AND the slope (gradient)** of the function at the point.
- **Visual:** A **slanted, flat plane** that is tangent to the surface at that point.
  - *As seen in the screenshot,* this slanted plane is a much better approximation near the point than the horizontal one.

![[Pasted image 20260105015149.png#center]]

### **Second-Order Approximation ($g_2$)**
- **Formula:** Incorporates the Hessian information.
- **Idea:** Match the height, slope, **AND the curvature** of the function at the point.
- **Visual:** A **curved, parabolic surface** that "hugs" the original function.
  - *As seen in the screenshot,* this curved surface (like a saddle or a bowl) is an even better approximation, as it captures the local shape of the landscape much more accurately.

![[Pasted image 20260105015203.png#center]]

---

## 3. The Formula: Unifying Calculus and Linear Algebra

Let's look at the terms of the Multivariate Taylor Series expansion around a point $\vec{x} = \begin{bmatrix} x \\ y \end{bmatrix}$. We want to approximate $f(\vec{x} + \Delta\vec{x})$.

### **The First-Order Term**
- **Expanded Form:**
  $$ \frac{\partial f}{\partial x}\Delta x + \frac{\partial f}{\partial y}\Delta y $$
- **"Aha!" Moment #1 (Connection to Jacobian/Gradient):**
  This is the [[03 - The Jacobian|Jacobian/Gradient]] (as a row vector) multiplied by the change vector $\Delta\vec{x}$.
  $$ \begin{bmatrix} \frac{\partial f}{\partial x} & \frac{\partial f}{\partial y} \end{bmatrix} \begin{bmatrix} \Delta x \\ \Delta y \end{bmatrix} = J_f \Delta\vec{x} $$
  Or, using Gradient notation: $(\nabla f)^T \Delta\vec{x}$.

### **The Second-Order Term**
- **Expanded Form (Messy):**
  $$ \frac{1}{2} \left( \frac{\partial^2 f}{\partial x^2}(\Delta x)^2 + 2\frac{\partial^2 f}{\partial x \partial y}\Delta x \Delta y + \frac{\partial^2 f}{\partial y^2}(\Delta y)^2 \right) $$
- **"Aha!" Moment #2 (Connection to Hessian):**
  This entire messy expression is actually a compact quadratic form involving the **[[06 - The Hessian|Hessian matrix]]**.
  $$ \frac{1}{2} \begin{bmatrix} \Delta x & \Delta y \end{bmatrix} \begin{bmatrix} \frac{\partial^2 f}{\partial x^2} & \frac{\partial^2 f}{\partial x \partial y} \\ \frac{\partial^2 f}{\partial y \partial x} & \frac{\partial^2 f}{\partial y^2} \end{bmatrix} \begin{bmatrix} \Delta x \\ \Delta y \end{bmatrix} = \frac{1}{2} (\Delta\vec{x})^T H_f \Delta\vec{x} $$

---

## 4. The Final, Compact Formula

By combining these insights, we can write the second-order Multivariate Taylor Series in a beautiful and compact form that brings together everything we've learned:
> $$ f(\vec{x} + \Delta\vec{x}) \approx f(\vec{x}) + J_f \Delta\vec{x} + \frac{1}{2} (\Delta\vec{x})^T H_f \Delta\vec{x} $$

- This immediately generalizes from 2D to any number of dimensions. This is the power of using Linear Algebra to express complex Calculus concepts.

---
## 5. A Concrete Worked Example: Step-by-Step

Let's make this tangible with a full example. We will approximate a function using all three layers (0th, 1st, and 2nd order approximations) and see how the error improves at each step.

### The Problem Setup
- **Our Function (The "Landscape"):**
  $$ f(x, y) = x^2 + 3xy + y^2 $$
- **The Center Point (where we have information):**
  $\vec{p} = \begin{bmatrix} 1 \\ 2 \end{bmatrix}$
- **The Target Point (where we want to approximate):**
  $\vec{x} = \begin{bmatrix} 1.1 \\ 2.1 \end{bmatrix}$
- **The "Small Step" Vector:**
  $\Delta\vec{x} = \vec{x} - \vec{p} = \begin{bmatrix} 1.1 - 1 \\ 2.1 - 2 \end{bmatrix} = \begin{bmatrix} 0.1 \\ 0.1 \end{bmatrix}$
- **The "Actual Value" (for comparison):**
  $f(1.1, 2.1) = (1.1)^2 + 3(1.1)(2.1) + (2.1)^2 = 1.21 + 6.93 + 4.41 = \mathbf{12.55}$

---
### **Approximation #0: The Flat Plane (0th-Order)**

- **Goal:** Match only the height of the function at the center point.
- **Formula:** $g_0(\vec{x}) \approx f(\vec{p})$
- **Ingredient Needed:** The value of `f` at our center point `p=(1,2)`.
  $$ f(1, 2) = 1^2 + 3(1)(2) + 2^2 = 1 + 6 + 4 = 11 $$
- **Approximation:** Our guess for $f(1.1, 2.1)$ is simply **11**.
- **Error:** `Actual - Approx = 12.55 - 11 = 1.55`. (Very rough).

---
### **Approximation #1: The Slanted Plane (1st-Order / Linearisation)**

- **Goal:** Match the height AND the slope (Gradient).
- **Formula:** $g_1(\vec{x}) \approx f(\vec{p}) + J_f(\vec{p}) \cdot \Delta\vec{x}$
- **New Ingredient: The Jacobian/Gradient `J_f` at `p=(1,2)`**
  - First, find the partial derivatives:
    - $\frac{\partial f}{\partial x} = 2x + 3y$
    - $\frac{\partial f}{\partial y} = 3x + 2y$
  - Now, evaluate them at `(1,2)`:
    - $\frac{\partial f}{\partial x}(1,2) = 2(1) + 3(2) = 8$
    - $\frac{\partial f}{\partial y}(1,2) = 3(1) + 2(2) = 7$
  - The Jacobian (as a row vector) is $J_f(1,2) = \begin{bmatrix} 8 & 7 \end{bmatrix}$.

- **Calculate the 1st-Order Term:**
  $$ J_f \Delta\vec{x} = \begin{bmatrix} 8 & 7 \end{bmatrix} \begin{bmatrix} 0.1 \\ 0.1 \end{bmatrix} = (8 \cdot 0.1) + (7 \cdot 0.1) = 0.8 + 0.7 = 1.5 $$
- **Build the Full Approximation:**
  $g_1(\vec{x}) \approx f(\vec{p}) + 1.5 = 11 + 1.5 = 12.5$.
- **Approximation:** Our new guess for $f(1.1, 2.1)$ is **12.5**.
- **Error:** `Actual - Approx = 12.55 - 12.5 = 0.05`. (Much better!)

---
### **Approximation #2: The Curved Surface (2nd-Order)**

- **Goal:** Match the height, slope, AND the curvature.
- **Formula:** $g_2(\vec{x}) \approx g_1(\vec{x}) + \frac{1}{2} (\Delta\vec{x})^T H_f(\vec{p}) \Delta\vec{x}$
- **New Ingredient: The Hessian Matrix `H_f` at `p=(1,2)`**
  - Find the second partial derivatives:
    - $\frac{\partial^2 f}{\partial x^2} = 2$
    - $\frac{\partial^2 f}{\partial y^2} = 2$
    - $\frac{\partial^2 f}{\partial x \partial y} = 3$
  - Assemble the Hessian matrix (in this case, it's constant):
    $$ H_f = \begin{bmatrix} 2 & 3 \\ 3 & 2 \end{bmatrix} $$

- **Calculate the 2nd-Order Term:**
  $$ \frac{1}{2} (\Delta\vec{x})^T H_f \Delta\vec{x} = \frac{1}{2} \begin{bmatrix} 0.1 & 0.1 \end{bmatrix} \begin{bmatrix} 2 & 3 \\ 3 & 2 \end{bmatrix} \begin{bmatrix} 0.1 \\ 0.1 \end{bmatrix} $$
  1.  First, `H * Δx`:
      $\begin{bmatrix} 2 & 3 \\ 3 & 2 \end{bmatrix} \begin{bmatrix} 0.1 \\ 0.1 \end{bmatrix} = \begin{bmatrix} 2(0.1)+3(0.1) \\ 3(0.1)+2(0.1) \end{bmatrix} = \begin{bmatrix} 0.5 \\ 0.5 \end{bmatrix}$
  2.  Next, `(Δx)ᵀ * (result)`:
      $\begin{bmatrix} 0.1 & 0.1 \end{bmatrix} \begin{bmatrix} 0.5 \\ 0.5 \end{bmatrix} = (0.1 \cdot 0.5) + (0.1 \cdot 0.5) = 0.05 + 0.05 = 0.1$
  3.  Finally, multiply by `1/2`:
      $\frac{1}{2} \cdot (0.1) = 0.05$

- **Build the Full Approximation:**
  $g_2(\vec{x}) \approx g_1(\vec{x}) + 0.05 = 12.5 + 0.05 = 12.55$.
- **Approximation:** Our final guess for $f(1.1, 2.1)$ is **12.55**.
- **Error:** `Actual - Approx = 12.55 - 12.55 = 0`.

---
### **Summary of Results**

| Approximation Order | Formula Used | Result | Error |
| :--- | :--- | :--- | :--- |
| **Actual Value** | $f(1.1, 2.1)$ | **12.55** | - |
| **0th-Order** | $f(1,2)$ | **11** | `1.55` |
| **1st-Order** | $f(1,2) + J_f \Delta\vec{x}$ | **12.5** | `0.05` |
| **2nd-Order** | $f(1,2) + J_f \Delta\vec{x} + \frac{1}{2}\Delta\vec{x}^T H \Delta\vec{x}$ | **12.55** | `0` |

*(The error is exactly zero because our original function was a quadratic, so a 2nd-order approximation is perfect. For a more complex function, there would still be a very small error).*

This example clearly shows how each successive term in the Taylor Series adds another layer of correction, making the approximation increasingly accurate.

---
>[!Versi Kedua]

### **Catatan: Deret Taylor Multivariat (MML Course)**

#### **1. Ide Utama: Dari Kurva ke Lanskap**

*   **Tujuan:** Mengaproksimasi sebuah **"lanskap" fungsi multi-variabel** (`f(x,y)`) yang rumit dengan sebuah **permukaan polinomial** yang lebih sederhana di sekitar satu titik.
*   **Notasi:** Kita akan menggunakan notasi "langkah kecil" yang lebih intuitif: `f(x+Δx, y+Δy)`.
    *   `(x,y)`: Titik pusat aproksimasi kita.
    *   `(Δx, Δy)`: "Langkah kecil" yang kita ambil dari titik pusat.

---

#### **2. Proses Aproksimasi Selapis demi Selapis (Visual)**

Bayangkan kita ingin meniru sebuah **"lanskap pegunungan" biru (`f(x,y)`)** di sekitar satu titik.

**Lapisan 1: Aproksimasi Orde ke-0 (Lantai Datar)**
*   **Rumus:** `f(x+Δx, y+Δy) ≈ f(x,y)`
*   **Intuisi:** "Tebakan terbaikku untuk ketinggian di dekat sini adalah sama dengan ketinggian di tempatku berdiri sekarang."
*   **Bentuk Visual:** Sebuah **bidang horizontal (lantai datar)** yang diletakkan pada ketinggian `f(x,y)`.
    *(Seperti gambar kedua di screenshotmu).*

**Lapisan 2: Aproksimasi Orde ke-1 (Lereng Lurus / Linearisasi)**
*   **Rumus:** `f(x+Δx, y+Δy) ≈ f(x,y) + (∂f/∂x)Δx + (∂f/∂y)Δy`
*   **Intuisi:** "Ketinggian baru adalah ketinggian awal, ditambah `(kemiringan arah x * langkah arah x)` ditambah `(kemiringan arah y * langkah arah y)`."
*   **Bentuk Visual:** Sebuah **bidang miring (lereng lurus)** yang memiliki **ketinggian DAN kemiringan yang sama persis** dengan lanskap asli di titik kontak. Ini adalah **"bidang singgung" (tangent plane)**.
    *(Seperti gambar ketiga di screenshotmu).*

**Lapisan 3: Aproksimasi Orde ke-2 (Permukaan Melengkung)**
*   **Rumus:** `... + ½(∂²f/∂x²)(Δx)² + (∂²f/∂x∂y)ΔxΔy + ½(∂²f/∂y²)(Δy)²`
*   **Intuisi:** Sekarang kita tidak hanya mencocokkan ketinggian dan kemiringan, tapi juga **semua kelengkungan** di titik kontak.
*   **Bentuk Visual:** Sebuah **permukaan paraboloid** (seperti mangkok, puncak bukit, atau pelana kuda) yang "memeluk" lanskap asli dengan sangat erat.
    *(Seperti gambar keempat di screenshotmu, yang menunjukkan bentuk pelana kuda).*

---

#### **3. "Aha!" Moment: Notasi Matriks yang Elegan**

*   Lihat kembali rumus aproksimasi orde ke-2 yang panjang itu. Ternyata, ia bisa ditulis dengan sangat ringkas menggunakan alat-alat yang sudah kita kenal!

**Rumus Panjang:**
`f(x+Δx) ≈ f(x) + [∂f/∂x, ∂f/∂y] · [Δx, Δy] + ½[...]`

**Aproksimasi Orde ke-1 (Linearisasi):**
*   Suku `(∂f/∂x)Δx + (∂f/∂y)Δy` adalah **DOT PRODUCT** antara **Gradien (`∇f`)** dengan **vektor langkah (`Δx`)**.
    > **`f(x+Δx) ≈ f(x) + J_f * Δx`**
    *(Di mana `J_f` adalah Jacobian/Gradien dan `Δx` adalah vektor `[Δx, Δy]`)*.

**Aproksimasi Orde ke-2:**
*   Suku `½(∂²f/∂x²)(Δx)² + ...` yang rumit itu ternyata bisa ditulis sebagai perkalian matriks yang melibatkan **Matriks Hessian (`H_f`)**.
    > **`f(x+Δx) ≈ f(x) + J_f * Δx + ½ * Δxᵀ * H_f * Δx`**

*(Kamu tidak perlu khawatir tentang detail `Δxᵀ H Δx` sekarang. Intinya adalah untuk melihat betapa rapinya rumus ini menjadi saat ditulis dalam bahasa matriks).*

---

**Kesimpulan Akhir:**
*   Deret Taylor bisa digeneralisasi ke multi-dimensi untuk mengaproksimasi "lanskap".
*   **Aproksimasi Orde 0:** Sebuah titik → menjadi sebuah **bidang datar**.
*   **Aproksimasi Orde 1 (Linearisasi):** Sebuah garis singgung → menjadi sebuah **bidang singgung (tangent plane)**. Rumusnya menggunakan **Gradien/Jacobian**.
*   **Aproksimasi Orde 2:** Sebuah parabola → menjadi sebuah **permukaan paraboloid**. Rumusnya menggunakan **Hessian**.

Ini adalah puncak dari penyatuan Aljabar Linear dan Kalkulus Multivariat. **Gradien** dan **Hessian** adalah "bahan bangunan" fundamental dari Deret Taylor multi-dimensi.

---
**Tags:** #mml-specialization #multivariate-calculus #taylor-series #jacobian #hessian #linear-approximation #quadratic-approximation