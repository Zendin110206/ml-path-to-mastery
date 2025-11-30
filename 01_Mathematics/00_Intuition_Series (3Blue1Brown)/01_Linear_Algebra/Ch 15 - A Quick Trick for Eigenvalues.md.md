# Ch 15: Trik Cepat untuk Menghitung Eigenvalue (2x2)

**Tujuan Bab:** Memperkenalkan sebuah "jalan pintas" untuk menghitung [[Eigenvalue]] dari matriks 2x2, yang didasarkan pada dua properti fundamental matriks: **Trace** dan **Determinan**.

---

## 1. Masalah: Cara Standar Terlalu Panjang

- **Cara Standar (dari Ch. 14):**
  1.  Bentuk matriks `A - λI`.
  2.  Hitung `det(A - λI) = 0` untuk mendapatkan persamaan karakteristik (polinomial kuadrat).
  3.  Gunakan rumus kuadrat (rumus ABC) untuk mencari akar-akar `λ`.
- **Kekurangan:** Proses ini mekanis dan melibatkan beberapa langkah aljabar.

---

## 2. Dua Fakta Kunci yang Mendasari Trik

"Trik" ini sebenarnya adalah aplikasi cerdas dari dua hubungan fundamental antara matriks dan eigenvalue-nya.

- **Fakta Kunci #1: Trace (Jejak)**
  - **Trace(A):** Jumlah dari elemen-elemen diagonal matriks `A`. `Tr(A) = a + d`.
  - **Hubungan:** **`Trace(A) = λ₁ + λ₂`**
    (Jumlah diagonal = **Jumlah** eigenvalue)

- **Fakta Kunci #2: Determinan**
  - **det(A):** `ad - bc`.
  - **Hubungan:** **`det(A) = λ₁ * λ₂`**
    (Determinan = **Perkalian** eigenvalue)
  - **Intuisi:** Peregangan total di seluruh area (`det`) adalah hasil dari perkalian peregangan di setiap arah [[Eigenvector]] (`λ₁ * λ₂`).

---

## 3. "Mesin Pencari Angka" (Teka-Teki Aljabar)

- **Masalah:** Jika kita tahu **Jumlah (`S`)** dan **Perkalian (`P`)** dari dua angka, bagaimana cara menemukan kedua angka itu dengan cepat?
- **Logika:**
  - Kedua angka itu pasti berada di sekitar nilai **rata-rata (`m = S/2`)**.
  - Bentuknya adalah `m + d` dan `m - d`, di mana `d` adalah jarak dari rata-rata.
  - Perkaliannya: `(m+d)(m-d) = m² - d² = P`.
  - Selesaikan untuk `d`: `d = √(m² - P)`.

- **Rumus Akhir:**
  > Dua angka tersebut adalah: **`m ± √(m² - P)`**
  > Di mana `m` adalah **rata-rata** dan `P` adalah **perkalian**.

---

## 4. Resep Trik Cepat untuk Eigenvalue 2x2

1.  Lihat matriks `A = [[a, b], [c, d]]`.
2.  Hitung **`m` (rata-rata dari Trace):** `m = (a+d)/2`.
3.  Hitung **`P` (Determinan):** `P = ad - bc`.
4.  Masukkan `m` dan `P` ke dalam "Mesin Pencari Angka":
    > **`λ₁, λ₂ = m ± √(m² - P)`**

- **Keuntungan:** Jauh lebih cepat dan lebih intuitif daripada menurunkan persamaan karakteristik dan menggunakan rumus ABC, karena `m` dan `P` bisa dihitung dengan cepat hanya dengan melihat matriks.

---
**Tags:** #linear-algebra #eigenvalues #trace #determinant #shortcuts #3b1b-essence-of-linear-algebra