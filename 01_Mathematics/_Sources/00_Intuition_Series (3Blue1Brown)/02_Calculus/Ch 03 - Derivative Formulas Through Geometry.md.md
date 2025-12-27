# Ch 03: Rumus Turunan Melalui Geometri

**Tujuan Bab:** Membangun intuisi geometris di balik beberapa rumus turunan dasar, agar kita paham dari mana mereka berasal, bukan hanya menghafal.

**Prinsip Utama:** Selalu kembali ke ide dasar [[Turunan]]: `d(output) / d(input)` (rasio perubahan kecil di output terhadap perubahan kecil di input).

---

## 1. Turunan dari `f(x) = x²` (Visualisasi Persegi)

- **Interpretasi Geometris `x²`:** Luas dari sebuah persegi dengan sisi `x`.
- **Eksperimen "Dorongan Kecil":**
  - **Input:** Sisi `x` kita beri "dorongan" kecil `dx`.
  - **Output:** Luas `f = x²` akan bertambah sebesar `df`.
- **Visualisasi `df`:** Penambahan luas `df` ini terdiri dari 2 strip utama dan 1 kotak super kecil.
  - **Perubahan Utama:** Dua persegi panjang tipis, masing-masing dengan luas `x * dx`.
  - **Perubahan yang Diabaikan:** Satu persegi super kecil di pojok dengan luas `(dx)²`. Saat `dx` sangat kecil, `(dx)²` menjadi **jauh lebih kecil lagi dan bisa diabaikan**.
- **Hubungan:** `df ≈ 2 * x * dx`
- **Hitung Turunannya:**
  `df / dx ≈ (2 * x * dx) / dx = 2x`
- **Kesimpulan:** **`d/dx (x²) = 2x`**.

---

## 2. Turunan dari `f(x) = x³` (Visualisasi Kubus)

- **Interpretasi Geometris `x³`:** Volume dari sebuah kubus dengan sisi `x`.
- **Eksperimen:** Sisi `x` bertambah sebesar `dx`. `df` adalah perubahan volume.
- **Visualisasi `df`:** Penambahan volume utamanya berasal dari **tiga "lembaran" tipis** yang menempel di tiga sisi kubus.
  - Setiap lembaran punya luas `x²` dan ketebalan `dx`. Volumenya = `x² * dx`.
- **Aproksimasi:** Bagian lain (garis-garis di rusuk dan titik di pojok) melibatkan `(dx)²` atau `(dx)³` dan bisa diabaikan.
- **Hubungan:** `df ≈ 3 * x² * dx`
- **Hitung Turunannya:** `df / dx ≈ (3 * x² * dx) / dx = 3x²`
- **Kesimpulan:** **`d/dx (x³) = 3x²`**.

---

## 3. Aturan Pangkat (Power Rule)

- **Pola Umum:** `d/dx (x²) = 2x¹`, `d/dx (x³) = 3x²`.
- **Aturan Umum:**
  > **`d/dx (xⁿ) = n * xⁿ⁻¹`**
- **Intuisi:** Perubahan utama pada "hyper-volume" `xⁿ` datang dari `n` buah "lembaran" `(n-1)`-dimensi.

---

## 4. Turunan dari `f(x) = 1/x` (Visualisasi Area Konstan)

- **Interpretasi Geometris `1/x`:** Jika sebuah persegi panjang punya **lebar `x`** dan **luas totalnya harus 1**, maka **tingginya pasti `1/x`**.
- **Eksperimen:** Kita tambah lebarnya sebesar `dx`. Agar luas tetap 1, tingginya harus berkurang sebesar `df`.
  - **Area Bertambah (kanan):** `Area_Gained ≈ Tinggi * dx = (1/x) * dx`.
  - **Area Berkurang (atas):** `Area_Lost ≈ Lebar * |df| = x * |df|`.
- **Hubungan (Keseimbangan):** `Area_Gained ≈ Area_Lost`
  `(1/x) * dx ≈ x * |df|`
- **Hitung Turunannya `df/dx`:**
  - Susun ulang: `|df| / dx ≈ 1/x²`.
  - Karena tingginya berkurang, `df` bernilai negatif.
- **Kesimpulan:** **`d/dx (1/x) = -1/x²`**. Ini cocok dengan Power Rule untuk `n=-1`.

---

## 5. Turunan dari `f(θ) = sin(θ)` (Visualisasi Lingkaran Satuan)

- **Interpretasi Geometris `sin(θ)`:** **Ketinggian (y)** dari sebuah titik di lingkaran satuan (radius 1) setelah berjalan sejauh `θ`.
- **Eksperimen:** Kita berjalan sedikit lagi di keliling sejauh `dθ`. Ketinggian bertambah sebesar `d(sinθ)`.
- **"Aha!" Moment Geometris (Zoom In):**
  - Jika di-zoom, busur `dθ` terlihat seperti **garis lurus** dan membentuk segitiga siku-siku kecil.
  - **Sisi Miring:** `dθ`.
  - **Sisi Vertikal:** `d(sinθ)`.
- **Kesamaan Segitiga:** Segitiga kecil ini **sebangun (similar)** dengan segitiga besar yang dibentuk oleh radius.
- **Hitung Turunannya:**
  - `d(sinθ) / dθ` dalam segitiga kecil ini adalah rasio `(sisi_samping_sudut_θ) / (sisi_miring)`.
  - Menurut definisi trigonometri, `samping/miring` adalah **`cos(θ)`**.
- **Kesimpulan:** **`d/dθ (sinθ) = cos(θ)`**.

---
**Tags:** #calculus #derivatives #geometry #power-rule #trigonometry #3b1b-essence-of-calculus