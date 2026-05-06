# 06b - Introduction to PageRank.md

Ini adalah algoritma yang bikin Google jadi raksasa seperti sekarang. Ditemukan oleh Larry Page tahun 1998.

Kita bahas pelan-pelan, bagi jadi 3 babak ya.

---

### Babak 1: Filosofi "Pat Si Pemalas" (Procrastinating Pat)

Lupakan dulu matriks. Bayangkan ada orang bernama Pat.

Pat ini lagi malas kerja, jadi dia buka internet dan klik link secara acak.

- Dia buka satu halaman.
    
- Lihat ada link, dia klik (pindah ke halaman baru).
    
- Di halaman baru, dia klik link lagi.
    
- Terus begitu selamanya.
    

Inti PageRank:

Kalau kita biarkan Pat klik-klik selamanya, halaman mana yang paling sering dia kunjungi?

- Halaman yang sering dikunjungi Pat = Halaman Penting (Ranking Tinggi).
    
- Halaman yang jarang didatangi Pat = Halaman Gak Penting.
    

Logikanya: Halaman penting pasti punya banyak jalan (link) dari halaman lain menuju ke sana.

---

### Babak 2: Mengubah Link Jadi Angka (Matriks L)

Gimana cara komputer mensimulasikan si Pat tadi? Kita harus bikin **Peta Probabilitas**.

Misal Pat lagi ada di Halaman A.

Di Halaman A, ada 3 link: ke B, ke C, dan ke D.

Karena Pat itu milihnya acak (random), maka peluang dia pindah adalah:

- Ke B: $1/3$ (33.3%)
    
- Ke C: $1/3$ (33.3%)
    
- Ke D: $1/3$ (33.3%)
    

Angka-angka inilah yang kita susun jadi **Vektor Kolom**.

$$\mathbf{L}_A = \begin{bmatrix} 0 \\ 1/3 \\ 1/3 \\ 1/3 \end{bmatrix} \begin{matrix} \leftarrow \text{Ke A (Gak ada link ke diri sendiri)} \\ \leftarrow \text{Ke B} \\ \leftarrow \text{Ke C} \\ \leftarrow \text{Ke D} \end{matrix}$$

Kalau kita kumpulkan semua halaman (A, B, C, D), jadilah **Matriks Link ($L$)**. Matriks ini isinya cuma peluang Pat mau pindah ke mana selanjutnya.

---

### Babak 3: Keajaiban Eigenvector (Masalah Ayam & Telur)

Disinilah bagian jeniusnya.

Untuk tahu Ranking halaman A ($r_A$), kita harus tahu siapa aja yang nge-link ke A.

- Kalau yang nge-link ke A adalah halaman "Sampah", Ranking A ikutan jelek.
    
- Kalau yang nge-link ke A adalah halaman "Sultan" (Ranking tinggi), Ranking A ikut naik.
    

Masalahnya:

Ranking A butuh Ranking B. Ranking B butuh Ranking C. Ranking C butuh Ranking A. Muter terus! Ini masalah referensi diri sendiri (self-referential).

**Solusinya: Iterasi (Pengulangan)**

1. **Awalnya:** Anggap semua halaman rankingnya sama rata ($1/4$ semua). Sebut ini vektor $\mathbf{r}_{lama}$.
    
2. Simulasi: Kalikan dengan matriks $L$.
    
    $$\mathbf{r}_{baru} = L \cdot \mathbf{r}_{lama}$$
    
3. **Ulangi Terus:** Hasil baru tadi, masukkan lagi ke rumus. Dikali lagi, dikali lagi.
    

Lama-kelamaan, angka rankingnya bakal **STABIL** (tidak berubah lagi). Saat sudah stabil, persamaannya jadi:

$$L \cdot \mathbf{r} = \mathbf{r}$$

(Matriks L dikali vektor r, hasilnya tetap vektor r).

Coba lihat rumus itu baik-baik... Mirip sesuatu gak?

$$A \mathbf{v} = \lambda \mathbf{v}$$

Ternyata, Ranking Website ($\mathbf{r}$) itu tidak lain adalah **EIGENVECTOR** dari Matriks Internet ($L$) dengan **EIGENVALUE = 1**.

---

### Ringkasan Sederhana

1. **Google menganggap internet sebagai matriks raksasa ($L$).**
    
2. **Mereka mencari Eigenvector dari matriks itu.**
    
3. **Isi Eigenvector itulah Ranking Juara-nya.**

## Lebih Intuitifnya : 

Oke, mari kita buat simulasi **Internet Mini** yang cuma punya 4 Website (Halaman).

Kita bedah satu per satu: **Siapa nge-link ke siapa**, dan bagaimana itu berubah jadi angka.

---

### 1. PETA INTERNETNYA (Skenario) 🗺️

Bayangkan Internet cuma isi 4 website ini:

1. **Halaman A (Daftar Menu):**
    
    - Isinya banyak link keluar.
        
    - **Link ke:** B, C, dan D.
        
    - _Logika Pat:_ Kalau Pat ada di A, dia punya 3 pintu keluar. Peluang dia ke B adalah **1/3**, ke C **1/3**, ke D **1/3**.
        
2. **Halaman B (Artikel Biasa):**
    
    - Isinya cuma satu link menuju halaman populer (D).
        
    - **Link ke:** D saja.
        
    - _Logika Pat:_ Kalau Pat ada di B, dia **pasti** (100% atau **1**) pindah ke D.
        
3. **Halaman C (Artikel Biasa):**
    
    - Sama kayak B, dia cuma nge-link ke D.
        
    - **Link ke:** D saja.
        
    - _Logika Pat:_ Kalau Pat ada di C, dia **pasti** (100% atau **1**) pindah ke D.
        
4. **Halaman D (Website Sultan/Populer):**
    
    - Ini website paling rame. Dia baik hati, nge-link balik ke B dan C.
        
    - **Link ke:** B dan C.
        
    - _Logika Pat:_ Kalau Pat ada di D, dia punya 2 pilihan. Peluang ke B adalah **1/2**, ke C adalah **1/2**.
        

---

### 2. MENGUBAH PETA JADI MATRIKS ($L$) 🔢

Sekarang kita susun "Aturan Pindah" tadi jadi Matriks Kolom.

Ingat: Kolom = Posisi Pat Sekarang. Baris = Tujuan Berikutnya.

$$L = \begin{bmatrix} \text{Dari A} & \text{Dari B} & \text{Dari C} & \text{Dari D} \\ \downarrow & \downarrow & \downarrow & \downarrow \\ 0 & 0 & 0 & 0 \\ 1/3 & 0 & 0 & 1/2 \\ 1/3 & 0 & 0 & 1/2 \\ 1/3 & 1 & 1 & 0 \end{bmatrix} \begin{matrix} \\ \\ \leftarrow \text{Ke A} \\ \leftarrow \text{Ke B} \\ \leftarrow \text{Ke C} \\ \leftarrow \text{Ke D} \end{matrix}$$


**Cara Bacanya per Kolom:**

- **Kolom 1 (Dari A):** A membagi "warisannya" ke B, C, D masing-masing $1/3$. (A tidak nge-link ke diri sendiri, jadi baris 1 nol).
    
- **Kolom 2 (Dari B):** B memberikan SELURUH cintanya ke D (Lihat baris paling bawah, nilainya 1). Ke A, B, C nilainya 0.
    
- **Kolom 3 (Dari C):** C juga memberikan seluruh cintanya ke D (Baris bawah nilai 1).
    
- **Kolom 4 (Dari D):** D membagi rata ke B dan C ($1/2$ dan $1/2$).
    

---

### 3. SIMULASI PERHITUNGAN (Si Pat Mulai Jalan) 🚶‍♂️

Sekarang kita mau cari tahu Ranking (Popularitas).

Awalnya, kita anggap semua halaman sama rata popularitasnya.

Total Kekayaan = 1. Jadi masing-masing pegang 0.25.

Vektor Ranking Awal ($\mathbf{r}_0$) = $\begin{bmatrix} 0.25 \\ 0.25 \\ 0.25 \\ 0.25 \end{bmatrix}$ (Punya A, B, C, D).

#### **Hari Pertama (Iterasi 1)**

Pat mulai jalan dari posisi awal sesuai aturan Matriks $L$.

Kita hitung: $\mathbf{r}_1 = L \times \mathbf{r}_0$

- Ranking Baru A:
    
    Siapa yang nge-link ke A? Lihat Baris 1 Matriks.
    
    Isinya: $0, 0, 0, 0$.
    
    Artinya: Gak ada yang nge-link ke A!
    
    Ranking A besok = 0. (Kasihan, A jadi miskin traffic).
    
- Ranking Baru B:
    
    Siapa yang nge-link ke B? Lihat Baris 2.
    
    Dari A ($1/3$), Dari D ($1/2$).
    
    Hitungan: $(1/3 \times 0.25) + (1/2 \times 0.25) \approx \mathbf{0.208}$.
    
- Ranking Baru C:
    
    Siapa yang nge-link ke C? Lihat Baris 3.
    
    Dari A ($1/3$), Dari D ($1/2$).
    
    Hitungan: $(1/3 \times 0.25) + (1/2 \times 0.25) \approx \mathbf{0.208}$.
    
- Ranking Baru D (Sang Juara):
    
    Siapa yang nge-link ke D? Lihat Baris 4.
    
    Dari A ($1/3$), Dari B (1 Full), Dari C (1 Full).
    
    Hitungan: $(1/3 \times 0.25) + (1 \times 0.25) + (1 \times 0.25) \approx \mathbf{0.58}$.
    

Hasil Hari Pertama:

A = 0

B = 0.20

C = 0.20

D = 0.58 (D mendominasi! Karena dia dapat suntikan penuh dari B dan C).

---

### 4. APA YANG TERJADI SELANJUTNYA? (Hari Kedua dst...)

Proses ini diulang. Ranking baru tadi ($0, 0.2, 0.2, 0.58$) dimasukkan lagi ke rumus.

- Karena D sekarang kaya raya (0.58), dan D nge-link balik ke B dan C...
    
- Maka di hari berikutnya, **Ranking B dan C akan naik lagi** (kecipratan populernya D).
    
- Tapi A tetap 0 (karena gak ada yang nge-link ke dia).
    

Lama-kelamaan, angkanya akan berhenti berubah (Stabil).

Misalnya stabil di:

A = 0

B = 0.33

C = 0.33

D = 0.33

(Ini angka ngawur buat contoh aja, aslinya harus dihitung komputer).

### Kesimpulan Alurnya:

1. **Struktur Link:** A $\to$ Semua, B $\to$ D, C $\to$ D, D $\to$ B & C.
    
2. **Matriks:** Dibuat berdasarkan "Jatah Warisan" per kolom.
    
3. **Iterasi:** Kita kalikan matriks berulang-ulang.
    
    - Halaman yang ditunjuk oleh halaman populer (D menunjuk B), akan ikut populer.
        
    - Halaman yang ditunjuk oleh banyak orang (B dan C menunjuk D), akan jadi Raja.
        

Gimana? Lebih kebayang sekarang kenapa D bisa jadi ranking 1 dan bagaimana aliran "kekayaan"-nya berputar?

---

>[!Warning] 
>Masih terlalu sulit menurut saya untuk dipahami, coba lagi : 

# The Ultimate Guide: Google PageRank Algorithm

Dokumen ini adalah rangkuman komprehensif tentang algoritma **PageRank**. Kita akan membahas bagaimana Google menilai "kepentingan" sebuah website bukan berdasarkan kontennya, melainkan berdasarkan struktur tautan (_link_) antar website tersebut.

## BAB 1: FILOSOFI DASAR (PAT SI PEMALAS)

Sebelum masuk ke matematika, kita pahami dulu model perilakunya.

### 1.1 Siapa itu "Pat"?

Bayangkan seorang pengguna internet imajiner bernama **Procrastinating Pat** (Pat si Pemalas).

- Pat tidak membaca konten.
    
- Pat hanya **mengklik link secara acak**.
    
- Pat terus menerus berpindah dari satu halaman ke halaman lain tanpa henti.
    

### 1.2 Definisi Ranking

> **PageRank** adalah peluang (probabilitas) bahwa si Pat sedang berada di halaman tertentu pada suatu waktu acak.

- Jika Pat sering sekali mampir ke Halaman A, berarti Halaman A **Penting** (Ranking Tinggi).
    
- Jika Pat jarang mampir ke Halaman B, berarti Halaman B **Tidak Penting**.
    

**Logika Dasar:** Sebuah halaman menjadi penting jika **banyak halaman lain** menunjuk ke halaman tersebut. Apalagi jika yang menunjuk adalah halaman yang **sudah penting** duluan.

## BAB 2: SIMULASI MANUAL (KASUS PULAU ABC)

Mari kita jalankan simulasi komputer secara manual untuk memahami bagaimana ranking terbentuk hari demi hari.

### 2.1 Peta Permainan (Struktur Link) 🗺️

Bayangkan internet mini yang hanya berisi 3 Website: **A, B, dan C**.

**Aturan Link (Siapa Nunjuk Siapa):**

1. **Halaman A:** Punya 1 link keluar $\to$ ke **B**.
    
    - _Logika Pat:_ Jika di A, 100% (1.0) Pat akan pindah ke B.
        
2. **Halaman B:** Punya 1 link keluar $\to$ ke **C**.
    
    - _Logika Pat:_ Jika di B, 100% (1.0) Pat akan pindah ke C.
        
3. **Halaman C:** Punya 2 link keluar $\to$ ke **A** dan **B**.
    
    - _Logika Pat:_ Jika di C, Pat bingung. 50% (0.5) ke A, 50% (0.5) ke B.
        

### 2.2 Menyusun Matriks Link ($L$) 📊

Kita terjemahkan peta di atas menjadi matriks.

- **KOLOM (Vertical):** Tempat Asal (From).
    
- **BARIS (Horizontal):** Tempat Tujuan (To).
    

$$L = \begin{bmatrix} \text{Dari A} & \text{Dari B} & \text{Dari C} \\ \downarrow & \downarrow & \downarrow \\ 0 & 0 & 0.5 \\ 1 & 0 & 0.5 \\ 0 & 1 & 0 \end{bmatrix} \begin{matrix} \leftarrow \text{Ke A} \\ \leftarrow \text{Ke B} \\ \leftarrow \text{Ke C} \end{matrix}$$

**Cara Membaca Matriks:**

- **Kolom 1 (Dari A):** Baris B bernilai 1. (A mewariskan seluruh trafiknya ke B).
    
- **Kolom 2 (Dari B):** Baris C bernilai 1. (B mewariskan seluruh trafiknya ke C).
    
- **Kolom 3 (Dari C):** Baris A bernilai 0.5, Baris B bernilai 0.5. (C membagi trafiknya).
    

## BAB 3: SIMULASI "POWER METHOD" (HARI DEMI HARI) 📅

Kita gunakan metode **Iterasi** (Pengulangan). Kita tebak ranking awal, lalu kita lihat perubahannya setiap kali Pat berpindah (dikali matriks).

**Kondisi Awal (**$r_0$**):** Kita anggap semua halaman sama rata. Total probabilitas harus 1.

$$r_0 = \begin{bmatrix} 0.333 \\ 0.333 \\ 0.333 \end{bmatrix}$$

### HARI KE-1 (Iterasi Pertama)

Pat bergerak satu langkah. Rumus: $\mathbf{r}_1 = L \times \mathbf{r}_0$

$$\begin{bmatrix} 0 & 0 & 0.5 \\ 1 & 0 & 0.5 \\ 0 & 1 & 0 \end{bmatrix} \times \begin{bmatrix} 0.333 \\ 0.333 \\ 0.333 \end{bmatrix}$$

**Perhitungan Manual:**

1. **Ranking Baru A:** (Baris 1 $\times$ Vektor Awal) $(0 \times 0.33) + (0 \times 0.33) + (0.5 \times 0.33) = \mathbf{0.166}$
    
    > _Analisis:_ Ranking A jatuh! Dia cuma dapat setengah jatah dari C.
    
2. **Ranking Baru B:** (Baris 2 $\times$ Vektor Awal) $(1 \times 0.33) + (0 \times 0.33) + (0.5 \times 0.33) = 0.333 + 0.166 = \mathbf{0.499}$
    
    > _Analisis:_ Ranking B Meledak! Dia dapat limpahan penuh dari A ditambah setengah dari C.
    
3. **Ranking Baru C:** (Baris 3 $\times$ Vektor Awal) $(0 \times 0.33) + (1 \times 0.33) + (0 \times 0.33) = \mathbf{0.333}$
    
    > _Analisis:_ Ranking C stabil (Dapat limpahan penuh dari B).
    

**Hasil** Hari **1:** $\mathbf{r}_1 = [0.166, \ 0.499, \ 0.333]$

### HARI KE-2 (Iterasi Kedua)

Kita gunakan hasil Hari 1 sebagai input baru. Lihat bagaimana popularitas B yang tinggi (0.499) mempengaruhi sistem.

$$\begin{bmatrix} 0 & 0 & 0.5 \\ 1 & 0 & 0.5 \\ 0 & 1 & 0 \end{bmatrix} \times \begin{bmatrix} 0.166 \\ 0.499 \\ 0.333 \end{bmatrix}$$

**Perhitungan Manual:**

1. **Ranking Baru A:** $(0.5 \times 0.333) = \mathbf{0.166}$
    
    > _Analisis:_ A masih rendah karena C (penyumbangnya) rankingnya biasa aja kemarin.
    
2. **Ranking Baru B:** $(1 \times 0.166) + (0.5 \times 0.333) = 0.166 + 0.166 = \mathbf{0.332}$
    
    > _Analisis:_ B turun drastis! Kenapa? Karena penyumbang utamanya (si A) jatuh miskin di hari sebelumnya.
    
3. **Ranking Baru C:** $(1 \times 0.499) = \mathbf{0.499}$
    
    > _Analisis:_ **C jadi Raja Baru!** Kenapa? Karena kemarin B kaya raya, dan B mewariskan semuanya ke C.
    

**Hasil Hari 2:** $\mathbf{r}_2 = [0.166, \ 0.332, \ 0.499]$

### HARI KE-3 (Iterasi Ketiga)

Sekarang C adalah raja (0.499). Mari lihat efeknya.

**Perhitungan Manual:**

1. **Ranking Baru A:** $(0.5 \times 0.499) = \mathbf{0.25}$
    
    > _Analisis:_ A mulai naik lagi! Karena dia dapat cipratan dari si Raja C.
    
2. **Ranking Baru B:** $(1 \times 0.166) + (0.5 \times 0.499) = 0.166 + 0.25 = \mathbf{0.416}$
    
    > _Analisis:_ B mulai naik lagi.
    
3. **Ranking Baru C:** $(1 \times 0.332) = \mathbf{0.332}$
    
    > _Analisis:_ C turun, karena kemarin B sempat miskin.
    

**Hasil** Hari **3:** $\mathbf{r}_3 = [0.25, \ 0.416, \ 0.332]$

## BAB 4: HASIL AKHIR (KESTABILAN) 🏁

Jika kita lanjutkan simulasi ini sampai hari ke-50 atau ke-100, angkanya akan berhenti berubah (_converge_).

Hasil akhirnya adalah:

- **A = 0.20** (20%)
    
- **B = 0.40** (40%)
    
- **C = 0.40** (40%)
    

### Pembuktian Kestabilan (Steady State)

Mari kita buktikan bahwa angka ini **TIDAK AKAN BERUBAH** jika dikalikan matriks lagi.

Masukkan $\mathbf{r} = [0.2, 0.4, 0.4]$ ke dalam rumus:

1. **A baru** $= 0.5 \times C = 0.5 \times 0.4 = \mathbf{0.2}$ (Tetap!) ✅
    
2. **B baru** $= A + 0.5 \times C = 0.2 + (0.5 \times 0.4) = 0.2 + 0.2 = \mathbf{0.4}$ (Tetap!) ✅
    
3. **C baru** $= B = \mathbf{0.4}$ (Tetap!) ✅
    

Karena Input = Output, maka kita sudah menemukan jawabannya.

## BAB 5: HUBUNGAN DENGAN EIGENVECTOR

Mari kita lihat rumus kestabilan tadi secara matematika:

$$L \cdot \mathbf{r} = \mathbf{r}$$

Atau bisa ditulis:

$$L \cdot \mathbf{r} = 1 \cdot \mathbf{r}$$

Ini persis sama dengan rumus dasar Eigen:

$$A \cdot \mathbf{x} = \lambda \cdot \mathbf{x}$$

**KESIMPULAN PENTING:**

1. **Ranking PageRank** adalah **EIGENVECTOR** dari Matriks Link ($L$).
    
2. **Eigenvalue (**$\lambda$**)** yang kita cari selalu bernilai **1**.
    

### Kenapa $\lambda$ Harus 1?

- **Jika** $\lambda > 1$**:** Total ranking akan bertambah terus setiap hari (Meledak ke infinity). Tidak masuk akal karena total probabilitas harus 100%.
    
- **Jika** $\lambda < 1$**:** Total ranking akan menyusut setiap hari sampai jadi nol (Kepunahan).
    
- **Jika** $\lambda = 1$**:** Total ranking

---

Tadi kita sudah belajar cara ngitung ranking pakai simulasi "Pat Jalan-Jalan" (Iterasi). Tapi, di dunia nyata, ada satu masalah besar kalau kita cuma pakai cara polos tadi.

Masalah itu namanya: **Jebakan & Kebosanan (Damping Factor).**

---

### 1. Masalah: "Pat Terjebak atau Bosan" 🕸️

Bayangkan skenario ini:

- **Jalan Buntu (Dead End):** Pat masuk ke Halaman C, tapi Halaman C **gak punya link ke mana-mana** (kosong).
    
    - _Akibatnya:_ Pat berhenti jalan. Simulasi macet. Ranking hilang.
        
- **Lingkaran Setan (Spider Trap):** Halaman A nge-link ke B, Halaman B nge-link balik ke A. Gak ada link ke orang lain.
    
    - _Akibatnya:_ Pat bakal muter-muter di situ selamanya. Ranking A dan B bakal nyedot semua popularitas internet, sementara halaman lain jadi nol.
        

Selain itu, secara logika manusia:

Apakah Pat akan nge-klik link selamanya tanpa henti?

Enggak kan? Pasti ada momen dia bosan, lalu dia:

1. Tutup tab.
    
2. Atau ngetik alamat web baru secara acak (misal tiba-tiba buka `youtube.com` padahal gak ada link ke sana).
    

---

### 2. Solusi: "Mesin Teleportasi" (Damping Factor $d$) 🛸

Untuk mengatasi masalah di atas, Larry Page menambahkan aturan **"Teleportasi"**.

Dia memperkenalkan variabel bernama **Damping Factor ($d$)**.

- Biasanya nilainya **0.85** (85%).
    

**Artinya:**

- **85% Kemungkinan:** Pat akan rajin nge-klik link yang ada di halaman itu (Sesuai Matriks $L$).
    
- **15% Kemungkinan:** Pat **BOSAN**. Dia berhenti nge-klik link, dan dia **Melompat Acak (Teleport)** ke halaman mana saja di internet.
    

---

### 3. Rumus Akhir PageRank (Yang Dipakai Google) 📝

Rumus iterasi kita tadi ($r_{baru} = L \cdot r_{lama}$) di-upgrade jadi sedikit lebih panjang:

$$\mathbf{r}_{baru} = d \cdot (L \cdot \mathbf{r}_{lama}) + \frac{1-d}{n}$$

- Bagian Kiri ($d \cdot L \dots$):
    
    Ini bagian Pat yang rajin nge-klik link (85%). Dia mengikuti arus popularitas.
    
- Bagian Kanan ($\frac{1-d}{n}$):
    
    Ini bagian Pat yang teleportasi (15%). Dia menyebar peluang ke SEMUA halaman ($n$) secara rata.
    

**Efek Ajaibnya:**

1. **Anti-Macet:** Walaupun ada jalan buntu, Pat bisa "teleport" keluar. Ranking gak bakal nol.
    
2. **Adil:** Halaman baru yang belum punya link masuk pun tetap punya sedikit peluang (sebesar $\frac{0.15}{n}$) untuk dikunjungi Pat. Gak ada yang rankingnya benar-benar nol mutlak.
    

---

### Kesimpulan Akhir Materi PageRank 🎓

Jadi, algoritma Google yang asli (versi 1998) itu sebenarnya gabungan dari dua perilaku manusia:

1. **The Follower (85%):** Kita cenderung mengikuti rekomendasi (link) orang lain. (Ini dihitung pakai Eigenvector/Matriks).
    
2. **The Explorer (15%):** Kadang kita ingin eksplorasi hal baru secara acak. (Ini dihitung pakai Damping Factor).
    

Gabungan keduanya menghasilkan ranking yang **Stabil**, **Adil**, dan **Masuk Akal**.