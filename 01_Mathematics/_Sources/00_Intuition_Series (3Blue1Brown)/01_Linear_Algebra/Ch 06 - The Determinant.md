# Ch 06: Determinan

**Tujuan Bab:** Membangun intuisi geometris tentang apa itu **Determinan**. Ini bukan sekadar angka dari rumus `ad-bc`, melainkan sebuah konsep fundamental yang mengukur efek dari sebuah transformasi.

---

## Ide Utama: Faktor Pengali Area

> **Determinan** dari sebuah transformasi linear adalah **faktor pengali** yang memberitahu seberapa besar sebuah **area** diregangkan atau dikerutkan oleh transformasi tersebut.

- **Visualisasi Kunci:**
  1.  Bayangkan sebuah **persegi 1x1** yang dibentuk oleh vektor basis `î` dan `ĵ`. Luas awalnya adalah 1.
  2.  Terapkan sebuah transformasi. Persegi itu akan berubah bentuk menjadi sebuah **jajar genjang**.
  3.  **Determinan** dari transformasi itu adalah **luas dari jajar genjang baru** tersebut.

- **Contoh:**
  - `det(A) = 6`: Transformasi `A` meregangkan semua area menjadi 6x lebih besar.
  - `det(A) = 0.5`: Transformasi `A` mengerutkan semua area menjadi setengahnya.
  - `det(A) = 1`: Transformasi `A` (seperti Shear) mungkin mengubah bentuk, tapi **tidak mengubah luas**.

**Penting:** Faktor pengali ini berlaku untuk **semua area**, tidak hanya untuk persegi 1x1. Jika sebuah transformasi melipatgandakan luas satu persegi kecil, ia akan melipatgandakan luas lingkaran atau bentuk aneh lainnya dengan faktor yang sama.

---

## Kasus Super Penting: `det(A) = 0`

- **Arti Geometris:**
  Jika determinan adalah nol, artinya transformasi tersebut **"meremukkan" atau "memipihkan"** seluruh ruang menjadi dimensi yang lebih rendah.
  - Di 2D: Seluruh bidang 2D dipipihkan menjadi sebuah **garis lurus (1D)** atau bahkan sebuah **titik (0D)**.
  - Akibatnya, semua bentuk yang tadinya punya area, sekarang punya **area nol**.

- **Hubungan dengan Vektor:**
  `det(A) = 0` terjadi jika dan hanya jika kolom-kolom matriks `A` **[[Bergantung Linear]]**.
  - **Visualisasi:** Jika `î_baru` dan `ĵ_baru` berada di garis yang sama (kolinear), maka jajar genjang yang mereka bentuk akan "gepeng" dan tidak punya luas.

- **Kegunaan:** Mengecek apakah `det(A) = 0` adalah cara cepat untuk mengetahui apakah sebuah transformasi menghilangkan informasi (membuang satu dimensi).

---

## Apa Arti Determinan Negatif?

Determinan negatif berhubungan dengan **orientasi** ruang.

- **Visualisasi Orientasi:**
  - **Normal:** Di sistem koordinat standar, `ĵ` berada di **kiri** dari `î`.
  - **Terbalik (Inverted):** Setelah transformasi, jika `ĵ_baru` sekarang berada di **kanan** dari `î_baru`, maka orientasi ruang telah terbalik.
  - **Intuisi:** Ini seperti "membalik selembar kertas".

- **Aturan Tanda Determinan:**
  - **`det(A) > 0` (Positif):** Orientasi ruang **tidak berubah**.
  - **`det(A) < 0` (Negatif):** Orientasi ruang **terbalik**.

- **Nilai Absolut:**
  Nilai absolut dari determinan, `|det(A)|`, tetap merupakan **faktor pengali area**.
  - **Contoh:** `det(A) = -3` artinya:
    1.  Ruang dibalik orientasinya.
    2.  Semua area diregangkan menjadi 3x lipat.

---

## Determinan di 3D

- **Ide Utama:** Sama persis, tapi untuk **VOLUME**.
- **Visualisasi Kunci:**
  1.  Bayangkan sebuah **kubus 1x1x1** yang dibentuk oleh `î`, `ĵ`, `k̂`. Volume awalnya 1.
  2.  Setelah transformasi, kubus itu berubah menjadi sebuah **balok miring (parallelepiped)**.
  3.  **Determinan** adalah **volume dari balok miring** tersebut.

- **`det(A) = 0` di 3D:**
  - Ruang 3D dipipihkan menjadi sebuah **bidang (2D)**, **garis (1D)**, atau **titik (0D)**.
  - Terjadi jika kolom-kolomnya [[Bergantung Linear]].

- **Determinan Negatif di 3D:**
  - Orientasi 3D ditentukan oleh **Aturan Tangan Kanan**.
  - Jika setelah transformasi, basisnya hanya bisa digambarkan dengan Aturan Tangan Kiri, maka orientasinya terbalik dan determinannya negatif.

---
**Tags:** #linear-algebra #determinant #3b1b-essence-of-linear-algebra````