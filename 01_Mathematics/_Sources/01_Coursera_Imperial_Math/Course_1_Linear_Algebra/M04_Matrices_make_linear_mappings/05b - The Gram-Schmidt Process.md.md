# Linear Algebra: Memahami Basis, Orthogonalitas, & Gram-Schmidt (From Zero)

Catatan ini adalah perjalanan logika dari nol untuk memahami kenapa _Data Scientist_ sangat mencintai Matriks Orthogonal dan bagaimana cara menciptakannya menggunakan Gram-Schmidt.

## BAB 1: Masalah "Petunjuk Arah" (Konsep Basis)

Lupakan dulu matematika rumit. Bayangkan kita sedang main game **Mencari Harta Karun** di lapangan luas. Aku memegang peta dan harus memberi instruksi kepadamu.

Untuk memberi instruksi, kita butuh **Patokan Arah** (Basis).

### Skenario 1: Petunjuk yang Nyebelin (Non-Orthogonal) ❌

Aku orangnya aneh, aku pakai patokan arah:

1. **Timur** (Kanan Lurus).
    
2. **Timur Laut** (Serong Kanan 45°).
    

Aku suruh kamu: _"Jalan_ 3 _langkah Timur, terus 4 langkah Timur Laut."_

- **Masalahnya:** Saat kamu jalan ke Timur Laut, kamu itu sebenarnya **bergerak ke Timur JUGA** dan **bergerak ke Utara JUGA**.
    
- Arah kedua ini "bocor" atau mencampuri urusan arah pertama.
    
- Menghitung posisi presisi jadi ribet banget.
    

### Skenario 2: Petunjuk yang Enak (Orthogonal) ✅

Aku pakai patokan normal:

1. **Timur** (Kanan Lurus).
    
2. **Utara** (Depan Lurus).
    

Aku suruh kamu: _"Jalan 3 langkah Timur, terus 4 langkah Utara."_

- Saat kamu jalan ke Timur, kamu **SAMA SEKALI TIDAK** bergerak ke Utara.
    
- Dua arah ini **Murni Terpisah**.
    

> **DEFINISI ORTHOGONAL:** Artinya arah-arah tersebut saling **Tegak Lurus (**$90^\circ$**)**. Arah yang satu tidak mencampuri arah yang lain.

## BAB 2: Masalah "Langkah Kaki" (Normalisasi)

Masalah kedua: Langkah kakiku panjang (1 meter), langkah kakimu pendek (0.5 meter). Kalau aku bilang "Maju 3 langkah", kita bakal miskomunikasi.

Solusinya: Kita butuh **Standar**.

> "1 Langkah WAJIB hukumnya harus pas **1 Meter**."

Di matematika, standar "1 Satuan" ini disebut **NORMAL** (atau Unit).

### The Holy Grail: ORTHONORMAL 🏆

Apa yang dicari-cari orang matematika? Sistem arah (Basis) yang memenuhi 2 syarat impian:

1. **ORTHOGONAL:** Saling tegak lurus (biar gak saling ganggu).
    
2. **NORMAL:** Panjangnya standar 1 (biar hitungan pas).
    

Bayangkan **Kertas Berpetak (Grid)**: Kotak-kotaknya siku-siku dan ukurannya pas 1x1. Itu basis sempurna.

## BAB 3: Matriks sebagai "Rak Arah"

Matematikawan tidak suka nulis arah terpisah. Mereka menyimpannya dalam wadah bernama **MATRIKS**. Bayangkan Matriks sebagai **Rak Sepatu/Arah**:

$$M = \begin{bmatrix} | & | \\ \text{Timur} & \text{Utara} \\ | & | \end{bmatrix}$$

Jika isi rak ini adalah arah-arah yang sempurna (Siku-siku & Panjang 1), maka matriks ini disebut **MATRIKS ORTHOGONAL**.

## BAB 4: Keajaiban "Membalik Keadaan" (Inverse)

Kenapa kita terobsesi dengan Matriks Orthogonal? Jawabannya ada di **Jalan Pulang (Inverse)**.

**Skenario Arah Miring (Matriks Biasa):**

- Kamu jalan zig-zag serong sana-sini.
    
- Kalau disuruh balik ke posisi awal? Pusing! Rumus jalan pulangnya ribet.
    

**Skenario Sempurna (Matriks Orthogonal):**

- Kamu jalan ke Timur, lalu ke Utara.
    
- Kalau disuruh balik? Gampang! _"Tadi ke Timur, sekarang ke Barat. Tadi ke Utara, sekarang ke Selatan."_
    

> **KUNCINYA:** Di dunia Orthogonal, Invers itu semudah **"Memutar Balik"** pandangan. Secara matematika: $A^{-1} = A^T$ **(Invers = Transpose)**.

Komputer sangat suka ini karena Transpose itu cepat dan hemat energi, beda dengan hitung invers biasa yang berat.

## BAB 5: Gram-Schmidt (Si Tukang Reparasi) 🛠️

Masalah Dunia Nyata: Data alam seringkali kasih kita arah yang **Jelek** (Miring-miring/Serong). Kalau arah jelek ini dimasukkan ke matriks $\rightarrow$ Invers-nya susah.

Kita butuh alat untuk **Meluruskan** Arah **Jelek** menjadi **Arah Bagus (Orthonormal)**. Alat itu bernama **GRAM-SCHMIDT**.

Sip! Karena kamu sudah paham **KENAPA** kita butuh Gram-Schmidt (buat ngelurusin arah yang miring-miring), sekarang kita masuk ke intinya: **BAGAIMANA CARANYA?**

Kita akan bedah algoritma **Gram-Schmidt** ini pakai logika "Membersihkan Kontaminasi".

Bayangkan kita punya 2 arah (vektor) yang **Jelek/Mentah**:

1. **Vektor A ($v_1$):** Arahnya ke **Timur**, tapi panjangnya ngaco (misal 5 meter).
    
2. **Vektor B ($v_2$):** Arahnya **Timur Laut** (Serong Kanan $45^\circ$). Ini biang keroknya.
    

Tujuan kita: Bikin arah **Timur Murni ($e_1$)** dan **Utara Murni ($e_2$)** yang panjangnya 1 meter.

---

### LANGKAH 1: Urus Anak Pertama (Si $v_1$)

Anak pertama itu paling enak. Dia jadi patokan utama. Dia nggak perlu tegak lurus sama siapa-siapa (karena belum ada siapa-siapa).

- **Kondisi:** Arahnya sudah oke (Timur), tapi kepanjangan (5 meter).
    
- **Solusi:** Potong aja biar jadi 1 meter.
    
- **Rumus:** Bagi $v_1$ dengan panjangnya sendiri.
    

$$e_1 = \frac{v_1}{|v_1|}$$

**Hasil:** Kita punya **$e_1$** (Timur, 1 meter). ✅

---

### LANGKAH 2: Urus Anak Kedua (Si $v_2$) - "Operasi Pembersihan"

Nah, masuk si $v_2$ (Timur Laut).

Masalahnya: Dia Serong. Artinya, di dalam diri $v_2$, ada unsur Timur (searah $e_1$) dan ada unsur Utara.

Kita nggak mau unsur Timurnya! Kita mau dia murni Utara (Tegak Lurus sama $e_1$).

**Proses Pembersihan (Gram-Schmidt):**

1. Cek Kontaminasi (Proyeksi/Bayangan):
    
    Kita senter si $v_2$ ke arah $e_1$.
    
    "Eh $v_2$, seberapa banyak sih unsur 'Timur' di dalam dirimu?"
    
    Rumus: $(v_2 \cdot e_1) \times e_1$ (Ini adalah "Bayangan" $v_2$ yang jatuh di $e_1$).
    
2. Buang Sampahnya (Pengurangan):
    
    Sekarang kita ambil $v_2$ asli, lalu kita Gunting/Buang bagian bayangan tadi.
    
    Logikanya: (Timur Laut) - (Timur) = Utara.
    
    $$u_2 = v_2 - \text{Bayangan}$$
    
    $$u_2 = v_2 - (v_2 \cdot e_1)e_1$$
    
    **Hasil ($u_2$):** Sekarang kita punya sisa potongan yang arahnya sudah **MURNI UTARA** ($90^\circ$ dari $e_1$). Hore!
    
3. Finishing (Normalisasi):
    
    Sama kayak langkah 1, si $u_2$ ini arahnya udah bener (Utara), tapi panjangnya mungkin masih ngaco (misal 3 meter).
    
    Potong biar jadi 1 meter.
    
    $$e_2 = \frac{u_2}{|u_2|}$$
    

**Hasil Akhir:** Kita punya **$e_2$** (Utara, 1 meter). ✅


>[!NOTE]
>Oeee, aku mau nanyaa, aku paham secara esensinya cuman mau nanya rumusnyaa
>kenapa kok bisa begini 
>
>LANGKAH 2: Urus Anak Kedua (Si $v_2$) - "Operasi Pembersihan"Nah, masuk si $v_2$ (Timur Laut).Masalahnya: Dia Serong. Artinya, di dalam diri $v_2$, ada unsur Timur (searah $e_1$) dan ada unsur Utara.Kita nggak mau unsur Timurnya! Kita mau dia murni Utara (Tegak Lurus sama $e_1$).Proses Pembersihan (Gram-Schmidt):Cek Kontaminasi (Proyeksi/Bayangan):Kita senter si $v_2$ ke arah $e_1$."Eh $v_2$, seberapa banyak sih unsur 'Timur' di dalam dirimu?"Rumus: $(v_2 \cdot e_1) \times e_1$ (Ini adalah "Bayangan" $v_2$ yang jatuh di $e_1$).Buang Sampahnya (Pengurangan):Sekarang kita ambil $v_2$ asli, lalu kita Gunting/Buang bagian bayangan tadi.Logikanya: (Timur Laut) - (Timur) = Utara.$$u_2 = v_2 - \text{Bayangan}$$$$u_2 = v_2 - (v_2 \cdot e_1)e_1$$Hasil ($u_2$): Sekarang kita punya sisa potongan yang arahnya sudah MURNI UTARA ($90^\circ$ dari $e_1$). Hore!Finishing (Normalisasi):Sama kayak langkah 1, si $u_2$ ini arahnya udah bener (Utara), tapi panjangnya mungkin masih ngaco (misal 3 meter).Potong biar jadi 1 meter.$$e_2 = \frac{u_2}{|u_2|}$$Hasil Akhir: Kita punya $e_2$ (Utara, 1 meter). ✅
>Rumus: $(v_2 \cdot e_1) \times e_1$ (Ini adalah "Bayangan" $v_2$ yang jatuh di $e_1$). ? kok bisa? aku agak agak lupaa

Pertanyaan yang bagus! Wajar banget kalau lupa, karena rumus proyeksi itu sering bikin bingung antara yang **Skalar** (angka doang) dan **Vektor** (ada arahnya).

Mari kita bedah kenapa rumusnya **$(v_2 \cdot e_1) \times e_1$**.

Kuncinya ada di dua bahan resep untuk membuat sebuah Vektor Bayangan:

1. **Seberapa Panjang** bayangannya? (Ukuran)
    
2. **Ke Arah Mana** bayangannya menunjuk? (Arah)
    

---

### 1. Bahan Pertama: Ukuran (The "How Long")

Kita mau tahu panjang bayangan $v_2$ yang jatuh di atas $e_1$.

Ingat rumus dasar Dot Product:

$$A \cdot B = |A| |B| \cos(\theta)$$

Nah, di sini ada hal spesial. Vektor $e_1$ itu adalah Unit Vector (Vektor Satuan).

Artinya, panjangnya ($|e_1|$) adalah 1.

Jadi kalau kita masukkan ke rumus:

$$v_2 \cdot e_1 = |v_2| \times (1) \times \cos(\theta)$$

$$v_2 \cdot e_1 = |v_2| \cos(\theta)$$

Secara trigonometri (segitiga siku-siku), **$|v_2| \cos(\theta)$** itu MURNI adalah **Panjang Sisi Samping** alias **Panjang Bayangan**.

> **Jadi:** $(v_2 \cdot e_1)$ itu hanyalah sebuah **ANGKA** (Skalar) yang mewakili panjang bayangan. Misal hasilnya: 5.

---

### 2. Bahan Kedua: Arah (The "Which Way")

Sekarang kita sudah punya angka "5" (Panjang bayangan). Tapi "5" itu cuma konsep abstrak. Kita butuh menjadikannya benda nyata (vektor) di lantai.

Lantainya adalah **$e_1$**. Arahnya ke sana.

Bagaimana cara membuat vektor sepanjang 5 di arah $e_1$?

Gampang! Ambil vektor $e_1$ (yang panjangnya cuma 1), lalu kalikan dengan 5.

$$5 \times e_1$$

---

### 3. Gabungkan (The "Kok Bisa")

Jadi, rumus $(v_2 \cdot e_1) e_1$ itu sebenarnya gabungan dari dua langkah tadi:

$$\underbrace{(v_2 \cdot e_1)}_{\text{Angka 5 (Panjang)}} \times \underbrace{e_1}_{\text{Arah Lantai}}$$

- **Bagian dalam kurung:** Menghitung "Berapa meter panjang bayangannya?" (Skalar).
    
- **Bagian luar kurung:** Menempelkan panjang itu ke arah $e_1$ supaya jadi Vektor.
    

---

### Kenapa Rumusnya Gak Ribet (Gak Ada Pembagian)?

Mungkin kamu ingat rumus proyeksi yang lebih ribet ini:

$$\text{Proj} = \frac{a \cdot b}{|b|^2} b$$

Kenapa di Gram-Schmidt rumusnya jadi simpel banget (gak ada per $b^2$)?

Karena $e_1$ sudah dinormalisasi (Panjangnya 1).

Pembaginya adalah $|e_1|^2$. Karena panjangnya 1, maka $1^2 = 1$.

Membagi dengan 1 itu gak ngefek apa-apa. Makanya rumusnya jadi ringkas/bersih:

$$(v_2 \cdot e_1) e_1$$

Gimana? Masuk akal kan? Itu cuma **(Panjang Bayangan) $\times$ (Arah Lantai)**.

---

### Visualisasi Gampang: "Tiang Bendera"

1. **Tiang 1:** Tancapkan lurus saja. (Ini $e_1$).
    
2. **Tiang 2:** Awalnya miring nyender ke Tiang 1.
    
    - Gram-Schmidt itu ibarat kamu **mendorong** Tiang 2 menjauh dari Tiang 1 sampai dia berdiri tegak lurus sendiri.
        
    - "Dorongan" itulah proses pengurangan bayangan tadi.
        

---

### Kalau Ada Vektor Ketiga ($v_3$)?

Sama aja! Misal $v_3$ arahnya miring ke segala arah (3D).

Dia "terkontaminasi" oleh $e_1$ dan $e_2$.

Cara bersihkannya:

1. Ambil $v_3$.
    
2. Buang unsur $e_1$-nya (Kurangi Proyeksi ke $e_1$).
    
3. Buang unsur $e_2$-nya (Kurangi Proyeksi ke $e_2$).
    
4. Sisanya pasti arah baru yang tegak lurus sama dua-duanya (Murni Atas/Bawah).
    
5. Normalkan jadi 1 meter.
    

---
### KESIMPULAN AKHIR

Rumus Gram-Schmidt:

$$u_k = v_k - \sum \text{proj}(v_k)$$

Terjemahan Manusia:

> **"Vektor Baru = Vektor Lama dikurangi SEMUA bayangan dia di vektor-vektor yang sudah jadi sebelumnya."**

Intinya cuma **"Buang bagian yang nyerempet/searah"** biar sisanya tegak lurus murni.