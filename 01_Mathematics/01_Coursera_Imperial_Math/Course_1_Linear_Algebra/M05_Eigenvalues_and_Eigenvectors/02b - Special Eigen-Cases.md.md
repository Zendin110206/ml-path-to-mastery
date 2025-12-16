Oke, video kedua ini membahas **"Kasus Spesial"** dari Eigenvector yang sering menjebak atau punya arti fisik yang unik.

Mari kita bahas satu per satu kasus spesialnya biar kamu langsung "klik" intuisinya.

### 1. Kasus "Zoom In/Out" (Uniform Scaling) 🔍

Bayangkan kamu punya foto di HP, lalu kamu zoom in (perbesar) 2x lipat.

Apa yang terjadi dengan panah-panah di dalam foto itu?

- Panah yang tegak, tetap tegak.
- Panah yang miring, tetap miring (sudutnya gak berubah).
- Semua panah arahnya tetap, cuma jadi panjang.

Kesimpulan Ajaib:

Dalam kasus Uniform Scaling (penskalaan seragam), SEMUA VEKTOR adalah Eigenvector!

Mau kamu pilih arah manapun, dia nggak akan berubah arah.

- **Eigenvalue:** Sama semua (misal $\lambda = 2$ kalau diperbesar 2x).

---

### 2. Kasus "Putar Balik" (Rotasi 180 Derajat) 🔄

Tadi kita belajar kalau rotasi biasa (misal 30 derajat) itu gak punya Eigenvector karena semua panah belok.

Tapi, ada satu pengecualian: Rotasi 180 derajat.

Bayangkan jarum jam menunjuk jam 12 (Atas).

Putar 180 derajat. Sekarang menunjuk jam 6 (Bawah).

- Apakah dia berubah jalur? **Tidak.** Dia masih di jalur vertikal yang sama (masih di rel yang sama).
- Cuma kepalanya aja yang kebalik.

Kesimpulan:

Untuk rotasi 180 derajat, SEMUA VEKTOR adalah Eigenvector.

- **Eigenvalue:** **-1** (Karena panjangnya tetap, tapi arahnya terbalik).

---

### 3. Kasus "Kombinasi Miring" (Shear + Scaling) 📐

Ini yang paling sering bikin pusing. Kadang matriks itu melakukan dua hal sekaligus: **Miringin (Shear)** DAN **Narik (Scaling)**.

- Visualnya: Kotak jadi jajar genjang yang kurus tinggi.
- Intuisinya: Susah ditebak pakai mata telanjang.

Di video dikasih lihat, ternyata ada **Dua Eigenvector** yang tersembunyi.

1. Satu yang Horizontal (Jelas kelihatan).
2. Satu lagi yang Miring (Susah dilihat kalau gak dihitung).

**Pesan Moral:** Intuisi visual (gambar kotak) itu bagus buat pemula, tapi untuk kasus rumit (apalagi dimensi tinggi), mata kita bisa ketipu. Kita butuh **Rumus Matematika** buat nemuin vektor yang ngumpet itu.

---

### 4. Kasus 3D: Rotasi Bumi 🌍 (Paling Keren!)

Ini nyambung sama analogi "Bola Bumi" yang tadi kita bahas.

Kalau di 2D (kertas), rotasi itu bikin semua pusing. Gak ada yang diam.

Tapi di 3D (Ruang), rotasi itu punya arti spesial.

Bayangkan Bumi berputar.

- Titik di Jakarta muter.
    
- Titik di New York muter.
    
- Tapi titik di **Kutub Utara** dan **Kutub Selatan** itu DIAM SAJA (cuma muter di tempat).
    

Garis yang menghubungkan Kutub Utara-Selatan itu adalah SUMBU ROTASI (Axis of Rotation).

Garis ini arahnya TIDAK BERUBAH.

Kesimpulan:

Dalam rotasi 3D, Eigenvector adalah Sumbu Rotasinya.

- Eigenvalue-nya adalah **1** (karena sumbu rotasi panjangnya gak berubah).

Ini penting banget buat Robotika atau Game Dev. Kalau mau bikin karakter muter, komputernya sebenernya nyari Eigenvector buat nentuin porosnya.

---

### Rangkuman Kasus Spesial

1. **Zoom Seragam:** Semua orang jadi Eigenvector.
2. **Putar 180:** Semua orang jadi Eigenvector (tapi negatif/-1).
3. **Rotasi 3D:** Eigenvector = Poros Putaran.