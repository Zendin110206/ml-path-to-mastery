**Catatan Responsi Kalkulus 2: Uji Hasil Bagi dan Uji Akar (Halaman 30)**

Halo teman-teman, kita masuk ke dua alat uji terakhir untuk deret positif. Kabar baiknya, dua uji ini adalah yang paling mudah dikenali ciri-cirinya! Kalian tidak perlu lagi repot-repot mencari deret acuan atau membanding-bandingkan seperti materi sebelumnya.

Mari kita bahas tuntas kapan kita harus menggunakan **Uji Hasil Bagi (Ratio Test)** dan kapan harus menggunakan **Uji Akar (Root Test)**.

---

### **1. Tes Hasil Bagi (Ratio Test)**

**Kapan alat ini digunakan?**

Jika kalian melihat soal deret yang mengandung **Faktorial (tanda seru `!`)** atau **Konstanta yang dipangkatkan $n$** (seperti $2^n, 3^n, e^n$), langsung keluarkan senjata Tes Hasil Bagi. Ini adalah satu-satunya tes yang paling ampuh untuk menghancurkan faktorial.

**Aturan Main:**

Kita mencari nilai $\rho$ (rho) dengan cara membagi rumus suku ke-$(n+1)$ dengan rumus suku ke-$n$, lalu dilimitkan menuju tak terhingga.

$$\rho = \lim_{n \to \infty} \left| \frac{a_{n+1}}{a_n} \right|$$

Hasil penentuannya:

1. Jika $\rho < 1$, maka deret **KONVERGEN**.
    
2. Jika $\rho > 1$, maka deret **DIVERGEN**.
    
3. Jika $\rho = 1$, tes ini **GAGAL**. (Jika gagal, berarti kalian salah pilih alat uji dan harus menggunakan metode lain seperti Uji Integral atau Uji Banding).
    

---

**Pembahasan Contoh Soal Tes Hasil Bagi:**

**Soal 1:** Selidiki kekonvergenan deret $\sum_{n=1}^{\infty} \frac{3^n}{n!}$

**Penyelesaian untuk UTS:**

_Intuisi:_ Ada pangkat $n$ dan ada faktorial $n!$. Jelas wajib pakai Tes Hasil Bagi.

**Langkah 1: Tentukan $a_n$ dan $a_{n+1}$**

- $a_n = \frac{3^n}{n!}$
    
- Untuk mencari $a_{n+1}$, ganti semua huruf $n$ menjadi $(n+1)$.
    
    $a_{n+1} = \frac{3^{n+1}}{(n+1)!}$
    

**Langkah 2: Masukkan ke rumus limit**

$$\rho = \lim_{n \to \infty} \frac{a_{n+1}}{a_n} = \lim_{n \to \infty} \frac{\frac{3^{n+1}}{(n+1)!}}{\frac{3^n}{n!}}$$

Ingat aturan pecahan, membagi sama dengan mengalikan kebalikannya:

$$\rho = \lim_{n \to \infty} \frac{3^{n+1}}{(n+1)!} \times \frac{n!}{3^n}$$

**Langkah 3: Trik Membongkar Pangkat dan Faktorial (PENTING!)**

Tujuan kita sekarang adalah mencoret variabel yang sama atas dan bawah. Caranya dengan menjabarkan suku yang lebih besar agar sama dengan suku yang kecil.

- Jabarkan Pangkat: $3^{n+1}$ itu sama dengan $3^n \cdot 3^1$.
    
- Jabarkan Faktorial: $(n+1)!$ itu artinya $(n+1) \times n \times (n-1) \dots$, yang mana bisa kita tulis singkat menjadi $(n+1) \cdot n!$.
    

Mari kita masukkan bentuk jabaran tersebut ke dalam limit:

$$\rho = \lim_{n \to \infty} \frac{3^n \cdot 3}{(n+1) \cdot n!} \times \frac{n!}{3^n}$$

**Langkah 4: Coret dan Evaluasi Limit**

Sekarang kita bisa mencoret $3^n$ dan $n!$ di pembilang dan penyebut. Yang tersisa hanyalah:

$$\rho = \lim_{n \to \infty} \frac{3}{n+1}$$

Substitusikan $n = \infty$, maka angka $3$ dibagi nilai tak terhingga hasilnya adalah $0$.

$$\rho = 0$$

**Kesimpulan:** Karena nilai $\rho = 0$ (di mana $0 < 1$), maka deret ini **KONVERGEN**.

---

**Soal 2:** Selidiki kekonvergenan deret $\sum_{n=1}^{\infty} \frac{3^n}{n^2}$

**Penyelesaian untuk UTS:**

_Intuisi:_ Ada konstanta pangkat $n$ ($3^n$), maka kita hajar pakai Tes Hasil Bagi.

**Langkah 1: Tentukan $a_n$ dan $a_{n+1}$**

- $a_n = \frac{3^n}{n^2}$
    
- $a_{n+1} = \frac{3^{n+1}}{(n+1)^2}$ _(ingat, n-nya dikurung lalu dikuadratkan)_
    

**Langkah 2 & 3: Masukkan rumus dan Jabarkan**

$$\rho = \lim_{n \to \infty} \frac{3^{n+1}}{(n+1)^2} \times \frac{n^2}{3^n}$$

Jabarkan $3^{n+1}$ menjadi $3^n \cdot 3$:

$$\rho = \lim_{n \to \infty} \frac{3^n \cdot 3}{(n+1)^2} \times \frac{n^2}{3^n}$$

Coret $3^n$ atas dan bawah, sisanya kita kalikan:

$$\rho = \lim_{n \to \infty} \frac{3n^2}{(n+1)^2}$$

**Langkah 4: Evaluasi Limit**

Jabarkan bentuk $(n+1)^2$ di penyebut menjadi $n^2 + 2n + 1$:

$$\rho = \lim_{n \to \infty} \frac{3n^2}{n^2 + 2n + 1}$$

Gunakan aturan bagi pangkat tertinggi. Pangkat tertinggi di atas dan di bawah sama-sama $n^2$. Maka kita cukup ambil koefisien (angka depan) dari $n^2$ tersebut.

Di atas ada angka $3$, di bawah ada angka $1$.

$$\rho = \frac{3}{1} = 3$$

**Kesimpulan:** Karena nilai $\rho = 3$ (di mana $3 > 1$), maka deret ini **DIVERGEN**.

---

### **2. Tes Akar (Root Test)**

**Kapan alat ini digunakan?**

Coba perhatikan bentuk soalnya. Jika kalian melihat **seluruh fungsi dikurung besar lalu dipangkatkan $n$** (contoh: $(\dots)^n$), maka ini adalah tanda mutlak untuk menggunakan Tes Akar.

**Aturan Main:**

Kita mencari nilai $\rho$ dengan cara mengakarkan seluruh rumus tersebut dengan "Akar pangkat $n$". Efek magis dari akar pangkat $n$ ini adalah dia akan langsung menghancurkan pangkat $n$ yang ada di luar kurung!

$$\rho = \lim_{n \to \infty} \sqrt[n]{a_n}$$

Hasil penentuannya SAMA PERSIS dengan Tes Hasil Bagi:

1. $\rho < 1 \implies$ **KONVERGEN**.
    
2. $\rho > 1 \implies$ **DIVERGEN**.
    
3. $\rho = 1 \implies$ **GAGAL**.
    

---

**Pembahasan Contoh Soal Tes Akar:**

**Soal 1:** Selidiki kekonvergenan deret $\sum_{n=1}^{\infty} \left( \frac{2n+2}{n-1} \right)^n$

**Penyelesaian untuk UTS:**

_Intuisi:_ Seluruh fungsi terkurung dan dipangkatkan $n$. Langsung gunakan Tes Akar.

**Langkah 1: Masukkan ke rumus Tes Akar**

$$\rho = \lim_{n \to \infty} \sqrt[n]{\left( \frac{2n+2}{n-1} \right)^n}$$

**Langkah 2: Hancurkan pangkatnya**

Akar pangkat $n$ bertemu dengan pangkat $n$ akan saling menetralisir, sehingga kurungnya terbuka dan fungsinya keluar dengan bebas.

$$\rho = \lim_{n \to \infty} \frac{2n+2}{n-1}$$

**Langkah 3: Evaluasi Limit Polinomial**

Seperti biasa, lihat pangkat tertingginya. Pangkat tertinggi atas dan bawah adalah sama, yaitu $n^1$.

Ambil koefisien di depannya:

$$\rho = \frac{2}{1} = 2$$

**Kesimpulan:** Karena $\rho = 2$ (di mana $2 > 1$), maka deret ini dipastikan **DIVERGEN**.

---

**Soal 2:** Selidiki kekonvergenan deret $\sum_{n=1}^{\infty} \left( \frac{n+2}{2n-1} \right)^n$

**Penyelesaian untuk UTS:**

Ini sangat mirip dengan soal pertama.

**Langkah 1 & 2: Pasang Akar dan Hancurkan Pangkatnya**

$$\rho = \lim_{n \to \infty} \sqrt[n]{\left( \frac{n+2}{2n-1} \right)^n}$$

$$\rho = \lim_{n \to \infty} \frac{n+2}{2n-1}$$

**Langkah 3: Evaluasi Limit**

Pangkat tertinggi sama-sama $n$.

Di atas koefisien $n$ adalah $1$ (karena tertulis $n$ saja), di bawah koefisiennya adalah $2$.

$$\rho = \frac{1}{2}$$

**Kesimpulan:** Karena $\rho = \frac{1}{2}$ (di mana nilainya lebih kecil dari $1$), maka deret ini terbukti **KONVERGEN**.

---

_Tips Tambahan: Untuk ujian, usahakan tidak ada langkah penjabaran (terutama di bagian limit pangkat tertinggi) yang di-skip agar dosen bisa melihat alur berpikir kalian yang sistematis._