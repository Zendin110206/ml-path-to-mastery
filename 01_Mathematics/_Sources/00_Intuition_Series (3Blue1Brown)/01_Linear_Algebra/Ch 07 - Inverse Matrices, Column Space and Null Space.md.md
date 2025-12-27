# Ch 07: Matriks Invers, Column Space, dan Null Space

**Tujuan Bab:** Memberikan intuisi geometris untuk **sistem persamaan linear** dan memperkenalkan konsep-konsep kunci yang muncul darinya, seperti Matriks Invers, Column Space, Rank, dan Null Space.

---

## Sistem Persamaan Linear sebagai Transformasi

Sebuah sistem persamaan linear seperti:
$$ -4x + 2y = 7 $$
$$ -x + 0y = -8 $$

dapat ditulis ulang dalam bentuk perkalian matriks-vektor yang ringkas: **`A * x_vektor = v_output`**.

$$ \begin{bmatrix} -4 & 2 \\ -1 & 0 \end{bmatrix} \begin{bmatrix} x \\ y \end{bmatrix} = \begin{bmatrix} 7 \\ -8 \end{bmatrix} $$

- **Interpretasi Geometris:**
  Ini adalah sebuah "teka-teki terbalik".
  > "Vektor tak dikenal `x_vektor` **mana**, yang setelah melalui transformasi `A`, akan **mendarat** di vektor `v_output`?"

---

## Solusi #1: Matriks Invers (`A⁻¹`) - "Memutar Balik Waktu"

- **Kapan Ini Bekerja?**
  Hanya jika `det(A) ≠ 0`. Artinya, transformasi `A` **tidak meremukkan ruang** menjadi dimensi yang lebih rendah. Setiap output hanya berasal dari satu input unik.

- **Apa itu `A⁻¹` (A-invers)?**
  - `A⁻¹` adalah sebuah transformasi "lawan" yang **membatalkan** aksi `A`.
  - **Visualisasi:** Jika `A` adalah rotasi 90° ke kiri, `A⁻¹` adalah rotasi 90° ke kanan. Jika `A` adalah shear ke kanan, `A⁻¹` adalah shear ke kiri.
  - **Secara Aljabar:** `A⁻¹ * A = I` (Matriks Identitas, atau transformasi "tidak melakukan apa-apa").

- **Bagaimana Menggunakannya untuk Menyelesaikan `Ax = v`?**
  1.  Mulai dari `Ax = v`.
  2.  Kalikan kedua sisi dari kiri dengan `A⁻¹`: `A⁻¹(Ax) = A⁻¹v`.
  3.  Sederhanakan: `(A⁻¹A)x = A⁻¹v` → `Ix = A⁻¹v` → **`x = A⁻¹v`**.

- **Intuisi Geometris:**
  Untuk menemukan `x` yang asli, kita tinggal **"memutar balik waktu"**. Ambil `v_output` dan lihat ke mana ia pergi setelah melalui transformasi `A⁻¹`.

---

## Solusi #2: Jika `det(A) = 0` (Ruang "Gepeng")

- Jika `det(A) = 0`, transformasi `A` meremukkan ruang.
- **Tidak ada `A⁻¹`**. Kamu tidak bisa "mengembalikan" sebuah garis yang sudah gepeng menjadi sebuah bidang.
- Solusi untuk `Ax = v` **mungkin ada, mungkin juga tidak**.
  - **Solusi ada** jika `v_output` kebetulan berada di dalam ruang yang sudah gepeng (garis/bidang).
  - **Solusi tidak ada** jika `v_output` berada di luar ruang yang gepeng itu.
- Kita butuh bahasa yang lebih presisi untuk mendeskripsikan "tingkat kegepengan" ini.

---

## Column Space & Rank - "Jangkauan Output"

- **Column Space (Ruang Kolom):**
  - **Definisi:** Himpunan **SEMUA output yang mungkin** dari sebuah transformasi `A`.
  - **Visualisasi:** Bisa berupa sebuah garis, sebuah bidang, atau seluruh ruang.
  - **Kenapa Namanya Itu?** Karena ini adalah **[[Span]]** dari **kolom-kolom matriks `A`** (tujuan `î` & `ĵ`).

- **Rank:**
  - **Definisi:** **Dimensi** dari Column Space.
  - `Rank = 1`: Outputnya adalah sebuah garis.
  - `Rank = 2` (di 3D): Outputnya adalah sebuah bidang.
  - **"Full Rank"**: Rank setinggi mungkin (sama dengan jumlah kolom/dimensi input). Ini adalah nama lain untuk kondisi `det(A) ≠ 0` (untuk matriks persegi).

---

## Null Space (Kernel) - "Pasukan yang Lenyap ke Titik Nol"

- **Null Space (Ruang Nol) atau Kernel:**
  - **Definisi:** Himpunan **SEMUA vektor input** yang setelah ditransformasi, mendarat di **titik nol (origin)**.
  - Ini adalah solusi untuk persamaan spesial `Ax = 0`.

- **Kapan Ini Menarik?**
  - **Full Rank (`det(A) ≠ 0`):** Hanya vektor nol `[0,0]` yang masuk ke Null Space.
  - **Tidak Full Rank (`det(A) = 0`):** Bisa ada **satu garis penuh** atau bahkan **satu bidang penuh** berisi vektor-vektor yang semuanya "lenyap" ke titik nol.

- **Visualisasi:**
  Bayangkan transformasi yang meremukkan bidang 2D menjadi sebuah garis. Akan ada satu garis lain (Null Space) yang semua vektornya "gepeng" menjadi titik nol.

---
**Tags:** #linear-algebra #inverse-matrix #column-space #null-space #rank #3b1b-essence-of-linear-algebra