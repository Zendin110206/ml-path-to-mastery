# 03: Power Series Derivation

**Chapter Goal:** To formally derive the "recipe" for building a [[Ch 11 - Taylor Series|Taylor Series]], step-by-step, confirming the intuitions from the previous video about matching properties.

---

## 1. Core Idea: Reconstruction from a Single Point

- **Taylor Series Principle:** If a function is "well-behaved" (continuous and infinitely differentiable), then if we know **all the information** about that function at a **single point**, we can reconstruct the entire function elsewhere.
- **"All the information"** means: the function's value (`f`), its first derivative (`f'`), its second derivative (`f''`), and so on, all evaluated at that one point.

---

## 2. The Construction Process: Matching Properties Layer by Layer

We will build an approximating polynomial `g(x)` for a function `f(x)` around the point `x=0`.

### Layer 1: The 0th-Order Approximation ($g_0$)
- **Goal:** Match the function's **value**.
- **Information Used:** $f(0)$.
- **Polynomial Form:** $g_0(x) = c_0$.
- **Condition:** $g_0(0) = f(0)$.
- **Result:** $c_0 = f(0)$.
  > $g_0(x) = f(0)$

### Layer 2: The 1st-Order Approximation ($g_1$)
- **Goal:** Match the **value AND the slope**.
- **Information Used:** $f(0), f'(0)$.
- **Polynomial Form:** $g_1(x) = c_0 + c_1x$.
- **Conditions:**
  1. $g_1(0) = f(0) \implies c_0 = f(0)$.
  2. $g_1'(0) = f'(0)$. The derivative of $g_1(x)$ is $c_1$. So, $c_1 = f'(0)$.
- **Result:**
  > $g_1(x) = f(0) + f'(0)x$

### Layer 3: The 2nd-Order Approximation ($g_2$)
- **Goal:** Match the value, slope, **AND curvature**.
- **Information Used:** $f(0), f'(0), f''(0)$.
- **Polynomial Form:** $g_2(x) = c_0 + c_1x + c_2x^2$.
- **Conditions:**
  1. $g_2(0) = f(0) \implies c_0 = f(0)$.
  2. $g_2'(0) = f'(0)$. The derivative of $g_2(x)$ is $c_1 + 2c_2x$. At $x=0$, this is $c_1$. So, $c_1 = f'(0)$.
  3. $g_2''(0) = f''(0)$. The second derivative of $g_2(x)$ is $2c_2$. So, $2c_2 = f''(0)$.

- **"Aha!" Moment:** $c_2$ is not just $f''(0)$. We have to divide.
  > $c_2 = \frac{f''(0)}{2}$
- **Result:**
  > $g_2(x) = f(0) + f'(0)x + \frac{f''(0)}{2}x^2$

![[Pasted image 20260103234319.png#center]]

---

## 3. Finding the General Pattern (The Factorial)

If we continue to the 3rd order ($c_3x^3$), we would find $c_3 = \frac{f'''(0)}{6}$.
If we continue to the 4th order ($c_4x^4$), we would find $c_4 = \frac{f^4(0)}{24}$.

- **Recognizing the Pattern:**
  - `2 = 2 * 1 = 2!` (2 factorial)
  - `6 = 3 * 2 * 1 = 3!` (3 factorial)
  - `24 = 4 * 3 * 2 * 1 = 4!` (4 factorial)

- **Why does the factorial appear?** Because each time we differentiate $x^n$ (using the [[03 - The Formal Definition of a Derivative#4. The "Shortcuts": Rules of Differentiation|Power Rule]]), the exponent "hops down" in front and gets multiplied. The nth derivative of $x^n$ is $\frac{d^n}{dx^n}(x^n) = n!$. To "cancel out" this effect, we must divide our coefficient by $n!$.

---

## 4. The Final Formula: The Maclaurin Series

- **General Formula for the coefficient $c_n$:**
  > $$ c_n = \frac{f^{(n)}(0)}{n!} $$
  (The nth derivative of `f` at `x=0`, divided by `n` factorial).

- **The Taylor Series around `x=0` (also called the Maclaurin Series):**
  $$ f(x) \approx \sum_{n=0}^{\infty} \frac{f^{(n)}(0)}{n!} x^n $$
  > $$ = f(0) + f'(0)x + \frac{f''(0)}{2!}x^2 + \frac{f'''(0)}{3!}x^3 + \dots $$

- **Conclusion:**
  This is the formal "recipe" for building a polynomial approximation that "hugs" a function around `x=0` as tightly as possible. Each new term that is added has the job of matching a higher-order derivative.


![[Pasted image 20260103234413.png#center]]

---
>[!Note]
Tentu saja! Mengerjakan contoh konkret adalah cara terbaik untuk melihat bagaimana "resep" Deret Maclaurin ini bekerja dalam praktik.

Kita akan gunakan salah satu fungsi paling penting: **`f(x) = eˣ`**.

**Tujuan:**
Mencari polinomial aproksimasi (Deret Maclaurin) untuk `eˣ` di sekitar `x=0`.

---

### **Langkah 1: Kumpulkan "Bahan Baku" (Turunan `eˣ` di `x=0`)**

Ini adalah bagian termudah untuk `eˣ`, karena turunan dari `eˣ` adalah `eˣ` itu sendiri, selamanya!

1.  **Turunan ke-0:**
    `f(x) = eˣ` → `f(0) = e⁰ = 1`

2.  **Turunan Pertama:**
    `f'(x) = eˣ` → `f'(0) = e⁰ = 1`

3.  **Turunan Kedua:**
    `f''(x) = eˣ` → `f''(0) = e⁰ = 1`

4.  **Turunan ke-n:**
    `fⁿ(x) = eˣ` → `fⁿ(0) = e⁰ = 1`

**Kesimpulan:** Semua turunan dari `eˣ` saat dievaluasi di `x=0` nilainya selalu **1**.

---

### **Langkah 2: Hitung Koefisien `cₙ` Satu per Satu**

Sekarang kita gunakan "resep" kita: **`cₙ = fⁿ(0) / n!`**

*   **`c₀` (Suku Konstan):**
    `c₀ = f(0) / 0! = 1 / 1 = 1`
    *(Ingat: `0!` didefinisikan sebagai 1)*

*   **`c₁` (Koefisien untuk `x¹`):**
    `c₁ = f'(0) / 1! = 1 / 1 = 1`

*   **`c₂` (Koefisien untuk `x²`):**
    `c₂ = f''(0) / 2! = 1 / 2 = 1/2`

*   **`c₃` (Koefisien untuk `x³`):**
    `c₃ = f'''(0) / 3! = 1 / 6`

*   **`c₄` (Koefisien untuk `x⁴`):**
    `c₄ = f⁴(0) / 4! = 1 / 24`

*   **Pola Umum:** `cₙ = 1 / n!`

---

### **Langkah 3: Susun "Bata Lego" Polinomialnya**

Kita sekarang susun polinomialnya, selapis demi selapis, seperti di video "Power Series".

*   **Aproksimasi Orde ke-0 (Garis Horizontal):**
    `P₀(x) = c₀ = 1`

*   **Aproksimasi Orde ke-1 (Garis Singgung):**
    `P₁(x) = c₀ + c₁x = 1 + 1*x = 1 + x`

*   **Aproksimasi Orde ke-2 (Parabola "Pelukan"):**
    `P₂(x) = c₀ + c₁x + c₂x² = 1 + x + (1/2)x²`

*   **Aproksimasi Orde ke-3 (Kubik):**
    `P₃(x) = 1 + x + (1/2)x² + (1/6)x³`

...dan seterusnya.

---

### **Hasil Akhir: Deret Maclaurin untuk `eˣ`**

Jika kita melanjutkan ini sampai tak hingga, kita mendapatkan Deret Maclaurin yang lengkap untuk `eˣ`:

**`eˣ = 1 + x + x²/2! + x³/3! + x⁴/4! + ...`**

**Apa Artinya Ini?**
Ini berarti, jika kamu ingin menghitung nilai `e⁰·¹` tanpa kalkulator, kamu bisa mengaproksimasinya dengan sangat baik menggunakan beberapa suku pertama:
*   `e⁰·¹ ≈ 1 + 0.1 = 1.1` (aproksimasi orde 1)
*   `e⁰·¹ ≈ 1 + 0.1 + (0.1)²/2 = 1 + 0.1 + 0.005 = 1.105` (aproksimasi orde 2)
*   *Nilai sebenarnya adalah `1.10517...`*

Lihat? Hanya dengan dua suku, aproksimasinya sudah sangat akurat! Inilah kekuatan dari Deret Taylor.


---

Tentu saja! Mari kita kerjakan satu contoh lagi yang sangat klasik dan penting: **`f(x) = sin(x)`**. Ini akan menunjukkan pola yang berbeda dan menarik.

**Tujuan:**
Mencari polinomial aproksimasi (Deret Maclaurin) untuk `sin(x)` di sekitar `x=0`.

---

### **Langkah 1: Kumpulkan "Bahan Baku" (Turunan `sin(x)` di `x=0`)**

Kita tahu bahwa turunan dari `sin(x)` dan `cos(x)` berulang dalam sebuah siklus.

1.  **Turunan ke-0:**
    `f(x) = sin(x)` → `f(0) = sin(0) = 0`

2.  **Turunan Pertama:**
    `f'(x) = cos(x)` → `f'(0) = cos(0) = 1`

3.  **Turunan Kedua:**
    `f''(x) = -sin(x)` → `f''(0) = -sin(0) = 0`

4.  **Turunan Ketiga:**
    `f'''(x) = -cos(x)` → `f'''(0) = -cos(0) = -1`

5.  **Turunan Keempat:**
    `f⁴(x) = sin(x)` → `f⁴(0) = sin(0) = 0`

**Kesimpulan:**
Pola nilai turunan di `x=0` adalah siklus yang berulang: **`0, 1, 0, -1, 0, 1, 0, -1, ...`**

---

### **Langkah 2: Hitung Koefisien `cₙ` Satu per Satu**

Sekarang kita gunakan resep kita: **`cₙ = fⁿ(0) / n!`**

*   **`c₀` (Suku Konstan):**
    `c₀ = f(0) / 0! = 0 / 1 = 0`

*   **`c₁` (Koefisien untuk `x¹`):**
    `c₁ = f'(0) / 1! = 1 / 1 = 1`

*   **`c₂` (Koefisien untuk `x²`):**
    `c₂ = f''(0) / 2! = 0 / 2 = 0`

*   **`c₃` (Koefisien untuk `x³`):**
    `c₃ = f'''(0) / 3! = -1 / 6`

*   **`c₄` (Koefisien untuk `x⁴`):**
    `c₄ = f⁴(0) / 4! = 0 / 24 = 0`

*   **`c₅` (Koefisien untuk `x⁵`):**
    (Polanya berulang, `f⁵(0)` akan sama dengan `f'(0)`, yaitu `1`)
    `c₅ = f⁵(0) / 5! = 1 / 120`

---

### **Langkah 3: Susun "Bata Lego" Polinomialnya**

Mari kita susun polinomialnya selapis demi selapis.

*   **Aproksimasi Orde ke-1:**
    `P₁(x) = 0 + 1*x = x`
    *   *Intuisi:* Di dekat `x=0`, grafik `sin(x)` sangat mirip dengan garis `y=x`.

*   **Aproksimasi Orde ke-2:**
    `P₂(x) = 0 + 1*x + 0*x² = x`
    *   Tidak ada perubahan! Ini karena kelengkungan `sin(x)` di `x=0` adalah nol.

*   **Aproksimasi Orde ke-3:**
    `P₃(x) = 0 + 1*x + 0*x² + (-1/6)x³ = x - x³/6`

*   **Aproksimasi Orde ke-4:**
    `P₄(x) = x - x³/6 + 0*x⁴ = x - x³/6`
    *   Tidak ada perubahan lagi.

*   **Aproksimasi Orde ke-5:**
    `P₅(x) = x - x³/6 + (1/120)x⁵`

---

### **Hasil Akhir: Deret Maclaurin untuk `sin(x)`**

Jika kita melanjutkan polanya, kita mendapatkan deret yang indah:

**`sin(x) = x - x³/3! + x⁵/5! - x⁷/7! + ...`**

**Observasi Menarik:**
*   Hanya **pangkat ganjil** yang muncul. Ini masuk akal, karena `sin(x)` adalah fungsi ganjil (`sin(-x) = -sin(x)`).
*   Tandanya **bergantian** (plus, minus, plus, minus...).

**Apa Artinya Ini?**
Jika kamu ingin menghitung `sin(0.1)` (di mana 0.1 dalam radian), kamu bisa aproksimasi:
*   `sin(0.1) ≈ 0.1` (Aproksimasi yang sangat bagus untuk sudut kecil!)
*   `sin(0.1) ≈ 0.1 - (0.1)³/6 = 0.1 - 0.001/6 ≈ 0.1 - 0.000166 = 0.099834`
*   *Nilai sebenarnya adalah `0.0998334...`*

Lagi-lagi, aproksimasinya luar biasa akurat hanya dengan beberapa suku.

Apakah dengan mengerjakan contoh `sin(x)` ini, polanya menjadi lebih jelas?


---
**Tags:** #mml-specialization #multivariate-calculus #taylor-series #maclaurin-series #derivation