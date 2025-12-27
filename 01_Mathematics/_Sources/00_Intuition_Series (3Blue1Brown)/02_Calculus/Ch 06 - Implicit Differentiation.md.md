# Ch 06: Turunan Implisit

**Tujuan Bab:** Memahami teknik **Turunan Implisit**, dan membangun intuisi di balik "resep sihir" mekanisnya. Ini adalah alat untuk mencari kemiringan kurva yang **bukan** merupakan grafik fungsi `y = f(x)`.

---

## 1. Masalah Baru: Kurva Implisit

- **Grafik Fungsi Eksplisit:** `y = f(x)`. Untuk setiap `x`, hanya ada satu `y`. `x` adalah "input", `y` adalah "output".
- **Kurva Implisit:** Sebuah persamaan yang "mengikat" `x` dan `y` bersama-sama. Contoh: Lingkaran `x² + y² = 25`.
  - Di sini, `x` dan `y` adalah "partner" yang saling bergantung. Untuk satu `x`, bisa ada dua nilai `y`.
  - Lingkaran secara keseluruhan **bukan** sebuah fungsi `y(x)`.
- **Tujuan:** Kita tetap ingin mencari **kemiringan (`dy/dx`)** dari garis singgung pada kurva implisit ini.

---

## 2. "Resep Sihir" Turunan Implisit (Prosedur Mekanis)

- **Contoh:** `x² + y² = 25`
- **Langkah-langkah:**
  1.  **"Turunkan kedua sisi"** persamaan.
  2.  Saat menurunkan suku `x`, perlakukan seperti biasa tapi "tempelkan" `dx`: `d(x²) = 2x dx`.
  3.  Saat menurunkan suku `y`, perlakukan seperti biasa tapi "tempelkan" `dy`: `d(y²) = 2y dy`.
  4.  Turunan dari konstanta adalah 0: `d(25) = 0`.
- **Hasil:** `2x dx + 2y dy = 0`.
- **Selesaikan untuk `dy/dx`:**
  `2y dy = -2x dx`
  `dy / dx = -x / y`
- **Masalah:** Kenapa resep ini berhasil? Apa artinya "menempelkan" `dx` dan `dy`?

---

## 3. Intuisi Sebenarnya: Melihatnya sebagai Fungsi Multi-Variabel

- Untuk memahami "kenapa"-nya, definisikan sebuah **fungsi baru dengan dua input**: `s(x, y) = x² + y²`.
- **Visualisasi:** `s` adalah sebuah "peta ketinggian". Kurva lingkaran kita adalah **garis kontur** di peta ini, yaitu kumpulan semua titik di mana ketinggiannya adalah 25.

- **Apa Arti `ds` (Turunan Total)?**
  - `ds` menjawab pertanyaan: "Jika aku mengambil **langkah kecil acak** (`dx` ke kanan, `dy` ke atas), seberapa besar nilai `s` (ketinggian) akan berubah?"
  - Perubahan total `ds` adalah jumlah dari perubahan akibat `dx` dan perubahan akibat `dy`.
  - **`ds = (2x * dx) + (2y * dy)`**.
  - Ini adalah **turunan total (total derivative)**.

- **"Aha!" Moment:**
  - Apa artinya "tetap berada di atas kurva lingkaran"? Artinya, kita berjalan di sepanjang garis kontur `s = 25`. Ketinggian kita **TIDAK BOLEH BERUBAH**.
  - Ini berarti, perubahan total pada `s` harus **NOL**.
    > **`ds = 0`**
  - Jadi, syarat agar sebuah langkah kecil (`dx`, `dy`) tetap berada di sepanjang garis singgung lingkaran adalah:
    **`2x dx + 2y dy = 0`**

- **Kesimpulan:** "Resep sihir" tadi sebenarnya adalah pernyataan `ds = 0`. "Menempelkan `dx` dan `dy`" adalah cara cepat untuk menghitung perubahan total `ds` dan menyetarakannya dengan nol.

---

## 4. Aplikasi: Menemukan Turunan Fungsi Invers

- Turunan implisit adalah alat yang sangat kuat untuk menemukan turunan dari fungsi invers.
- **Contoh: Mencari turunan dari `y = ln(x)`**
  1.  **Ubah ke Bentuk Implisit:** `eʸ = x`. Kita melakukan ini karena kita sudah tahu turunan dari `eʸ`.
  2.  **Terapkan Turunan Implisit:** Cari perubahan total di kedua sisi (`d(...)`) dan samakan.
     - `d(eʸ) = eʸ dy` (menggunakan [[Aturan Rantai]]).
     - `d(x) = dx`.
  3.  **Samakan Perubahannya:** `eʸ dy = dx`.
  4.  **Selesaikan untuk `dy/dx`:** `dy / dx = 1 / eʸ`.
  5.  **Gantikan Kembali:** Karena `eʸ = x`, maka:
     > **`dy / dx = 1 / x`**

---
**Tags:** #calculus #derivatives #implicit-differentiation #related-rates #3b1b-essence-of-calculus