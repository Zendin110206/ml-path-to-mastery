# Peta Konsep Intuitif: Intisari Aljabar Linear (3Blue1Brown)

Dokumen ini adalah ringkasan super cepat dari ide-ide besar di setiap bab. Tujuannya adalah untuk menjadi pemicu memori, bukan penjelasan lengkap.

**Filosofi Utama:** Aljabar Linear adalah jembatan antara dunia **Geometri (Visual)** dan dunia **Aljabar (Komputasi)**.

---

- **Ch 1: Vektor**
  > Vektor adalah "panah dari titik nol". Koordinatnya adalah "instruksi" untuk mencapai ujung panah itu.

- **Ch 2: Kombinasi Linear, Span, Basis**
  > Koordinat adalah "resep". **[[Span]]** adalah "jangkauan" yang bisa dicapai dengan resep itu. **[[Basis]]** adalah "bahan dasar" yang paling efisien (tidak ada yang sia-sia).

- **Ch 3: Transformasi Linear & Matriks**
  > **[[Matriks]] adalah sebuah [[Transformasi Linear]] (aksi yang mengubah ruang secara "sopan")**. Kolom-kolom matriks adalah tujuan akhir dari vektor basis `î` dan `ĵ`.

- **Ch 4: Perkalian Matriks**
  > Perkalian matriks `M₂ * M₁` berarti **melakukan aksi `M₁` DULU, lalu dilanjutkan aksi `M₂`**. Urutan dibaca dari kanan ke kiri.

- **Ch 5: Determinan**
  > Determinan adalah **"faktor pengali area (2D) atau volume (3D)"**.
  > - `det > 0`: Area membesar/mengecil.
  > - `det < 0`: Area membesar/mengecil DAN orientasi ruang terbalik.
  > - `det = 0`: Ruang menjadi "gepeng" ke dimensi yang lebih rendah.

- **Ch 7: Invers, Column Space, Null Space**
  > Menyelesaikan `Ax = v` adalah "teka-teki terbalik".
  > - **[[Matriks Invers]] (`A⁻¹`):** Aksi "memutar balik waktu" (hanya ada jika `det(A) ≠ 0`).
  > - **[[Column Space]]:** "Jangkauan output" dari transformasi.
  > - **[[Null Space]]:** Kumpulan semua vektor input yang "lenyap" menjadi titik nol.

- **Ch 8: Matriks Non-Persegi**
  > Transformasi **antar dimensi**. Aturan bacanya: `(Baris x Kolom)` → `(Dimensi Output x Dimensi Input)`.

- **Ch 9: Dot Product & Dualitas**
  > - **Secara Geometris:** Mengukur **proyeksi** atau "kesejajaran".
  > - **Secara Mendalam ([[Dualitas]]):** Setiap transformasi `nD→1D` ("aksi") punya "kembaran" berupa satu vektor unik ("benda"). Menjalankan aksi itu sama dengan melakukan dot product dengan benda kembarannya.

- **Ch 10: Cross Product**
  > **Intuisi:** Sebuah "tiang bendera" yang merepresentasikan sebuah permukaan.
  > - **Arah Tiang:** Tegak lurus terhadap permukaan (Aturan Tangan Kanan).
  > - **Tinggi Tiang:** Sama dengan luas permukaan.

- **Ch 11: Cross Product & Dualitas (Lanjutan)**
  > Menjawab **"KENAPA"** trik determinan `det([î, v, w])` berhasil. Itu adalah cara cerdik untuk menemukan "kembaran" (vektor dual) dari sebuah transformasi volume.

- **Ch 12: Aturan Cramer**
  > Sebuah aplikasi geometris yang indah. Idenya adalah menggunakan **AREA** sebagai "alat ukur" untuk koordinat, karena perubahannya (tidak seperti dot product) bisa diprediksi oleh determinan.

- **Ch 13: Perubahan Basis**
  > Vektor itu sama, tapi **"bahasa" (sistem koordinat) untuk mendeskripsikannya bisa berbeda**.
  > - **`A⁻¹ M A`** adalah formula "empati matematis": melihat transformasi `M` dari "sudut pandang" basis lain.

- **Ch 14: Eigenvectors & Eigenvalues**
  > - **[[Eigenvector]]:** Vektor "nurut" yang tidak berubah arah, hanya diregangkan/dikerutkan oleh transformasi. Mereka adalah "sumbu aksi" dari sebuah transformasi.
  > - **[[Eigenvalue]] (`λ`):** Faktor peregangan/pengerutan dari eigenvector tersebut.

- **Ch 15: Trik Eigenvalue**
  > Jalan pintas untuk matriks 2x2. Didasarkan pada dua fakta:
  > - **`Trace(A) = λ₁ + λ₂`** (Jumlah diagonal = Jumlah eigenvalue)
  > - **`det(A) = λ₁ * λ₂`** (Determinan = Perkalian eigenvalue)

- **Ch 16: Ruang Vektor Abstrak**
  > Jawaban akhir: "Vektor" bukanlah benda spesifik. Ia adalah **elemen dari sebuah [[Ruang Vektor]]**—sebuah "klub" berisi benda apa pun (panah, angka, fungsi) yang bisa **dijumlahkan** dan **diskalakan** sesuai 8 aturan (aksioma) yang berlaku.