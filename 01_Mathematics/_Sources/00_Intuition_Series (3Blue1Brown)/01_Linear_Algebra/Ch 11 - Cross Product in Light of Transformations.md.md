# Ch 11: Cross Product dalam Sudut Pandang Transformasi

**Tujuan Bab:** Menjawab pertanyaan "KENAPA" trik determinan `det([î, v, w])` untuk [[Cross Product]] bisa berhasil. Jawabannya terletak pada konsep **[[Dualitas]]** yang diperluas ke 3D.

---

## 1. Ide Utama: Mengungkap Rahasia dengan Dualitas

- **Misteri:** Kenapa sebuah prosedur komputasi (trik determinan) bisa secara ajaib menghasilkan sebuah vektor dengan properti geometris yang sangat spesifik (arah tegak lurus, panjang = luas)?
- **Strategi:** Kita akan mendefinisikan sebuah [[Transformasi Linear]] 3D→1D yang aneh, lalu mencari "kembaran" [[Vektor]]-nya (vektor dual). Kita akan membuktikan bahwa kembaran ini adalah Cross Product.

---

## 2. Langkah Kunci: Menciptakan "Resep Aneh" 3D→1D

- Kita definisikan sebuah "mesin" (fungsi) baru, `f(u)`, yang bergantung pada dua vektor tetap `v` dan `w`.
- **Definisi "Resep" `f(u)`:**
  - **Input:** Sebuah vektor variabel `u = [x, y, z]`.
  - **Proses:** Buat matriks 3x3 dengan kolom-kolom `[u, v, w]`, lalu hitung determinannya.
  - **Output:** Sebuah **angka tunggal** (skalar).
  - **`f(u) = det([u, v, w])`**

- **Arti Geometris "Resep" Ini:** Mesin `f(u)` ini menghitung **Volume (dengan tanda)** dari balok miring (parallelepiped) yang dibentuk oleh `u`, `v`, dan `w`.

---

## 3. Menghubungkannya dengan Dualitas

- **Fakta Kunci:** Mesin `f(u) = det([u, v, w])` ini adalah sebuah **Transformasi Linear dari 3D ke 1D**.
- **Prinsip Dualitas:** Setiap transformasi linear 3D→1D **PASTI** memiliki satu **vektor dual unik `p`** di ruang 3D.
- **Kesimpulan Logis:**
  Maka, menjalankan mesin `f(u)` **HARUS SAMA PERSIS** dengan melakukan [[Dot Product]] dengan vektor `p` ini.
  > **`det([u, v, w]) = p · u`**

Tugas kita sekarang adalah **menemukan siapa sebenarnya vektor `p` ini**. Kita akan mencarinya lewat dua jalan yang berbeda.

---

## 4. Dua Jalan Menuju Jawaban (Menemukan `p`)

### Jalan 1: Komputasi (Mencari `p` Lewat Angka)

1.  Kita urai rumus `det([u, v, w])` dengan `u = [x, y, z]`.
2.  Hasilnya akan selalu berbentuk: `x*(angka₁) + y*(angka₂) + z*(angka₃)`.
3.  Bentuk ini secara definisi adalah dot product antara `[x, y, z]` dengan `[angka₁, angka₂, angka₃]`.
4.  Ternyata, `angka₁`, `angka₂`, `angka₃` adalah **persis sama** dengan formula komputasi dari Cross Product (`v₂w₃-w₂v₃`, dst.).
5.  **Kesimpulan dari Jalan Komputasi:** **`p` secara numerik sama dengan `v × w`**.

### Jalan 2: Geometris (Mencari `p` Lewat Gambar)

1.  Kita terjemahkan persamaan `p · u = det([u, v, w])` ke bahasa geometri:
    `(Panjang Proyeksi `u` ke `p`) * |p|` = `Volume Balok (u,v,w)`
2.  Kita juga tahu Volume Balok adalah `(Luas Alas `v,w`) * (Tinggi `u` dari alas)`.
3.  Agar kedua formula ini sama untuk semua `u`, maka **arah `p` harus sama dengan arah tinggi** (tegak lurus `v,w`), dan **panjang `p` harus sama dengan Luas Alas `v,w`**.
4.  Deskripsi ini ("arah tegak lurus, panjang = luas") adalah definisi geometris dari Cross Product.
5.  **Kesimpulan dari Jalan Geometris:** **`p` secara geometris adalah `v × w`**.

---

## 5. Kesimpulan Akhir: Misteri Terpecahkan

- Kedua perburuan (Komputasi dan Geometris) membuktikan bahwa "kembaran" (vektor dual `p`) dari transformasi volume `det([u, v, w])` adalah **`v × w`**.
- Oleh karena itu, trik hitung `det([î, v, w])` yang kita pakai di Chapter 10 **bukanlah sihir**. Itu adalah cara komputasi yang cerdik untuk **menemukan vektor dual `p`** (yang ternyata adalah `v × w`) dari transformasi volume tersebut.

---
**Tags:** #linear-algebra #cross-product #duality #transformations #3b1b-essence-of-linear-algebra