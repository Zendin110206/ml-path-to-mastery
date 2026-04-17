**Catatan Responsi Kalkulus 2: Pengantar Barisan dan Uji Kekonvergenan (Persiapan UTS)**

Halo teman-teman, mari kita bahas materi awal Barisan dan Deret (modul halaman 22-23). Karena materi ini akan masuk ke ujian (UTS), saya akan merombak catatannya agar kalian tidak hanya tahu hasil akhirnya, tapi paham **kenapa** kita menggunakan metode tertentu dan **bagaimana** cara menulis prosesnya agar mendapat nilai penuh dari dosen.

### **1. Konsep Dasar: Barisan vs Deret**

Jangan sampai tertukar antara dua istilah ini:

- **Barisan (Sequence):** Kumpulan angka yang dijajarkan dengan koma. Kita cuma melihat _urutan_ angkanya.
    
    Contoh: $1, \frac{1}{2}, \frac{1}{3}, \frac{1}{4}, \dots$
    
- **Deret (Series):** Operasi _penjumlahan_ dari angka-angka pada barisan tersebut.
    
    Contoh: $1 + \frac{1}{2} + \frac{1}{3} + \frac{1}{4} + \dots$
    

Di awal bab ini, kita **HANYA** fokus pada **Barisan**.

### **2. Apa itu "Kekonvergenan Barisan"?**

Pertanyaan inti dari bab ini adalah: _"Kalau barisan angka ini diteruskan sampai ujung dunia (suku ke-tak hingga), angkanya bakal berhenti di satu titik pasti, atau malah ngaco membesar terus?"_

Untuk membuktikannya, kita wajib mengubah rumus barisan ($a_n$) menjadi operasi **Limit menuju tak hingga**.

Ingat aturan penulisan UTS: **Selalu tulis $\lim_{n \to \infty}$ di setiap langkah awal perhitungan!** Jangan tiba-tiba angkanya muncul.

- **KONVERGEN:** Jika hasil limitnya adalah angka riil pasti ($L$).
    
- **DIVERGEN:** Jika hasil limitnya adalah tak hingga ($\infty$ atau $-\infty$), atau angkanya bolak-balik tidak menentu (berosilasi).
    

---

### **3. Tiga Senjata Menyelesaikan Limit (PENTING UNTUK UTS!)**

Saat kalian memasukkan nilai $n = \infty$ ke dalam fungsi pecahan dan hasilnya adalah $\frac{\infty}{\infty}$ (Bentuk Tak Tentu), kalian tidak boleh berhenti di situ. Kalian harus memprosesnya.

Ada 3 cara untuk menyelesaikannya. **Perhatian:** Untuk ujian tertulis/essay, kalian **WAJIB** menggunakan Cara 1 atau Cara 2 agar prosesnya terlihat. Cara 3 hanya untuk mengecek jawaban di kertas buram!

**Cara 1: Kaidah L'Hopital (Metode Turunan)**

- _Kapan dipakai?_ Paling gampang dipakai kalau fungsinya sederhana dan kalian jago menurunkan fungsi.
    
- _Konsep:_ Turunkan fungsi pembilang (atas) sendirian, dan turunkan penyebut (bawah) sendirian terhadap variabel $n$. Setelah diturunkan, masukkan lagi nilai $\infty$.
    

**Cara 2: Membagi dengan Pangkat Tertinggi (Metode Aljabar Murni)**

- _Kapan dipakai?_ Ini adalah cara paling aman dan paling disukai dosen untuk menunjukkan proses matematis yang runtut.
    
- _Konsep:_ Cari variabel $n$ dengan pangkat paling besar di dalam soal tersebut. Lalu, bagi semua suku (baik di atas maupun di bawah) dengan $n$ pangkat tertinggi itu.
    
- _Kenapa harus dibagi?_ Tujuannya untuk memaksa huruf $n$ pindah ke posisi bawah (penyebut). Ingat sifat ajaib limit: Angka berapapun jika dibagi tak hingga hasilnya pasti NOL ($\frac{\text{angka}}{\infty} = 0$).
    

**Cara 3: Aturan Cepat Polinomial (Hanya untuk Cek Jawaban!)**

Kita cukup melihat pangkat tertinggi di atas dan di bawah:

- Jika Pangkat Atas **=** Bawah $\implies$ Hasil limit adalah pembagian angka depan (koefisien) pangkat tertingginya.
    
- Jika Pangkat Atas **<** Bawah $\implies$ Hasil limit pasti $0$.
    
- Jika Pangkat Atas **>** Bawah $\implies$ Hasil limit pasti $\infty$ (Divergen).
    

---

### **4. Pembahasan Contoh Soal (Modul Halaman 23)**

**Soal 1:** Tentukan konvergensi dari barisan $a_n = \frac{n}{2n - 1}$

**Penyelesaian untuk UTS:**

Langkah pertama mutlak: Ubah jadi limit!

$$\lim_{n \to \infty} \frac{n}{2n - 1}$$

Jika disubstitusi langsung $\frac{\infty}{2(\infty) - 1}$, hasilnya $\frac{\infty}{\infty}$. Kita harus proses.

**Opsi A (Menggunakan L'Hopital):**

Turunkan atas dan bawah secara terpisah terhadap $n$.

- Turunan dari $n$ adalah $1$.
    
- Turunan dari $2n - 1$ adalah $2$.
    
    $$= \lim_{n \to \infty} \frac{1}{2}$$
    
    Karena huruf $n$-nya sudah habis tercoret, limit dari konstanta adalah konstanta itu sendiri, yaitu $\frac{1}{2}$.
    

**Opsi B (Membagi Pangkat Tertinggi - Sangat Direkomendasikan):**

Pangkat tertinggi di soal ini adalah $n^1$ (atau $n$). Bagi semua elemen dengan $n$!

$$= \lim_{n \to \infty} \frac{\frac{n}{n}}{\frac{2n}{n} - \frac{1}{n}}$$

Sederhanakan:

$$= \lim_{n \to \infty} \frac{1}{2 - \frac{1}{n}}$$

Sekarang substitusikan $n = \infty$. Ingat, $\frac{1}{\infty}$ berubah menjadi $0$.

$$= \frac{1}{2 - 0} = \frac{1}{2}$$

**Kesimpulan:** Karena hasil akhirnya berupa angka riil pasti ($\frac{1}{2}$), maka barisan ini **KONVERGEN** menuju $\frac{1}{2}$.

---

**Soal 2:** Tentukan konvergensi dari barisan $a_n = \frac{n^2 + 1}{2n^2 + 2}$

**Penyelesaian untuk UTS:**

Ubah jadi limit:

$$\lim_{n \to \infty} \frac{n^2 + 1}{2n^2 + 2}$$

Substitusi langsung menghasilkan $\frac{\infty}{\infty}$. Kita proses!

**Opsi A (Menggunakan L'Hopital):**

Turunkan atas dan bawah!

- Turunan dari $n^2 + 1$ adalah $2n$.
    
- Turunan dari $2n^2 + 2$ adalah $4n$.
    
    $$= \lim_{n \to \infty} \frac{2n}{4n}$$
    
    _(Penting: Jika setelah diturunkan sekali kalian substitusi $\infty$ hasilnya MASIH $\frac{\infty}{\infty}$, kalian boleh menurunkan lagi sampai huruf n-nya habis. Tapi karena ini bisa dicoret, kita langsung coret saja n-nya)._
    
    $$= \frac{2}{4} = \frac{1}{2}$$
    

**Opsi B (Membagi Pangkat Tertinggi):**

Pangkat tertingginya adalah $n^2$. Bagi semua suku dengan $n^2$:

$$= \lim_{n \to \infty} \frac{\frac{n^2}{n^2} + \frac{1}{n^2}}{\frac{2n^2}{n^2} + \frac{2}{n^2}}$$

Sederhanakan:

$$= \lim_{n \to \infty} \frac{1 + \frac{1}{n^2}}{2 + \frac{2}{n^2}}$$

Substitusikan $n = \infty$, maka suku pecahan yang ada $n$ di bawahnya otomatis menjadi $0$.

$$= \frac{1 + 0}{2 + 0} = \frac{1}{2}$$

_(Cek pakai Cara Cepat: Pangkat tertinggi atas $n^2$, bawah juga $n^2$. Karena sama, ambil angka depannya saja yaitu $\frac{1}{2}$. Sama persis kan? Tapi ingat, tulislah Opsi A atau Opsi B di kertas ujian kalian!)_

**Kesimpulan:** Karena limitnya menghasilkan angka pasti ($\frac{1}{2}$), maka barisan ini terbukti **KONVERGEN** ke $\frac{1}{2}$.