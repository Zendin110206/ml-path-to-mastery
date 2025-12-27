# Ch 04: Perkalian Matriks sebagai Komposisi

**Tujuan Bab:** Membangun intuisi geometris tentang apa arti dari **perkalian dua matriks**. Ini bukan sekadar operasi angka, melainkan sebuah **komposisi (penggabungan) dari dua transformasi linear**.

---

## Ide Utama: Melakukan Dua Transformasi Berturut-turut

- **Masalah:** Apa yang terjadi jika kita menerapkan satu transformasi (misal: Rotasi), lalu **dilanjutkan** dengan transformasi lain (misal: Shear)?
- **Jawabannya:** Hasil gabungan dari dua transformasi linear juga akan menjadi **satu transformasi linear baru** yang unik.
- **Komposisi:** Aksi "melakukan satu transformasi lalu yang lain" ini disebut **komposisi** transformasi.

**Perkalian Matriks** adalah cara numerik untuk menghitung matriks dari transformasi gabungan ini.

> **`M₂ * M₁`** secara geometris berarti: **Terapkan transformasi `M₁` DULU, lalu terapkan transformasi `M₂`.**

---

## Aturan Baca: Kanan ke Kiri

Sama seperti komposisi fungsi matematika `g(f(x))` di mana kita mengerjakan `f(x)` dulu, perkalian matriks juga dibaca dari **kanan ke kiri**.

- Dalam ekspresi `M₂ * M₁ * v`, urutan aksinya adalah:
  1.  Vektor `v` ditransformasi oleh `M₁`.
  2.  Hasilnya kemudian ditransformasi oleh `M₂`.

---

## Cara Menghitung (Tanpa Hafalan)

Untuk mencari matriks hasil `C = M₂ * M₁`, kita hanya perlu melacak di mana vektor basis `î` dan `ĵ` berakhir setelah melalui **DUA** transformasi.

- **Mencari Kolom Pertama `C` (Perjalanan `î`):**
  1.  Cari tahu di mana `î` mendarat setelah transformasi **`M₁`**. Ini adalah **kolom pertama dari `M₁`**.
  2.  Ambil vektor hasil dari langkah 1, lalu transformasikan lagi dengan **`M₂`**. Caranya adalah dengan mengalikan matriks `M₂` dengan vektor hasil tadi.
  3.  Hasil akhir dari perjalanan ini adalah **kolom pertama dari `C`**.
  > **Secara Rumus:** `Kolom_1_C = M₂ * (Kolom_1_M₁)`

- **Mencari Kolom Kedua `C` (Perjalanan `ĵ`):**
  1.  Prosesnya sama persis. Cari tahu di mana `ĵ` mendarat setelah transformasi **`M₁`** (ini adalah **kolom kedua dari `M₁`**).
  2.  Transformasikan lagi hasilnya dengan **`M₂`**.
  3.  Hasil akhir perjalanan `ĵ` adalah **kolom kedua dari `C`**.
  > **Secara Rumus:** `Kolom_2_C = M₂ * (Kolom_2_M₁)`

- **Visualisasi:**
  Bayangkan `î` dan `ĵ` melakukan perjalanan dua langkah. `M₁` adalah langkah pertama, `M₂` adalah langkah kedua. Matriks `C` adalah "jalan pintas" yang langsung membawa mereka dari titik awal ke tujuan akhir dalam satu langkah.

---

## Properti Penting (Dipahami, Bukan Dihafal)

### 1. Urutan itu PENTING (`A * B ≠ B * A`)
- **Sifat:** Perkalian matriks **Tidak Komutatif**.
- **Alasan Visual:** "Memutar lalu menggeser" (`Shear * Rotate`) memberikan hasil akhir yang **BERBEDA** dengan "menggeser lalu memutar" (`Rotate * Shear`).
- **Intuisi:** Urutan aksi di dunia nyata sangat penting, begitu pula dengan transformasi linear.

### 2. Pengelompokan Tidak Penting (`(A * B) * C = A * (B * C)`)
- **Sifat:** Perkalian matriks **Asosiatif**.
- **Alasan Visual:** Ini **BUKAN** tentang mengubah urutan aksi. Urutan fundamentalnya tetap sama: lakukan `C`, lalu `B`, lalu `A`.
- **Intuisi:** Tanda kurung hanya mengubah cara kita berpikir tentangnya:
  - `(AB)C`: "Lakukan `C`, lalu lakukan aksi gabungan `AB`."
  - `A(BC)`: "Lakukan aksi gabungan `BC`, lalu lakukan `A`."
  - Hasil akhirnya **pasti sama** karena urutan aksi (`C → B → A`) tidak pernah berubah.

---
**Tags:** #linear-algebra #matrix-multiplication #compositions #3b1b-essence-of-linear-algebra