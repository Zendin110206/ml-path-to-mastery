# Ch 11: Deret Taylor (Taylor Series)

**Tujuan Bab:** Memahami bagaimana kita bisa **mengaproksimasi fungsi yang rumit** dengan **polinomial sederhana** menggunakan informasi dari **[[Turunan]]** di satu titik.

---

## 1. Masalah: Fungsi Rumit vs. Polinomial Sederhana

- **Masalah:** Fungsi seperti `cos(x)`, `eˣ`, `ln(x)` sulit dihitung secara langsung.
- **Solusi:** Buatlah **polinomial sederhana** (`P(x) = c₀ + c₁x + c₂x² + ...`) yang bisa "meniru" perilaku fungsi asli di sekitar satu titik.
- **Kenapa Polinomial?** Mudah dihitung, diturunkan, diintegralkan.

---

## 2. Strategi: Meniru Sifat Fungsi Asli

- Untuk membuat peniru polinomial `P(x)` yang baik untuk `f(x)` di sekitar `x=a`, kita harus memastikan sifat-sifat `P(x)` cocok dengan `f(x)` di titik `a`.
- **Cocokkan Sifat secara Berurutan:**
  1.  **Nilai:** `P(a) = f(a)`.
  2.  **Kemiringan (Turunan 1):** `P'(a) = f'(a)`.
  3.  **Kelengkungan (Turunan 2):** `P''(a) = f''(a)`.
  4.  **Dan seterusnya...** `Pⁿ(a) = fⁿ(a)`.

---

## 3. Membangun Polinomial Peniru (Secara Umum)

- **Koefisien Polinomial:** Kita mencari nilai koefisien `cₙ` agar polinomial `P(x)` meniru `f(x)`.
- **Rumus Koefisien:** Dengan mencocokkan turunan di titik `a`, kita menemukan bahwa:
  > **`cₙ = fⁿ(a) / n!`**
  Di mana:
  - `fⁿ(a)` adalah turunan ke-`n` dari `f`, dievaluasi di `x=a`.
  - `n!` adalah **faktorial** dari `n` (`n! = n * (n-1) * ... * 1`).

- **Formula Umum Polinomial Taylor (di sekitar `x=a`):**
  $$ P(x) = f(a) + \frac{f'(a)}{1!} (x-a) + \frac{f''(a)}{2!} (x-a)^2 + \frac{f'''(a)}{3!} (x-a)^3 + ... $$
- **Kasus Sederhana (di sekitar `x=0`):**
  $$ P(x) = f(0) + f'(0)x + \frac{f''(0)}{2!}x^2 + \frac{f'''(0)}{3!}x^3 + ... $$

---

## 4. Contoh Ajaib

### Aproksimasi `cos(x)` di Sekitar `x=0`
- **Turunan `cos(x)`:** `cos(x), -sin(x), -cos(x), sin(x), ...`
- **Nilai di `x=0`:** `1, 0, -1, 0, 1, 0, -1, ...`
- **Koefisien (`cₙ`):** `1/0!, 0/1!, -1/2!, 0/3!, 1/4!, ...`
- **Deret Taylor:** `cos(x) ≈ 1 - x²/2! + x⁴/4! - x⁶/6! + ...`

### Aproksimasi `eˣ` di Sekitar `x=0`
- **Turunan `eˣ`:** `eˣ` (selalu sama).
- **Nilai di `x=0`:** `e⁰ = 1` (semua turunan bernilai 1).
- **Koefisien (`cₙ`):** `1/n!`
- **Deret Taylor:** `eˣ ≈ 1 + x + x²/2! + x³/3! + x⁴/4! + ...`

---

## 5. Polinomial Taylor vs. Deret Taylor

- **Polinomial Taylor:** Aproksimasi dengan **jumlah berhingga** suku. Semakin banyak suku, semakin akurat.
- **Deret Taylor:** Penjumlahan **tak terhingga** dari semua suku.
- **Konvergensi:**
  - Jika deretnya konvergen, ia mendekati nilai fungsi asli.
  - Jika tidak, ia divergen.

**Intuisi Akhir:** Deret Taylor adalah cara untuk "menerjemahkan" informasi tentang **sifat-sifat lokal** (turunan di satu titik) menjadi **aproksimasi global** (perilaku fungsi di sekitar titik itu).

---
**Tags:** #calculus #taylor-series #derivatives #approximation #3b1b-essence-of-calculus