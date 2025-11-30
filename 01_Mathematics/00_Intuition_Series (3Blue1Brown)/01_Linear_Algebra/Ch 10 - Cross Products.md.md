# Ch 10: Cross Product

**Tujuan Bab:** Membangun intuisi geometris untuk **Cross Product**, baik dalam versi 2D yang disederhanakan maupun versi 3D yang sesungguhnya, dan melihat bagaimana ia berhubungan dengan [[Determinan]].

---

## 1. Cross Product di 2D (Versi Sederhana)

- **Ide Utama:** `v × w` di 2D menghasilkan **sebuah ANGKA (skalar)**, bukan vektor.
- **Arti Geometris:** Angka ini adalah **Luas Jajar Genjang** yang dibentuk oleh $\vec{v}$ dan $\vec{w}$, tapi dengan **tanda (positif/negatif)** yang menunjukkan orientasi.

- **Aturan Tanda (Orientasi):**
  - **Positif (+):** Jika $\vec{v}$ berada di sisi **kanan** dari $\vec{w}$.
  - **Negatif (-):** Jika $\vec{v}$ berada di sisi **kiri** dari $\vec{w}$.
  - **Intuisi:** Urutan mendefinisikan orientasi. Karena $\hat{i}$ (sumbu x) berada di kanan $\hat{j}$ (sumbu y) jika dilihat dari atas, maka `î × ĵ` harus positif.

- **Cara Hitung (Hubungan dengan Determinan):**
  1.  Buat matriks 2x2.
  2.  Kolom 1 diisi dengan koordinat $\vec{v}$.
  3.  Kolom 2 diisi dengan koordinat $\vec{w}$.
  4.  Hitung **determinannya**. Hasilnya adalah nilai cross product $\vec{v} \times \vec{w}$.
  
  > **Kenapa ini berhasil?** Karena [[Determinan]] secara definisi adalah faktor pengali area yang juga menyimpan informasi tentang perubahan orientasi (tanda positif/negatif).

---

## 2. Cross Product di 3D (Versi Sebenarnya)

- **Ide Utama:** $\vec{v} \times \vec{w}$ di 3D menghasilkan **sebuah VEKTOR BARU** ($\vec{p}$).
- **Esensi:** Vektor baru $\vec{p}$ ini adalah "rangkuman" sempurna dari permukaan 2D yang dibentuk oleh $\vec{v}$ dan $\vec{w}$ di dalam ruang 3D.

- **Properti Vektor Hasil `p`:**
  1.  **Panjang (`|p|`):** Sama dengan **Luas Jajar Genjang** yang dibentuk oleh $\vec{v}$ dan $\vec{w}$.
  2.  **Arah:** **Tegak lurus (perpendicular)** terhadap bidang yang dibentuk oleh $\vec{v}$ dan $\vec{w}$.

- **Menentukan Arah Tegak Lurus (Aturan Tangan Kanan):**
  Dari dua kemungkinan arah yang tegak lurus, pilih yang sesuai aturan:
  1.  Jari Telunjuk → arah $\vec{v}$.
  2.  Jari Tengah → arah $\vec{w}$.
  3.  **Jempol** → arah $\vec{v} \times \vec{w}$.

- **Visualisasi:** Bayangkan sebuah "tiang bendera" ($\vec{p}$) yang ditancapkan di atas "permukaan meja" ($\vec{v}$, $\vec{w}$). Arah tiang memberitahu orientasi permukaan, dan tinggi tiang memberitahu luas permukaan.

- **Cara Hitung (Trik Determinan 3D):**
  Ini adalah sebuah "trik notasi" untuk menghitung.
  1.  Buat matriks 3x3.
  2.  **Kolom 1:** Isi dengan vektor basis $\hat{i}, \hat{j}, \hat{k}$ (secara simbolik).
  3.  **Kolom 2:** Isi dengan koordinat $\vec{v}$.
  4.  **Kolom 3:** Isi dengan koordinat $\vec{w}$.
  5.  Hitung **determinannya** seolah-olah $\hat{i}, \hat{j}, \hat{k}$ adalah angka.

  $$ \vec{v} \times \vec{w} = \det \begin{pmatrix} \hat{i} & v_1 & w_1 \\ \hat{j} & v_2 & w_2 \\ \hat{k} & v_3 & w_3 \end{pmatrix} $$

  > **Kenapa trik ini berhasil?** Ini bukan kebetulan. Alasannya akan dijelaskan di bab selanjutnya menggunakan konsep **[[Dualitas]]**