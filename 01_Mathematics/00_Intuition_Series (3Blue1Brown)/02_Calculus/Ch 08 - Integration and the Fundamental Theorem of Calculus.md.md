
# Ch 08: Integrasi dan Teorema Fundamental Kalkulus

**Tujuan Bab:** Secara formal mendefinisikan **[[Integral]]** sebagai [[Limit]] dari sebuah penjumlahan, dan membuktikan **[[Teorema Fundamental Kalkulus]]**, yang merupakan jembatan antara Integral dan [[Turunan]].

---

## 1. Konteks: Masalah yang Terbalik

- **Turunan:** Jika kita tahu **Jarak** `s(t)`, kita bisa mencari **Kecepatan** `v(t)`.
- **Integral:** Jika kita tahu **Kecepatan** `v(t)`, kita ingin mencari **Jarak** `s(t)`. Ini adalah masalah **[[Anti-Turunan]]**.

---

## 2. Ide Intuitif: Dari Aproksimasi ke Luas di Bawah Kurva

- **Masalah:** Kecepatan `v(t)` terus berubah.
- **Solusi Aproksimasi:**
  1.  Potong waktu menjadi banyak **interval kecil `dt`**.
  2.  Di setiap interval, anggap kecepatan konstan `v(t)`.
  3.  Jarak tempuh di interval kecil itu: `Jarak_kecil ≈ v(t) * dt`.
  4.  **Jarak Total** adalah **jumlah** dari semua potongan `Jarak_kecil`: `Jarak Total ≈ Σ v(t) * dt`.

- **"Aha!" Moment Visual:**
  - Setiap potongan `v(t) * dt` adalah **luas dari sebuah persegi panjang tipis**.
  - **Jumlah semua potongan** adalah **jumlah luas dari semua persegi panjang**, yang mengaproksimasi **area di bawah kurva kecepatan `v(t)`**.

- **Definisi Formal Integral:**
  Saat `dt` mendekati nol, aproksimasi ini menjadi **eksak**.
  > **Jarak total yang ditempuh** adalah **SAMA PERSIS** dengan **luas di bawah grafik kecepatan**.
  
  Penjumlahan tak hingga ini (`lim Σ v(t)dt`) ditulis dengan notasi **Integral**:
  $$ \int_{a}^{b} v(t) dt $$

---

## 3. Puncak Cerita: Teorema Fundamental Kalkulus

- Kita punya dua cara berpikir yang berbeda tentang masalah ini:
  1.  **Cara #1 (Anti-Turunan):** Jarak `s(t)` adalah fungsi yang **turunannya** adalah `v(t)`.
  2.  **Cara #2 (Integral):** Jarak `s(t)` adalah **luas di bawah kurva** `v(t)` dari 0 sampai `t`.

- **Teorema Fundamental Kalkulus** menyatakan bahwa kedua ide ini adalah **dua sisi dari koin yang sama**.
  > **`∫ (dari a ke b) f(x) dx = F(b) - F(a)`**

- **Terjemahan Rumus:**
  - **Sisi Kiri (Integral):** "Hitung **luas** di bawah kurva `f(x)` dari `x=a` sampai `x=b`." (Masalah yang sulit).
  - **Sisi Kanan (Anti-Turunan):**
    1.  Cari sebuah fungsi `F(x)` yang **turunannya** adalah `f(x)`. (`F` adalah **Anti-Turunan** dari `f`).
    2.  Hitung `F(b)` (nilai di titik akhir).
    3.  Hitung `F(a)` (nilai di titik awal).
    4.  Kurangi keduanya. (Masalah yang jauh lebih mudah).

- **Keajaibannya:** Untuk menghitung **luas** (yang bergantung pada *semua* nilai di antara `a` dan `b`), kita hanya perlu melihat **nilai di *titik ujungnya saja*** (`a` dan `b`) menggunakan anti-turunan.

---

## 4. Detail Penting

- **Konstanta `+C`:** Saat mencari anti-turunan, selalu ada konstanta `+C`. Tapi saat menghitung integral tentu (`F(b) - F(a)`), konstanta `C` ini akan selalu saling menghilangkan.
- **Area Negatif:** Jika grafik `f(x)` berada di **bawah** sumbu-x, integral akan menghitung luasnya sebagai **nilai negatif**. Ini merepresentasikan perpindahan "mundur".

---
**Tags:** #calculus #integrals #fundamental-theorem #antiderivative #3b1b-essence-of-calculus