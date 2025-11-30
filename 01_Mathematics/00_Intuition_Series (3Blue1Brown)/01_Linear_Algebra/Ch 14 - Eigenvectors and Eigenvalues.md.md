# Ch 14: Eigenvectors dan Eigenvalues

**Tujuan Bab:** Membangun intuisi di balik **[[Eigenvector]]** dan **[[Eigenvalue]]**, dan memahami mengapa mereka sangat penting untuk "merangkum" esensi dari sebuah [[Transformasi Linear]].

---

## 1. Ide Utama: Vektor Spesial yang Tidak Berubah Arah

- **Masalah:** Kebanyakan vektor, setelah melalui sebuah transformasi, akan "terlempar" dari garis span-nya (berubah arah).
- **Eigenvector:** Adalah **vektor spesial** yang, setelah transformasi, tetap berada di **garis span-nya sendiri**.
- **Artinya:** Transformasi tersebut hanya **meregangkan (stretch)** atau **mengerutkan (squish)** eigenvector, tanpa mengubah arah dasarnya. Vektor hasil adalah kelipatan skalar dari vektor asli.

- **Visualisasi:** Bayangkan sebuah arus sungai. Kebanyakan tongkat akan berputar dan berubah arah. Eigenvector adalah tongkat yang hanya bergerak maju atau mundur di sepanjang arusnya tanpa berputar.

- **Eigenvalue (`λ`):** Adalah **faktor pengali** peregangan/pengerutan tersebut.
  - `λ > 1`: Vektor diregangkan.
  - `0 < λ < 1`: Vektor dikerutkan.
  - `λ < 0`: Vektor dibalik arahnya.
  - `λ = 1`: Vektor tidak berubah sama sekali.

---

## 2. Kenapa Ini Berguna? Menyederhanakan Transformasi

- Eigenvector/value memberikan **"sumbu aksi"** dari sebuah transformasi yang kompleks.
- **Contoh Paling Intuitif (Rotasi 3D):**
  - Matriks rotasi 3x3 sangat rumit.
  - **Eigenvector** dari rotasi adalah **sumbu rotasi**-nya (satu-satunya arah yang tidak berubah).
  - **Eigenvalue**-nya pasti `λ = 1` (karena rotasi tidak meregangkan).
  - Memahami rotasi sebagai "sebuah sumbu dan sudut putar" jauh lebih mudah daripada melihat matriks 3x3-nya.

---

## 3. Cara Menemukannya (Logika, Bukan Hafalan)

- **Definisi Aljabar:** `A * v = λ * v`
  - Kita mencari `v` (bukan nol) dan `λ` yang membuat persamaan ini benar.

- **Langkah-Langkah Logika:**
  1.  Ubah persamaan menjadi **`(A - λI) * v = 0`**. (`I` adalah matriks identitas).
  2.  Kita mencari vektor `v` yang **bukan nol** yang setelah ditransformasi oleh matriks baru `(A - λI)`, hasilnya menjadi **vektor nol**.
  3.  Ini hanya mungkin jika transformasi `(A - λI)` **"meremukkan" ruang** ke dimensi yang lebih rendah (memiliki [[Null Space]] yang bukan hanya titik nol).
  4.  Sebuah transformasi "meremukkan" ruang jika dan hanya jika **determinannya adalah nol**.
  5.  **Jadi, tugas kita adalah:** Mencari nilai `λ` yang membuat **`det(A - λI) = 0`**.

- **Proses Praktis:**
  1.  Selesaikan persamaan `det(A - λI) = 0` untuk menemukan semua nilai `λ` (eigenvalue).
  2.  Untuk setiap `λ` yang ditemukan, masukkan kembali ke `(A - λI) * v = 0` dan selesaikan untuk `v` untuk menemukan [[Eigenvector]] yang bersesuaian.

---

## 4. Eigenbasis: "Sistem Koordinat Sempurna"

- **Matriks Diagonal:** Jika sebuah matriks berbentuk diagonal, maka [[Vektor Basis]]-nya (`î`, `ĵ`) adalah eigenvector, dan entri diagonalnya adalah eigenvalue-nya.
- **Ide [[Perubahan Basis]]:**
  - Jika sebuah transformasi punya cukup banyak eigenvector untuk merentang seluruh ruang, kita bisa **berpindah ke sistem koordinat di mana eigenvector itu adalah basisnya**.
  - **Eigenbasis:** Sebuah himpunan vektor basis yang semuanya adalah eigenvector.
- **Keuntungan:**
  - Di "dunia" eigenbasis ini, matriks transformasinya akan menjadi **matriks diagonal** yang sangat sederhana.
  - Ini membuat perhitungan yang rumit (seperti `A^100`) menjadi sangat mudah. Caranya:
    1.  Pindah ke dunia eigenbasis (`D = P⁻¹AP`).
    2.  Lakukan perhitungan mudah di sana (`D^100`).
    3.  Pindah kembali ke dunia kita (`A^100 = PD^100P⁻¹`).

---
**Tags:** #linear-algebra #eigenvectors #eigenvalues #eigenbasis #change-of-basis #3b1b-essence-of-linear-algebra