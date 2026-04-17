**Catatan Responsi Kalkulus 2: Operasi Deret Pangkat (Turunan dan Integral)**

Halo teman-teman, sekarang kita masuk ke materi manipulasi Deret Pangkat. Di halaman ini, kita akan belajar bagaimana menciptakan deret baru dari sebuah "Deret Induk" menggunakan operasi Kalkulus dasar, yaitu **Diferensial (Turunan)** dan **Integral**.

### **1. Memahami "Deret Induk" (Rumus Dasar Geometri)**

Sebelum kita mulai menurunkan atau mengintegralkan, kalian **WAJIB HAFAL** satu rumus dasar ini. Ini adalah "Deret Induk" atau "Ibu dari segala deret" di bab ini, yang diambil dari rumus deret geometri tak hingga ($\frac{a}{1-r}$ dengan $a=1$ dan $r=x$):

$$\frac{1}{1-x} = 1 + x + x^2 + x^3 + \dots = \sum_{n=0}^{\infty} x^n$$

_Catatan Penting:_ Rumus ini hanya berlaku dan konvergen pada rentang (selang) **$-1 < x < 1$**.

**Apa tujuan materi ini?**

Terkadang dosen akan meminta kalian mencari bentuk deret dari fungsi yang rumit, seperti $\frac{1}{(1-x)^2}$ atau $\ln(1-x)$. Jika kalian mencarinya dari nol, akan sangat panjang. Triknya adalah: **Kita ubah fungsi rumit tersebut agar ada hubungannya dengan fungsi Deret Induk $\frac{1}{1-x}$, entah itu dengan cara diturunkan atau diintegralkan.**

Mari kita langsung hajar contoh soalnya agar kalian paham alur berpikirnya!

---

### **Pembahasan Soal Sesuai Teorema (Bagian Bawah Halaman)**

**Soal a:** Tentukan deret pangkat dari fungsi $\frac{1}{(1-x)^2}$ untuk $-1 < x < 1$.

**Penyelesaian untuk UTS:**

**Langkah 1: Temukan Hubungannya (Intuisi)**

Coba kalian perhatikan fungsi soal $\frac{1}{(1-x)^2}$ dan bandingkan dengan Deret Induk $\frac{1}{1-x}$.

Apakah kalian sadar? Jika fungsi $\frac{1}{1-x}$ kita **TURUNKAN** terhadap $x$, hasilnya adalah fungsi pada soal!

Mari kita buktikan di kertas buram:

Turunan dari $(1-x)^{-1}$ adalah $-1(1-x)^{-2}(-1) = \frac{1}{(1-x)^2}$.

_Tepat sekali!_

**Langkah 2: Turunkan Deret Induknya**

Karena fungsi kirinya diturunkan, maka deret panjang di ruas kanannya juga **WAJIB** kita turunkan satu per satu secara berurutan.

Fungsi Asli:

$$\frac{1}{1-x} = 1 + x + x^2 + x^3 + x^4 + \dots$$

Kita turunkan kedua ruas ($D_x$):

$$D_x \left[ \frac{1}{1-x} \right] = D_x \left[ 1 + x + x^2 + x^3 + x^4 + \dots \right]$$

$$\frac{1}{(1-x)^2} = 0 + 1 + 2x + 3x^2 + 4x^3 + \dots$$

_(Ingat aturan turunan biasa: pangkat turun ke depan, pangkatnya dikurangi 1)._

**Langkah 3: Ubah ke dalam Notasi Sigma ($\sum$)**

Sekarang kita lihat hasil deret turunannya: $1 + 2x + 3x^2 + 4x^3 + \dots$

Kita harus membuat rumus sukunya ($U_n$).

- Angka depannya: $1, 2, 3, 4 \dots \implies n$
    
- Pangkat $x$-nya: $x^0, x^1, x^2, x^3 \dots \implies x^{n-1}$
    

Maka rumus Sigmanya adalah:

$$\sum_{n=1}^{\infty} n x^{n-1}$$

_(Perhatian: Batas bawah $n$ sekarang dimulai dari $n=1$, bukan $n=0$ lagi. Kenapa? Karena saat kita menurunkan suku pertama (angka 1), hasilnya habis menjadi 0. Jadi suku yang hidup dimulai dari suku ke-1)._

**Kesimpulan Jawaban a:** Deret pangkat untuk $\frac{1}{(1-x)^2} = \sum_{n=1}^{\infty} n x^{n-1}$

---

**Soal b:** Tentukan deret pangkat dari fungsi $\ln(1-x)$ untuk $-1 < x < 1$.

**Penyelesaian untuk UTS:**

**Langkah 1: Temukan Hubungannya (Intuisi)**

Sekarang kita harus mencari hubungan antara $\ln(1-x)$ dengan Deret Induk $\frac{1}{1-x}$.

Ingat materi integral! Integral dari $\frac{1}{x}$ adalah $\ln|x|$.

Maka, integral dari $\frac{1}{1-x}$ adalah $-\ln(1-x)$ _(ada minusnya karena turunan dari $-x$ adalah $-1$)_.

Mari kita susun logikanya:

$$\int \frac{1}{1-x} \, dx = -\ln(1-x)$$

Karena kita hanya butuh $\ln(1-x)$ (tanpa minus), kita kalikan kedua ruas dengan minus:

$$\ln(1-x) = -\int \frac{1}{1-x} \, dx$$

_Artinya, untuk mencari deret $\ln(1-x)$, kita harus mengintegralkan deret induknya, lalu hasilnya dikalikan minus!_

**Langkah 2: Integralkan Deret Induknya**

Fungsi Asli:

$$\frac{1}{1-x} = 1 + x + x^2 + x^3 + \dots$$

Kita integralkan ruas kanannya satu per satu:

$$\int (1 + x + x^2 + x^3 + \dots) \, dx$$

$$= x + \frac{1}{2}x^2 + \frac{1}{3}x^3 + \frac{1}{4}x^4 + \dots$$

_(Ingat aturan integral: pangkat ditambah 1, lalu angkanya turun ke bawah jadi pembagi)._

**Langkah 3: Terapkan Tanda Minus**

Sesuai rumus di Langkah 1, hasilnya harus dikalikan minus:

$$\ln(1-x) = - \left( x + \frac{1}{2}x^2 + \frac{1}{3}x^3 + \frac{1}{4}x^4 + \dots \right)$$

$$\ln(1-x) = -x - \frac{1}{2}x^2 - \frac{1}{3}x^3 - \frac{1}{4}x^4 - \dots$$

**Langkah 4: Ubah ke dalam Notasi Sigma ($\sum$)**

Mari kita lihat pola deret di atas (kita ambil bentuk positifnya dulu, minusnya kita taruh luar):

$x^1 + \frac{x^2}{2} + \frac{x^3}{3} + \frac{x^4}{4} + \dots$

Pangkatnya selalu sama dengan penyebutnya. Berarti polanya adalah $\frac{x^n}{n}$.

Maka penulisan sigmanya adalah:

$$\ln(1-x) = -\sum_{n=1}^{\infty} \frac{x^n}{n}$$

Atau, tanda minusnya boleh kalian masukkan ke dalam (keduanya benar di mata dosen):

$$\ln(1-x) = \sum_{n=1}^{\infty} \frac{-x^n}{n}$$

**Kesimpulan Jawaban b:**

Deret pangkat untuk $\ln(1-x) = -\sum_{n=1}^{\infty} \frac{x^n}{n}$