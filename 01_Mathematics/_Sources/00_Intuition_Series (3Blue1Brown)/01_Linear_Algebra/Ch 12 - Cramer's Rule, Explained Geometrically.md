
# Ch 12: Aturan Cramer, Dijelaskan Secara Geometris

**Tujuan Bab:** Memberikan intuisi geometris di balik **Aturan Cramer**, sebuah metode (meskipun tidak efisien secara komputasi) untuk menyelesaikan sistem persamaan linear `A * x_vektor = v_output`.

---

## 1. Ide Gagal (Tapi Penting): [[Dot Product]]

- **Ide Awal:** Di dunia input, kita bisa "mengekstrak" koordinat dengan dot product (misal, `y = v · ĵ`).
- **Harapan:** Mungkin aturan ini masih berlaku di dunia output: `y = v_baru · ĵ_baru`?
- **Kenapa Gagal:** Karena [[Transformasi Linear]] pada umumnya **tidak mempertahankan dot product** (sudut dan panjang berubah). `î` dan `ĵ` yang tadinya tegak lurus, setelah transformasi (`î_baru`, `ĵ_baru`) menjadi tidak tegak lurus.

---

## 2. Ide Brilian: Mengganti "Alat Ukur" dari Panjang ke AREA

- Kita butuh "alat ukur" yang perubahannya setelah transformasi bisa kita **prediksi**. Alat itu adalah **Area (yang dihitung dengan [[Determinan]])**.
- **Alat Ukur Baru untuk `y`:**
  - `y = det([î, v])`
  - **Arti Geometris:** Koordinat `y` dari vektor `v=[x,y]` sama dengan **luas bertanda** dari jajar genjang yang dibentuk oleh `î` dan `v`.
  - **Visualisasi:** Bayangkan jajar genjang dengan alas `î` (panjang 1). Tingginya adalah `y`. Maka, `Luas = alas * tinggi = 1 * y = y`.

- **Alat Ukur Baru untuk `x`:**
  - `x = det([v, ĵ])`
  - **Arti Geometris:** Koordinat `x` dari vektor `v` sama dengan **luas bertanda** dari jajar genjang yang dibentuk oleh `v` dan `ĵ`.

---

## 3. Menurunkan Aturan Cramer (Contoh untuk `y`)

1.  **Di Dunia Input:**
    `Luas_Awal = y` (dari jajar genjang `[î, v]`).

2.  **Setelah Transformasi `A`:**
    - `î` menjadi `î_baru` (Kolom 1 dari `A`).
    - `v` menjadi `v_baru` (`v_output`).
    - Jajar genjangnya menjadi jajar genjang baru yang dibentuk `[î_baru, v_baru]`.

3.  **Hubungan Luas (Aturan Emas Determinan):**
    `Luas_Baru = Luas_Awal * det(A)`
    `Luas_Baru = y * det(A)`

4.  **Selesaikan untuk `y`:**
    > **`y = Luas_Baru / det(A)`**

5.  **Hitung `Luas_Baru`:**
    `Luas_Baru` adalah luas jajar genjang `[î_baru, v_baru]`, yang dihitung sebagai:
    `det([î_baru, v_baru]) = det([Kolom_1_A, v_output])`

---

## 4. Rumus Akhir: Aturan Cramer

- **Untuk `y`:**
  $$ y = \frac{\det(\begin{bmatrix} \text{Kolom}_1 A & \vec{v}_{output} \end{bmatrix})}{\det(A)} $$

- **Untuk `x`:** (dengan logika yang sama)
  $$ x = \frac{\det(\begin{bmatrix} \vec{v}_{output} & \text{Kolom}_2 A \end{bmatrix})}{\det(A)} $$

- **Intuisi:**
  Untuk mencari koordinat `x`, kita ganti kolom `x` (kolom pertama) di matriks `A` dengan vektor output, lalu hitung determinannya, dan bagi dengan determinan `A` asli. Hal yang sama berlaku untuk `y` (mengganti kolom kedua).

- **Generalisasi ke 3D:**
  Prinsipnya sama persis, tapi kita menggunakan **VOLUME** sebagai "alat ukur" koordinat. Misalnya, `z = det([î, ĵ, v])`.

**Kesimpulan:** Aturan Cramer adalah konsekuensi geometris yang indah dari dua ide: (1) Koordinat dapat direpresentasikan sebagai area/volume, dan (2) Determinan secara konsisten menskalakan semua area/volume.

---
**Tags:** #linear-algebra #cramers-rule #determinant #systems-of-equations #3b1b-essence-of-linear-algebra