# Ch 04: Aturan Rantai dan Aturan Produk

**Tujuan Bab:** Membangun intuisi visual untuk dua aturan turunan yang paling penting: **[[Aturan Produk]]** (untuk `f*g`) dan **[[Aturan Rantai]]** (untuk `f(g(x))`).

---

## Tiga Cara Dasar Menggabungkan Fungsi

Fungsi yang rumit biasanya adalah gabungan dari fungsi-fungsi sederhana. Ada tiga cara dasar untuk menggabungkannya:
1.  **Penjumlahan:** `sin(x) + x²`
2.  **Perkalian:** `sin(x) * x²`
3.  **Komposisi (Fungsi di dalam Fungsi):** `sin(x²)`

Jika kita tahu cara menurunkan ketiga jenis kombinasi ini, kita bisa menurunkan fungsi sekompleks apa pun.

---

## 1. Aturan Penjumlahan (Sum Rule)

- **Rumus:** `d/dx (f + g) = (df/dx) + (dg/dx)`
  (Turunan dari jumlah = Jumlah dari turunan).
- **Intuisi Visual (Grafik Bertumpuk):**
  - Bayangkan grafik `f(x) + g(x)` sebagai tumpukan dari grafik `f(x)` dan `g(x)`.
  - Jika kita beri "dorongan kecil" `dx` pada input, total perubahan tinggi (`d(f+g)`) adalah **jumlah** dari perubahan tinggi `f` (`df`) ditambah perubahan tinggi `g` (`dg`).
  - `d(f+g) = df + dg`.
  - Bagi kedua sisi dengan `dx` untuk mendapatkan rumusnya. Logikanya sangat lurus.

---

## 2. Aturan Perkalian (Product Rule)

- **Rumus:** `d/dx (f * g) = f * (dg/dx) + g * (df/dx)`
- **Mnemonic (Jembatan Keledai):** "Left d-Right, Right d-Left" (Kiri kali turunan Kanan, ditambah Kanan kali turunan Kiri).
- **Intuisi Visual (Persegi Panjang yang Berubah):**
  - Bayangkan `f(x) * g(x)` sebagai **luas** dari sebuah persegi panjang dengan sisi `f(x)` dan `g(x)`.
  - Jika kita beri "dorongan kecil" `dx` pada input, kedua sisi persegi panjang akan berubah: sisi `f` bertambah sebesar `df`, dan sisi `g` bertambah sebesar `dg`.
  - **Perubahan total pada luas** (`d(f*g)`) berasal dari dua strip utama:
    1.  **Strip Kanan:** Luas = `f * dg`
    2.  **Strip Atas:** Luas = `g * df`
    *(Strip kecil di pojok `df*dg` bisa diabaikan karena sangat kecil).*
  - **Hubungan:** `d(f*g) ≈ (f * dg) + (g * df)`
  - Bagi kedua sisi dengan `dx` untuk mendapatkan rumusnya. Setiap suku merepresentasikan luas dari salah satu strip tambahan.

---

## 3. Aturan Rantai (Chain Rule)

- **Masalah:** Menurunkan fungsi komposisi, `f(g(x))` (fungsi di dalam fungsi).
- **Rumus:** `d/dx f(g(x)) = f'(g(x)) * g'(x)`
  (Turunan fungsi luar (dengan input tetap fungsi dalam), dikali turunan fungsi dalam).
- **Intuisi Visual (Efek Domino / Tiga Garis Bilangan):**
  1.  Bayangkan tiga garis bilangan: `x`, `g(x)`, dan `f(g(x))`.
  2.  Sebuah "dorongan kecil" **`dx`** di garis pertama menyebabkan "dorongan" **`dg`** di garis kedua.
  3.  "Dorongan" **`dg`** di garis kedua menyebabkan "dorongan" **`df`** di garis ketiga.

- **Logika Rantai:**
  - Kita tahu hubungan antara `dg` dan `dx` (dari turunan `g`): `dg ≈ g'(x) * dx`.
  - Kita tahu hubungan antara `df` dan `dg` (dari turunan `f`): `df ≈ f'(g) * dg`.

- **Gabungkan Rantainya:**
  `df ≈ f'(g) * (g'(x) * dx)`

- **Selesaikan untuk `df/dx`:**
  > **`df / dx ≈ f'(g(x)) * g'(x)`**

- **Intuisi Notasi Leibniz:**
  `df/dx = (df/dg) * (dg/dx)`.
  Secara intuitif, `dg` terlihat seperti bisa "dicoret", meninggalkan `df/dx`. Ini adalah cerminan dari bagaimana efek domino perubahan kecil itu menyebar.

---
**Tags:** #calculus #derivatives #chain-rule #product-rule #3b1b-essence-of-calculus