# 06: Linearisation

**Chapter Goal:** To understand **Linearisation**, which is the most important and common application of the [[Ch 11 - Taylor Series|Taylor Series]], and to analyze the error of this approximation.

---

## 1. Rewriting the Taylor Series

The video introduces a more intuitive way to write the Taylor Series for talking about "change".

- **Old Notation:** $f(x) \approx f(p) + f'(p)(x-p) + \dots$
  - `p`: The center point of the approximation.
  - `x`: The point where we want to guess the function's value.

- **New, More Intuitive Notation:**
  - We replace `p` (the center point) with `x`.
  - We replace `x-p` (the distance from the center) with **`Δx`** (a "small step").

- **The New Formula:**
  > $$ f(x + \Delta x) \approx f(x) + f'(x)\Delta x + \frac{f''(x)}{2!} (\Delta x)^2 + \dots $$
- **Meaning:** "The value of the function at a **new point** (`x+Δx`) is approximately the value at the **old point** (`f(x)`) plus some correction terms."

---

## 2. What is Linearisation?

- **Definition:** **Linearisation** is the process of approximating a complex function using only the **1st-order approximation** of its Taylor Series.

- **The Linearisation Formula:**
  > $$ f(x + \Delta x) \approx f(x) + f'(x)\Delta x $$

- **Geometric Meaning:**
  - This is the equation of the **[[02 - Rise Over Run#3. The Final Connection (If you also have the a(t) graph)|tangent line]]** at the point `x`.
  - We are ignoring all curvature and pretending that our function behaves like a straight line around the point `x`.
- **Intuition:** `Change in Output ≈ Slope * Change in Input` or `Rise ≈ Slope * Run`.

![[Pasted image 20260105010442.png#center]]

---

## 3. Analyzing the Approximation "Error"

- **Question:** How "wrong" is our linear approximation?
- **Logic:**
  - The full Taylor Series is exact:
    $f(x+\Delta x) = f(x) + f'(x)\Delta x + \frac{f''(x)}{2!}(\Delta x)^2 + \frac{f'''(x)}{3!}(\Delta x)^3 + \dots$
  - When we linearize, we are **throwing away all terms after the `Δx` term**.
  - The **error** of our approximation is exactly equal to the sum of all the terms we threw away.

- **"Aha!" Moment (Big O Notation):**
  - The first term we throw away is the $(\Delta x)^2$ term.
  - If `Δx` is a very small number (e.g., 0.01), then $(\Delta x)^2$ (0.0001) will be **much, much smaller**. Subsequent terms ($(Δx)^3, \dots$) will be even smaller.
  - Therefore, the size of the error is **dominated** by the first term we discarded.

- **Conclusion about the Error:**
  - The error of linearization is said to be **"of the order of $(\Delta x)^2$"**, written as $O((\Delta x)^2)$.
  - **Meaning:** If we make `Δx` **10x smaller**, the error will become roughly **$10^2 = 100x$ smaller**. The approximation gets very good, very quickly.

---

## 4. Taylor Series "Returning the Favor" to Derivatives

This is a very clever section. We can use the Taylor Series to analyze the error of the `Rise/Run` derivative approximation we used at the very beginning.

- **Problem:** We know $f'(x) = \lim_{\Delta x\to0} \frac{f(x+\Delta x)-f(x)}{\Delta x}$. But how "wrong" is this approximation if `Δx` is not approaching zero?

- **Algebraic Process:**
  1.  Start with the full Taylor formula:
      $f(x+\Delta x) = f(x) + f'(x)\Delta x + \frac{f''(x)}{2!}(\Delta x)^2 + \dots$
  2.  Rearrange it to isolate $f'(x)$:
      $f'(x) = \left[ \frac{f(x+\Delta x) - f(x)}{\Delta x} \right] - \left[ \frac{f''(x)}{2!}\Delta x + \dots \right]$

- **Interpreting the Result:**
  > **Exact Derivative = (Rise/Run Approximation) + (Error Terms)**

- **Conclusion:**
  - The error of the "Finite Difference" derivative approximation is dominated by the `Δx` term.
  - This method is said to have **first-order accuracy**, or $O(\Delta x)$.
  - **Meaning:** If we make `Δx` **10x smaller**, the error will also only get **10x smaller** (not as fast as the function approximation).

- **Key Message:** The Taylor Series is not just a tool for approximating functions, but also a powerful **analytical tool** for understanding the accuracy of various numerical methods.

---
## 5. A Concrete Worked Example: Linearizing `f(x) = x³`

Let's make this tangible. We will approximate the function $f(x) = x^3$ using a straight line.

### **Part 1: The "Old" Notation (using `p` and `x`)**

**Goal:** Find the best linear approximation for $f(x) = x^3$ centered at the point **`p = 2`**.

**Step 1: Gather the Ingredients at `p=2`**
- **Function Value:** $f(p) = f(2) = 2^3 = 8$.
- **First Derivative:** $f'(x) = 3x^2$. So, $f'(p) = f'(2) = 3(2^2) = 12$.

**Step 2: Build the 1st-Order Taylor Polynomial**
The formula is: $f(x) \approx f(p) + f'(p)(x-p)$.
- Substitute the values:
  > $f(x) \approx 8 + 12(x-2)$

This is the equation of the **tangent line** to the curve $y=x^3$ at the point `x=2`.

**Step 3: Test the Approximation**
Let's try to guess the value of $f(2.1)$ using our line. Here, `x = 2.1`.
- **Approximation:**
  $f(2.1) \approx 8 + 12(2.1 - 2) = 8 + 12(0.1) = 8 + 1.2 = 9.2$.
- **Actual Value:**
  $f(2.1) = (2.1)^3 = 9.261$.

The approximation is very close!

---
### **Part 2: The "New" Notation (using `x` and `Δx`)**

Now let's phrase the exact same problem using the "change" notation.

**Goal:** Find the linear approximation for a "small step" `Δx` away from the point **`x = 2`**.

**Step 1: Gather the Ingredients at `x=2`**
- **Function Value:** $f(x) = f(2) = 8$.
- **First Derivative:** $f'(x) = f'(2) = 12$.

**Step 2: Build the Linearization Formula**
The formula is: $f(x + \Delta x) \approx f(x) + f'(x)\Delta x$.
- Substitute the values:
  > $f(2 + \Delta x) \approx 8 + 12 \cdot \Delta x$

**Step 3: Test the Approximation**
Let's guess the value at the same point as before, which is `2.1`.
- In this notation, the "small step" is $\Delta x = 2.1 - 2 = 0.1$.
- **Approximation:**
  $f(2 + 0.1) \approx 8 + 12(0.1) = 8 + 1.2 = 9.2$.

The calculation and the result are **identical**, only the notation is different. The `Δx` notation is often more intuitive for thinking about changes and errors.

---
### **Part 3: Analyzing the Error**

**Question:** Why was our approximation `9.2` not exactly `9.261`? Where did the error of `0.061` come from?

**Answer:** The error comes from the higher-order terms of the Taylor Series that we ignored.

**Step 1: Find the Next Term in the Series**
The next term in the Taylor series is the second-order term: $\frac{f''(x)}{2!}(\Delta x)^2$.
- **Second Derivative:** $f''(x) = 6x$.
- **Evaluate at `x=2`:** $f''(2) = 6(2) = 12$.
- **Calculate the term:**
  $$ \frac{12}{2!} (0.1)^2 = \frac{12}{2} (0.01) = 6(0.01) = 0.06 $$

**"Aha!" Moment:**
- The **first term we ignored** has a value of **0.06**.
- The **actual error** of our linear approximation was **0.061**.

They are almost the same! The tiny remaining difference (`0.001`) comes from the third-order term ($(Δx)^3$) and so on, which are even smaller.

**Conclusion on Error:**
- The error of our linear approximation is **dominated by the second-order term**. This is what $O((\Delta x)^2)$ means.
- **Practical Implication:** If we had chosen a `Δx` that was 10 times smaller (`Δx = 0.01`), our error would have been roughly $10^2 = 100$ times smaller!
  - `Error ≈ 6 * (0.01)² = 0.0006`. This shows how quickly the linear approximation becomes very accurate for very small steps.

---

>[!Note]
>Catatan tambahan

Tentu saja. Mari kita lanjutkan persis dari titik pemahaman terakhir kita.

**Rekap Cepat Terakhir Kali:**
*   Kita sudah berhasil memahami **perubahan notasi** dari `y = f(p) + f'(p)(x-p)` menjadi `f(x + Δx) ≈ f(x) + f'(x)Δx`.
*   Kita tahu bahwa ini hanyalah **dua cara berbeda untuk menulis persamaan yang sama** untuk **garis singgung**, yang merupakan aproksimasi orde pertama.
*   Kita sekarang akan menyebut aproksimasi garis lurus ini dengan nama resminya: **Linearisasi**.

---

### **Bagian Selanjutnya: Menganalisis "Kesalahan" dari Aproksimasi Kita**

> **Teks:** "What I now want to know is, when I use the first order approximation, instead of evaluating the base function, **how big should I expect the error to be?**"
> *(Apa yang ingin aku ketahui sekarang adalah, saat aku menggunakan aproksimasi orde pertama, alih-alih mengevaluasi fungsi dasarnya, **seberapa besar kesalahan yang harus aku harapkan?**)*

**Apa Masalahnya?**
*   Kita tahu bahwa linearisasi (`f(x + Δx) ≈ f(x) + f'(x)Δx`) hanyalah sebuah **aproksimasi**.
*   Itu adalah garis lurus yang "menyerempet" kurva asli.
*   Pasti ada **"celah"** atau **"error"** antara nilai aproksimasi (di garis lurus) dengan nilai yang sebenarnya (di kurva).
*   Pertanyaannya: **Seberapa besar "celah" ini?**

---

### **Menggunakan Deret Taylor Lengkap untuk Menemukan Error**

> **Teks:** "Well, one way to think about it is that we know our function can be **exactly represented** by this infinitely long series... the **next term along**, i.e. the first term that we ignore... has a **delta x squared** in it."
> *(Nah, satu cara untuk memikirkannya adalah kita tahu fungsi kita bisa **direpresentasikan secara eksak** oleh deret tak berhingga ini... **suku berikutnya**, yaitu suku pertama yang kita abaikan... memiliki **delta x kuadrat** di dalamnya.)*

Di sinilah Deret Taylor menjadi alat analisis yang sangat kuat.

1.  **Tulis Persamaan yang TEPAT (Eksak):**
    Deret Taylor yang lengkap bukanlah aproksimasi. Ia adalah representasi yang **sama persis** dengan fungsi aslinya (jika fungsinya "berperilaku baik").
    `f(x + Δx) = f(x) + f'(x)Δx + (f''(x)/2!)(Δx)² + (f'''(x)/3!)(Δx)³ + ...`

2.  **Identifikasi Aproksimasi Kita:**
    Aproksimasi linear kita (`f(x) + f'(x)Δx`) adalah **dua suku pertama** dari deret lengkap ini.

3.  **Identifikasi "Error"-nya:**
    Jika `Nilai_Eksak = Aproksimasi + Sisa`, maka `Error = Sisa`.
    **"Error"** dari linearisasi kita adalah **semua suku yang kita buang**:
    `Error = (f''(x)/2!)(Δx)² + (f'''(x)/3!)(Δx)³ + ...`

---

### **"Aha!" Moment: Perilaku Error (`O((Δx)²)`)**

> **Teks:** "This means that if we can say that `Δx` is a small number, then `(Δx)²` must be a **really small number**... So we can now rewrite our first order approximation to include an error term, which we just say is **on the order of `(Δx)²`**..."
> *(Ini berarti jika kita bisa katakan `Δx` adalah angka kecil, maka `(Δx)²` pasti angka yang **sangat kecil**... Jadi kita sekarang bisa menulis ulang aproksimasi orde pertama kita untuk menyertakan suku error, yang kita katakan **berorde `(Δx)²`**...)*

Mari kita pikirkan perilaku dari suku-suku Error itu saat `Δx` sangat kecil.
Misal `Δx = 0.01`.
*   `Error = (sesuatu)*(0.01)² + (sesuatu_lain)*(0.01)³ + ...`
*   `Error = (sesuatu)*0.0001 + (sesuatu_lain)*0.000001 + ...`

**Observasi Kunci:**
*   Suku pertama dari Error (`(Δx)²`) akan **jauh lebih besar** daripada semua suku-suku error lainnya (`(Δx)³`, `(Δx)⁴`, dst.).
*   Jadi, **ukuran total dari Error akan didominasi oleh suku pertama yang kita buang**.

Ini membawa kita ke sebuah notasi yang sangat berguna bernama **Notasi Big-O**.
Kita bisa mengatakan:
`Error ≈ O((Δx)²) `
*   Ini dibaca: "Error-nya **berorde** delta x kuadrat."
*   **Artinya:** Saat `Δx` menjadi sangat kecil, ukuran Error akan **sebanding dengan kuadrat dari `Δx`**.

**Kenapa Ini Penting?**
Ini memberitahu kita **seberapa cepat** aproksimasi kita menjadi akurat.
*   Jika kamu membuat `Δx` **10x lebih kecil** (dari 0.1 menjadi 0.01)...
*   ...maka Error-nya akan menjadi `10² = **100x**` **lebih kecil**!
*   Ini adalah aproksimasi yang sangat bagus dan **konvergen dengan sangat cepat**.

---

### **Setup Contoh Konkret**

*   **Fungsi Asli:** `f(x) = eˣ` (Kita pilih ini karena kita tahu semua turunannya).
*   **Tujuan:** Kita ingin membuat **aproksimasi linear** untuk `eˣ` dan menganalisisnya.

### **Bagian 1: Bekerja dengan Notasi Lama (`p` dan `x`)**

**Langkah 1: Pilih "Titik Jangkar" (`p`)**
*   Mari kita buat aproksimasi yang berpusat di `p = 0`. (Ini akan menjadi Deret Maclaurin orde-1).

**Langkah 2: Kumpulkan Informasi di `p=0`**
*   **Nilai Fungsi:** `f(p) = f(0) = e⁰ = 1`.
*   **Turunan Pertama:** `f'(x) = eˣ`.
*   **Kemiringan di `p`:** `f'(p) = f'(0) = e⁰ = 1`.

**Langkah 3: Bangun Persamaan Garis Singgung (Aproksimasi)**
*   **Resep:** `y = f(p) + f'(p) * (x - p)`
*   Masukkan nilainya:
    `y = 1 + 1 * (x - 0)`
    **`y = 1 + x`**

Ini adalah **aproksimasi linear** (linearisasi) untuk `eˣ` di sekitar `x=0`.

**Langkah 4: Gunakan Aproksimasi untuk Menebak**
*   Mari kita coba tebak nilai dari `e⁰·¹`.
*   **Titik Target** kita adalah `x = 0.1`.
*   Masukkan `x = 0.1` ke dalam persamaan aproksimasi kita:
    `y = 1 + 0.1 = 1.1`
*   **Hasil Tebakan:** `e⁰·¹ ≈ 1.1`.

---

### **Bagian 2: Bekerja dengan Notasi Baru (`x` dan `Δx`)**

Sekarang kita akan melakukan hal yang **sama persis**, tapi dengan "bahasa" yang baru.

**Langkah 1: Pilih "Titik Awal" (`x`)**
*   Kita mulai dari `x = 0`.

**Langkah 2: Tentukan "Langkah Kecil" (`Δx`)**
*   Kita ingin sampai ke titik `0.1`.
*   Maka, "langkah" yang kita ambil dari titik awal kita adalah:
    `Δx = (Titik Tujuan) - (Titik Awal) = 0.1 - 0 = 0.1`.

**Langkah 3: Bangun Persamaan Aproksimasi**
*   **Resep:** `f(x + Δx) ≈ f(x) + f'(x) * Δx`
*   Masukkan nilainya (`x=0` dan `f'(0)=1`):
    `f(0 + Δx) ≈ f(0) + f'(0) * Δx`
    `f(Δx) ≈ 1 + 1 * Δx`

**Langkah 4: Gunakan Aproksimasi untuk Menebak**
*   Kita ingin mencari nilai di `x=0.1`, yang mana adalah `Δx=0.1` dari titik awal kita.
*   Masukkan `Δx = 0.1` ke dalam persamaan aproksimasi kita:
    `f(0.1) ≈ 1 + 0.1 = 1.1`
*   **Hasil Tebakan:** `e⁰·¹ ≈ 1.1`.

**Kesimpulan:** Kedua notasi memberikan hasil yang **sama persis**, karena mereka memang mendeskripsikan hal yang sama.

---

### **Bagian 3: Menganalisis Error-nya**

Sekarang, mari kita hitung seberapa "salah" tebakan kita.

**Langkah 1: Hitung Nilai yang Sebenarnya**
*   Gunakan kalkulator untuk `e⁰·¹`.
*   **Nilai Sebenarnya:** `e⁰·¹ ≈ 1.10517`

**Langkah 2: Hitung Error Aktual**
*   `Error = Nilai Sebenarnya - Nilai Aproksimasi`
*   `Error = 1.10517 - 1.1 = 0.00517`

**Langkah 3: Bandingkan dengan Prediksi Error dari Deret Taylor**
Teori mengatakan bahwa Error-nya akan **didominasi** oleh suku pertama yang kita buang.

*   **Deret Taylor Lengkap untuk `eˣ`:** `eˣ = 1 + x + x²/2! + x³/3! + ...`
*   **Aproksimasi kita (`1+x`):** Kita menggunakan dua suku pertama.
*   **Suku Pertama yang Dibuang:** `x²/2!`

Mari kita hitung nilai dari suku yang dibuang ini di `x = 0.1`:
*   `Error ≈ (0.1)² / 2! = 0.01 / 2 = 0.005`

**"AHA!" Moment:**
*   **Error Aktual kita:** `0.00517`
*   **Prediksi Error kita:** `0.005`

Lihat? Keduanya **sangat-sangat dekat!** Ini membuktikan bahwa teori `Error ≈ O((Δx)²) ` itu benar. Kesalahan kita memang "berorde" `(Δx)²`.

**Mari kita uji lagi dengan `Δx` yang lebih kecil, misal `Δx = 0.001`.**
*   `e⁰·⁰⁰¹ ≈ 1 + 0.001 = 1.001` (Aproksimasi linear).
*   Nilai Sebenarnya: `1.0010005`
*   Error Aktual: `0.0000005`
*   Prediksi Error (`(Δx)²/2`): `(0.001)² / 2 = 0.000001 / 2 = 0.0000005`.
*   **Cocok sempurna!**

Ini menunjukkan bahwa saat `Δx` semakin kecil, prediksi error dari Deret Taylor menjadi semakin akurat.

Apakah dengan melihat contoh konkret `eˣ` ini dari awal sampai akhir, termasuk perbandingan errornya, konsep linearisasi dan analisis errornya menjadi jauh lebih jelas?

---
**Tags:** #mml-specialization #multivariate-calculus #taylor-series #linearization #big-o-notation #error-analysis````````