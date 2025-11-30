# Ch 08: Matriks Non-Persegi sebagai Transformasi

**Tujuan Bab:** Memberikan intuisi geometris untuk matriks yang "tidak persegi" (misal: 3x2 atau 2x3). Matriks seperti ini merepresentasikan transformasi antar ruang dengan **dimensi yang berbeda**.

---

## Aturan Membaca Matriks `m x n`

Untuk mengetahui transformasi ini dari mana ke mana, aturannya selalu sama:

1.  **Jumlah KOLOM (`n`) = Dimensi Ruang INPUT.**
    - **Alasan:** Jumlah kolom memberitahu kita ada berapa banyak vektor basis (`î`, `ĵ`, `k̂`, ...) di ruang awal kita.

2.  **Jumlah BARIS (`m`) = Dimensi Ruang OUTPUT.**
    - **Alasan:** Jumlah baris memberitahu kita ada berapa banyak koordinat yang dibutuhkan untuk mendeskripsikan tujuan akhir dari setiap vektor basis.

---

## Contoh Visual

### Kasus 1: Matriks `3x2` (Dari 2D ke 3D)

- **Membaca Matriks:**
  - **2 Kolom:** Input berasal dari ruang **2D**.
  - **3 Baris:** Output akan mendarat di ruang **3D**.

- **Visualisasi:**
  Bayangkan seluruh bidang 2D (seperti selembar kertas) "diangkat" dan ditempatkan di dalam ruang 3D.
  - **[[Column Space]]** (jangkauan output) dari transformasi ini adalah sebuah **bidang datar 2D** yang "mengambang" di dalam ruang 3D, melewati titik origin.
  - **[[Rank]]:** Transformasi ini dianggap **full rank** jika kolom-kolomnya [[Bebas Linear]], karena dimensi outputnya (2D) sama dengan dimensi inputnya (2D). Tidak ada informasi yang hilang/gepeng.

### Kasus 2: Matriks `2x3` (Dari 3D ke 2D)

- **Membaca Matriks:**
  - **3 Kolom:** Input berasal dari ruang **3D**.
  - **2 Baris:** Output akan mendarat di ruang **2D**.

- **Visualisasi:**
  Ini seperti **proyektor** yang mengambil objek 3D dan memproyeksikan bayangannya ke sebuah layar 2D.
  - Transformasi ini **meremukkan ruang** dan menghilangkan informasi (dimensi kedalaman).
  - [[Rank]]-nya pasti lebih rendah dari dimensi inputnya (maksimal 2).
  - Pasti ada [[Null Space]] yang bukan nol (sebuah garis berisi vektor-vektor yang bayangannya adalah titik nol).

### Kasus 3: Matriks `1x2` (Dari 2D ke 1D)

- **Membaca Matriks:**
  - **2 Kolom:** Input berasal dari ruang **2D**.
  - **1 Baris:** Output akan mendarat di ruang **1D** (sebuah garis bilangan).

- **Visualisasi:**
  Transformasi ini mengambil setiap vektor di bidang 2D dan memetakannya ke **satu angka tunggal**.
  - **Contoh:** Mengambil setiap titik di peta dan hanya memberikan "ketinggian"-nya.
  - Ini adalah fondasi visual untuk memahami [[Dualitas]] dan hubungannya dengan [[Dot Product]], seperti yang dibahas di bab selanjutnya.

---
**Tags:** #linear-algebra #nonsquare-matrices #dimensions #3b1b-essence-of-linear-algebra````