# The Ultimate Guide: Reflecting in a Plane (Strategi Sandwich)

Dokumen ini adalah panduan komprehensif untuk memahami salah satu aplikasi paling elegan dalam Aljabar Linear: **Memantulkan objek pada cermin miring.**

Kita tidak akan langsung loncat ke rumus. Kita akan mulai dari **filosofi dasar**, membangun intuisi tentang **dimensi**, **basis**, dan **perpindahan dunia**, baru kemudian menyusun solusinya langkah demi langkah.

## BAB 1: MASALAH SUDUT PANDANG (FILOSOFI)

Sebelum kita menghitung apapun, kita harus paham dulu: **Apa masalahnya?**

### 1.1 Skenario: Ruangan dan Cermin Aneh

Bayangkan kamu sedang berdiri di sebuah **Ruang Tamu Kosong**.

- **Dunia Nyata (Standar):** Untuk menentukan posisi benda di ruangan ini, kita sepakat menggunakan dinding dan lantai sebagai patokan.
    
    - **Sumbu X:** Garis pertemuan dinding depan dan lantai.
        
    - **Sumbu Y:** Garis pertemuan dinding samping dan lantai.
        
    - **Sumbu Z:** Garis pertemuan dua dinding (pojok ruangan) yang naik ke atas.
        
    - Patokan ini kita sebut **BASIS STANDAR**. Sifatnya tegak lurus dan teratur.
        
- **Masalahnya:** Ada sebuah **Cermin Besar** yang diletakkan sembarangan di tengah ruangan. Cermin itu miring, agak serong ke kiri, dan agak mendongak ke atas. Cermin ini punya "arah"-nya sendiri yang sama sekali tidak sejajar dengan dinding ruanganmu.
    

### 1.2 Misi Kita

Kamu melempar sebuah **Bola Tenis** di ruangan itu. Bola itu melayang di posisi koordinat $(x, y, z)$. Tugasmu: **Hitung di mana letak bayangan bola itu di dalam cermin miring tersebut?**

### 1.3 Kenapa Cara Biasa Gagal?

Jika kamu mencoba menghitung ini menggunakan Matematika SMA (Trigonometri):

1. Kamu harus hitung sudut kemiringan cermin terhadap lantai.
    
2. Hitung sudut terhadap dinding.
    
3. Hitung jarak tegak lurus bola ke cermin (yang miring itu).
    
4. Pakai Sinus/Cosinus 3D yang sangat rumit.
    

Peluang salah hitung: **99%**.

### 1.4 Solusi Aljabar Linear: "Ganti Dunia"

Aljabar Linear menawarkan cara berpikir yang berbeda:

> _"Daripada pusing menghitung sudut cermin terhadap dinding, kenapa kita tidak **berpura-pura** bahwa Cermin itu adalah Lantai yang datar?"_

Kita akan mengubah cara pandang kita. Kita akan **"Pindah Dunia"** sejenak ke dunia di mana Cermin adalah pusat semesta, melakukan pantulan di sana (yang mana sangat mudah), lalu kembali lagi ke Dunia Nyata.

## BAB 2: FUNDAMENTAL BASIS & KOORDINAT (ILMU DASAR)

Sebelum pindah dunia, kita harus paham dulu alat transportasinya.

### 2.1 Apa itu Basis? (Analogi Penggaris)

**Basis** adalah sekumpulan vektor yang kita gunakan sebagai "Penggaris Utama" untuk mengukur segala sesuatu.

- **Di Dunia Nyata:** Basis kita adalah penggaris yang menempel di dinding dan lantai ($i, j, k$).
    
- **Di Dunia Cermin:** Basis kita haruslah penggaris yang **menempel di Cermin**.
    

### 2.2 Analogi: Meja Makan & Tiang Bendera

Untuk mendefinisikan "Dunia Cermin" secara lengkap dalam 3 Dimensi, kita butuh **3 Penggaris Baru**:

1. **Penggaris** $e_1$ **(Lebar Meja):** Vektor yang diletakkan rata di permukaan cermin, menunjuk ke kanan.
    
2. **Penggaris** $e_2$ **(Panjang Meja):** Vektor yang diletakkan rata di permukaan cermin, menunjuk ke depan (Tegak lurus dengan $e_1$).
    
    > _Catatan:_ $e_1$ _dan_ $e_2$ _mendefinisikan bidang datar cermin itu sendiri._
    
3. **Penggaris** $e_3$ **(Tiang Bendera/Normal):** Vektor yang ditancapkan **TEGAK LURUS** mencuat keluar dari tengah cermin.
    
    > _Kenapa butuh ini? Karena bola kita ada di udara! Kita butuh penggaris_ $e_3$ _untuk mengukur seberapa jauh jarak bola dari permukaan kaca._
    

### 2.3 Peran Gram-Schmidt (Si Tukang Bersih-Bersih)

Di dunia nyata, data cermin yang kita dapatkan biasanya "kotor". Misal: _"Cermin ini dibentuk oleh vektor_ $v_1$ _dan_ $v_2$_."_ Tapi $v_1$ dan $v_2$ itu mungkin tidak siku-siku (miring), atau panjangnya beda-beda.

Kita tidak bisa mengukur dengan penggaris yang bengkok. Maka, kita gunakan algoritma **Gram-Schmidt** untuk:

1. Meluruskan vektor-vektor itu supaya saling **Tegak Lurus (**$90^\circ$**)**.
    
2. Memotongnya supaya panjangnya standar **1 Satuan**.
    

**Hasilnya:** Basis Orthonormal $E = \{e_1, e_2, e_3\}$. Ini adalah set penggaris yang sempurna.

## BAB 3: MATRIKS SEBAGAI MESIN TELEPORTASI

Sekarang kita punya dua set penggaris:

1. **Penggaris Ruangan** (Standar).
    
2. **Penggaris Meja** (Basis $E$).
    

Bagaimana cara pindah antar dua dunia ini? Jawabannya: **MATRIKS**.

### 3.1 Matriks $E$ (Kamus Cermin $\to$ Ruangan)

Jika kita menyusun vektor-vektor basis tadi ($e_1, e_2, e_3$) menjadi kolom-kolom sebuah matriks:

$$E = \begin{bmatrix} | & | & | \\ e_1 & e_2 & e_3 \\ | & | & | \end{bmatrix}$$

Matriks $E$ ini berfungsi sebagai penerjemah dari **Bahasa Cermin ke Bahasa Ruangan**.

- Jika kamu punya koordinat $(0, 0, 1)$ di cermin (artinya: 1 langkah manjat tiang bendera).
    
- Kamu kalikan $E \cdot (0,0,1)$, hasilnya adalah vektor tiang itu dalam koordinat ruangan $(x,y,z)$.
    

### 3.2 Matriks $E^T$ (Kamus Ruangan $\to$ Cermin)

**TAPI TUNGGU!** Masalah kita terbalik. Bola kita ada di **Ruangan**. Kita mau bawa dia masuk ke **Dunia Cermin**.

Kita butuh kebalikannya (Invers): $E^{-1}$.

**Disinilah Keajaiban Gram-Schmidt Bersinar:** Karena basis $E$ kita adalah **Matriks Orthogonal** (Tegak lurus & Panjang 1), matematika memberikan diskon besar:

> **Invers dari Matriks Orthogonal adalah TRANSPOSE-nya (**$E^T$**).**

Artinya:

- Untuk masuk ke Dunia Cermin, kita tidak perlu hitung invers yang rumit.
    
- Cukup putar matriksnya (Baris jadi Kolom), jadilah $E^T$.
    
- $E^T$ adalah mesin teleportasi dari Ruangan $\to$ Cermin.
    

## BAB 4: EKSEKUSI STRATEGI SANDWICH (LANGKAH DEMI LANGKAH)

Panggung sudah siap. Kita punya Bola di posisi $\mathbf{r}$. Kita mau cari pantulannya. Kita gunakan strategi 3 Langkah (Sandwich).

### LANGKAH 1: Log In ke Dunia Cermin ($E^T$)

Kita bertanya: _"Wahai Bola, kalau posisimu diukur pakai penggaris Meja Makan, koordinatmu berapa?"_

Kita terjemahkan Bola ($\mathbf{r}$) pakai mesin $E^T$:

$$\mathbf{r}_{cermin} = E^T \cdot \mathbf{r}$$

Sekarang, bola tidak lagi punya koordinat $(x,y,z)$ dinding. Dia sekarang punya koordinat baru $(u, v, w)$:

- $u$ = Jarak di sepanjang lebar meja ($e_1$).
    
- $v$ = Jarak di sepanjang panjang meja ($e_2$).
    
- $w$ = **Tinggi bola di atas meja (**$e_3$**)**.
    

### LANGKAH 2: Lakukan Aksi Pantulan ($T_E$)

Sekarang bola sudah ada di "Dunia Cermin". Di sini, aturan pantulannya **SANGAT SEDERHANA & INTUITIF**.

Mari kita lihat per komponen:

1. **Komponen Lebar Meja (**$e_1$**):** Kalau bola jatuh tepat di permukaan meja, apakah posisi kanan-kirinya berubah? **TIDAK**. Bayangan di cermin tetap di posisi horizontal yang sama. (Kalikan 1).
    
2. **Komponen Panjang Meja (**$e_2$**):** Sama juga. Posisi depan-belakang di permukaan cermin tidak berubah. (Kalikan 1).
    
3. **Komponen Tiang Bendera (**$e_3$**):** Nah! Bola datang dari "Atas" meja (Positif). Bayangannya seolah-olah ada di "Bawah" meja (Negatif). Jaraknya sama, cuma **ARAHNYA DIBALIK**. (Kalikan -1).
    

Maka, Matriks Refleksi ($T_E$) hanyalah matriks diagonal sederhana:

$$T_E = \begin{bmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & \mathbf{-1} \end{bmatrix}$$

Kita terapkan ke bola di dunia cermin:

$$\mathbf{r}'_{cermin} = T_E \cdot \mathbf{r}_{cermin}$$

### LANGKAH 3: Log Out Kembali ke Dunia Nyata ($E$)

Sekarang kita sudah punya posisi bayangan ($\mathbf{r}'_{cermin}$). TAPI, bahasanya masih "Bahasa Meja" (sekian lebar, sekian panjang, minus tinggi).

Orang di ruangan bingung, _"Itu di mana relatif terhadap pintu?"_ Kita harus terjemahkan balik.

Kita pakai mesin penerjemah asli ($E$):

$$\mathbf{r}'_{akhir} = E \cdot \mathbf{r}'_{cermin}$$

## BAB 5: KESIMPULAN RUMUS TOTAL

Jika kita gabungkan ketiga langkah tadi dalam satu baris persamaan matematika (ingat, matriks bekerja dari Kanan ke Kiri):

$$\mathbf{r}' = \underbrace{E}_{\text{3. Keluar}} \cdot \underbrace{T_E}_{\text{2. Aksi Pantul}} \cdot \underbrace{E^T}_{\text{1. Masuk}} \cdot \mathbf{r}$$

### Kenapa ini disebut "Transformation Matrix"?

Seringkali, kita tidak cuma mau memantulkan satu bola. Kita mau memantulkan ribuan titik (misalnya titik-titik wajah karakter Panda Bear).

Daripada mengulang 3 langkah tadi untuk setiap titik, kita bisa menghitung **Mesin Gabungannya** dulu:

$$T = E \cdot T_E \cdot E^T$$

- $T$ adalah **Matriks Transformasi Total**.
    
- Sekali kita hitung matriks $T$ ini, kita bisa lemparkan ribuan titik apapun ke dalamnya, dan dia akan langsung memuntahkan hasil pantulannya dalam sekali hitung.
    

### Ringkasan Alur Logika:

1. **Masalah:** Cermin miring susah dihitung.
    
2. **Ide:** Bikin koordinat sendiri yang nempel di cermin.
    
3. **Alat 1 (Gram-Schmidt):** Bikin koordinatnya tegak lurus (Orthonormal) biar hitungannya gampang.
    
4. **Alat 2 (Transpose):** Pakai $E^T$ buat pindah dari Ruangan ke Cermin.
    
5. **Aksi (**$T_E$**):** Pantulkan di dunia cermin (cuma balik tanda Z).
    
6. **Alat 3 (**$E$**):** Balik lagi ke Ruangan.