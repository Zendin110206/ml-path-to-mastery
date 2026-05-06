# Ch 01: Apa Itu Vektor? (Intisari Aljabar Linear)

**Tujuan Bab:** Membangun intuisi fundamental tentang apa itu vektor dari berbagai sudut pandang dan menetapkan cara berpikir visual yang akan digunakan di seluruh seri.

---

## Tiga Sudut Pandang Tentang Vektor

Ada tiga cara utama untuk memandang [[Vektor]]:

1.  **Sudut Pandang Fisikawan:**
    - Vektor adalah **panah di dalam ruang**.
    - Yang terpenting adalah **panjang (magnitude)** dan **arah (direction)**.
    - Posisinya tidak penting; panah yang sama jika digeser tetap dianggap vektor yang sama.

2.  **Sudut Pandang Ilmuwan Komputer (CS):**
    - Vektor adalah **daftar angka yang terurut**.
    - Contoh: Data rumah bisa direpresentasikan sebagai vektor 2D `[luas, harga]`.
    - Urutan sangat penting. `[120, 500]` berbeda dengan `[500, 120]`.

3.  **Sudut Pandang Matematikawan:**
    - Vektor adalah **konsep abstrak** apa pun yang bisa **dijumlahkan** dan **diskalakan** dengan angka, selama mematuhi [[8 Aksioma Ruang Vektor]].
    - Ini adalah pandangan paling umum yang mencakup panah, daftar angka, bahkan [[Fungsi sebagai Vektor]].

## Sudut Pandang "Essence of Linear Algebra"

Untuk membangun intuisi, seri ini menggabungkan pandangan Fisika dan CS. Cara berpikir kita adalah:

> **Vektor adalah panah yang pangkalnya SELALU berada di titik nol (origin) dalam sebuah [[Sistem Koordinat]].**

- Vektor 2D: $\begin{bmatrix} x \\ y \end{bmatrix}$
- Vektor 3D: $\begin{bmatrix} x \\ y \\ z \end{bmatrix}$

Setiap vektor unik direpresentasikan oleh satu set koordinat unik, dan sebaliknya. Koordinat ini adalah **instruksi** untuk mencapai ujung panah dari titik nol.

---

## Dua Operasi Fundamental Vektor

Semua konsep di aljabar linear dibangun di atas dua operasi dasar ini.

### 1. Penjumlahan Vektor (Vector Addition)

- **Secara Visual (Metode Ujung-ke-Pangkal):**
  Untuk menghitung $\vec{v} + \vec{w}$, geser pangkal $\vec{w}$ ke ujung $\vec{v}$. Hasilnya adalah panah baru dari pangkal $\vec{v}$ ke ujung $\vec{w}$ yang baru.
  > **Intuisi:** Melakukan pergerakan $\vec{v}$, **dilanjutkan** dengan pergerakan $\vec{w}$.

- **Secara Angka:**
  Jumlahkan setiap komponen yang bersesuaian.
  $$ \begin{bmatrix} v_1 \\ v_2 \end{bmatrix} + \begin{bmatrix} w_1 \\ w_2 \end{bmatrix} = \begin{bmatrix} v_1 + w_1 \\ v_2 + w_2 \end{bmatrix} $$

### 2. Perkalian Skalar (Scalar Multiplication)

- **Secara Visual:**
  Mengalikan vektor $\vec{v}$ dengan sebuah angka (skalar) $c$ berarti **meregangkan atau mengerutkan** vektor $\vec{v}$ sebesar faktor $c$. Jika $c$ negatif, arahnya berbalik.
  > **Intuisi:** Mengubah skala atau "volume" dari sebuah vektor.

- **Secara Angka:**
  Kalikan setiap komponen dengan skalar $c$.
  $$ c \cdot \begin{bmatrix} v_1 \\ v_2 \end{bmatrix} = \begin{bmatrix} c \cdot v_1 \\ c \cdot v_2 \end{bmatrix} $$

---

## Jembatan Konsep

Kekuatan aljabar linear datang dari kemampuan untuk menerjemahkan bolak-balik antara:

1.  **Dunia Geometris (Panah):** Membantu kita membangun intuisi dan melihat pola.
2.  **Dunia Numerik (Angka):** Memungkinkan komputer untuk menghitung dan memanipulasi konsep-konsep geometris tersebut.

Memahami [[Penjumlahan Vektor]] dan [[Perkalian Skalar]] adalah langkah pertama untuk menguasai jembatan ini.

---
**Tags:** #linear-algebra #vectors #3b1b-essence-of-linear-algebra


