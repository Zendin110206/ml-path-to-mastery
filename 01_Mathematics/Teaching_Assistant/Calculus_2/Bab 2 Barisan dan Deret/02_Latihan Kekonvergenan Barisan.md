**Catatan Responsi Kalkulus 2: Pembahasan Latihan Barisan (Halaman 24-25)**

Halo teman-teman, ini adalah pembahasan lengkap untuk semua soal Latihan Barisan di modul halaman 24 dan 25. Karena ini untuk persiapan UTS, saya akan menuliskan langkah-langkahnya secara detail (menggunakan metode pembagian pangkat tertinggi atau L'Hopital) agar kalian tahu persis bagaimana cara menjawabnya di kertas ujian nanti untuk mendapat poin maksimal.

Mari kita bedah satu per satu!

---

### **Soal 1: Polinomial Pangkat Sama**

Tentukan kekonvergenan barisan $a_n = \frac{4n^2 + 1}{n^2 - 2n + 3}$

**Cara Berpikir (Intuisi):**

Fungsi ini adalah pecahan polinomial (suku banyak). Cara paling aman dan disukai dosen untuk UTS adalah **Metode Membagi dengan Pangkat Tertinggi**. Coba lihat seluruh persamaannya, pangkat $n$ paling besar adalah $n^2$. Jadi, kita akan bagi semua elemen dengan $n^2$.

**Penyelesaian UTS:**

Wajib tuliskan bentuk limitnya terlebih dahulu:

$$\lim_{n \to \infty} \frac{4n^2 + 1}{n^2 - 2n + 3}$$

Bagi setiap suku di atas dan di bawah dengan $n^2$:

$$= \lim_{n \to \infty} \frac{\frac{4n^2}{n^2} + \frac{1}{n^2}}{\frac{n^2}{n^2} - \frac{2n}{n^2} + \frac{3}{n^2}}$$

Sederhanakan variabel $n$-nya:

$$= \lim_{n \to \infty} \frac{4 + \frac{1}{n^2}}{1 - \frac{2}{n} + \frac{3}{n^2}}$$

Sekarang, substitusikan $n = \infty$. Sesuai sifat limit, angka berapapun jika dibagi tak hingga ($n$ atau $n^2$) hasilnya adalah $0$.

$$= \frac{4 + 0}{1 - 0 + 0} = \frac{4}{1} = 4$$

**Kesimpulan:** Karena hasil akhirnya berupa angka riil ($4$), maka barisan ini **KONVERGEN** menuju $4$.

---

### **Soal 2: Polinomial (Pangkat Atas Lebih Besar)**

Tentukan kekonvergenan barisan $a_n = \frac{3n^2 + 2}{n + 1}$

**Cara Berpikir (Intuisi):**

Sama seperti nomor 1, ini pecahan polinomial. Pangkat tertinggi di seluruh fungsi ini adalah $n^2$. Kita bagi semuanya dengan $n^2$. Secara logika, karena yang di atas pangkatnya lebih besar, dia akan tumbuh jauh lebih cepat dan nilainya akan meledak ke tak hingga. Mari kita buktikan secara matematis.

**Penyelesaian UTS:**

$$\lim_{n \to \infty} \frac{3n^2 + 2}{n + 1}$$

Bagi semua suku dengan $n^2$:

$$= \lim_{n \to \infty} \frac{\frac{3n^2}{n^2} + \frac{2}{n^2}}{\frac{n}{n^2} + \frac{1}{n^2}}$$

Sederhanakan:

$$= \lim_{n \to \infty} \frac{3 + \frac{2}{n^2}}{\frac{1}{n} + \frac{1}{n^2}}$$

Substitusikan $n = \infty$:

$$= \frac{3 + 0}{0 + 0} = \frac{3}{0}$$

Ingat, dalam limit, suatu angka positif jika dibagi dengan angka yang sangat mendekati nol, hasilnya akan melesat menjadi tak terhingga.

$$= \infty$$

**Kesimpulan:** Karena limitnya menuju tak hingga, barisan ini **DIVERGEN**.

---

### **Soal 3: Ada Bentuk Akar (Pangkat Bawah Lebih Besar)**

Tentukan kekonvergenan barisan $a_n = \frac{\sqrt{n}}{n + 1}$

**Cara Berpikir (Intuisi):**

Jangan panik melihat akar. Ingat aturan eksponen: $\sqrt{n}$ itu sama saja dengan $n^{1/2}$.

Berarti pangkat di atas adalah $0.5$, sedangkan pangkat tertinggi di bawah adalah $1$. Pangkat tertinggi secara keseluruhan adalah $n^1$. Kita bagi semua dengan $n^1$ (atau $n$).

**Penyelesaian UTS:**

$$\lim_{n \to \infty} \frac{\sqrt{n}}{n + 1}$$

Ubah akar menjadi pangkat pecahan agar mudah, lalu bagi semua dengan $n$:

$$= \lim_{n \to \infty} \frac{\frac{n^{1/2}}{n}}{\frac{n}{n} + \frac{1}{n}}$$

Sederhanakan. Ingat, $\frac{n^{0.5}}{n^1} = \frac{1}{n^{0.5}} = \frac{1}{\sqrt{n}}$:

$$= \lim_{n \to \infty} \frac{\frac{1}{\sqrt{n}}}{1 + \frac{1}{n}}$$

Substitusikan $n = \infty$:

$$= \frac{0}{1 + 0} = \frac{0}{1} = 0$$

**Kesimpulan:** Karena hasil limitnya angka pasti ($0$), maka barisan ini **KONVERGEN** menuju $0$.

---

### **Soal 4: Bentuk Eksponensial (Pangkat $n$)**

Tentukan kekonvergenan barisan $a_n = \frac{(-\pi)^n}{4^n}$

**Cara Berpikir (Intuisi):**

_Perhatian!_ Ini bukan polinomial. Variabel $n$-nya ada di atas sebagai pangkat, bukan sebagai angka pokok. Ini adalah bentuk barisan geometri ($r^n$).

Triknya: Satukan dulu pangkatnya karena atas dan bawah sama-sama punya pangkat $n$.

**Penyelesaian UTS:**

Tulis dalam bentuk limit:

$$\lim_{n \to \infty} \frac{(-\pi)^n}{4^n}$$

Gunakan sifat eksponen $\frac{a^n}{b^n} = \left(\frac{a}{b}\right)^n$ untuk menyatukannya:

$$= \lim_{n \to \infty} \left(-\frac{\pi}{4}\right)^n$$

Sekarang kita analisis rasionya ($r = -\frac{\pi}{4}$).

Kita tahu nilai $\pi$ adalah sekitar $3.14$. Maka pecahannya menjadi $-\frac{3.14}{4}$.

Nilai ini berada di antara $-1$ dan $1$ (karena pembilangnya lebih kecil dari penyebutnya).

Sifat limit eksponensial: Jika sebuah pecahan yang nilainya di antara $-1$ dan $1$ dipangkatkan dengan tak terhingga ($\infty$), nilainya akan terus mengecil dan hancur menjadi $0$.

_(Coba saja bayangkan $\frac{1}{2} \times \frac{1}{2} \times \frac{1}{2} \dots$ pasti makin lama makin habis jadi 0)._

$$= 0$$

**Kesimpulan:** Barisan ini **KONVERGEN** menuju $0$.

---

### **Soal 5: Campuran Fungsi Berbeda Wajib L'Hopital**

Tentukan kekonvergenan barisan $a_n = \frac{\ln(n)}{n}$

**Cara Berpikir (Intuisi):**

Di sini kita tidak bisa membagi pangkat tertinggi karena $\ln(n)$ bukan polinomial. Kalau kita masukkan langsung $n = \infty$, hasilnya $\frac{\ln(\infty)}{\infty} = \frac{\infty}{\infty}$ (Bentuk Tak Tentu).

Kapanpun kalian mentok karena ada fungsi campuran seperti logaritma natural ($\ln$), trigonometri ($\sin, \cos$), atau eksponensial ($e^n$) yang menghasilkan tak tentu, **Kaidah L'Hopital adalah satu-satunya jalan.**

**Penyelesaian UTS:**

$$\lim_{n \to \infty} \frac{\ln(n)}{n}$$

Tuliskan keterangan "Gunakan L'Hopital" di lembar jawaban kalian agar dosen tahu kalian menurunkan fungsinya.

Turunkan pembilang dan penyebut terhadap $n$:

- Turunan dari $\ln(n)$ adalah $\frac{1}{n}$.
    
- Turunan dari $n$ adalah $1$.
    

$$= \lim_{n \to \infty} \frac{\frac{1}{n}}{1}$$

$$= \lim_{n \to \infty} \frac{1}{n}$$

Sekarang baru substitusikan $n = \infty$:

$$= \frac{1}{\infty} = 0$$

**Kesimpulan:** Barisan ini **KONVERGEN** menuju $0$.

---

### **Soal 6: Mencari Rumus dari Deretan Angka**

Tentukan kekonvergenan barisan $\left\{ \frac{1}{2}, \frac{2}{3}, \frac{3}{4}, \frac{4}{5}, \dots \right\}$

**Cara Berpikir (Intuisi):**

Kalau soalnya tidak ada rumusnya, kita harus jadi "detektif" mencari rumus suku ke-$n$ ($a_n$) terlebih dahulu dengan melihat polanya.

- Lihat bagian atas (pembilang): $1, 2, 3, 4, \dots$ Ini sama persis dengan urutan suku ke-$n$. Jadi atasnya adalah $n$.
    
- Lihat bagian bawah (penyebut): $2, 3, 4, 5, \dots$ Ini selalu lebih besar $1$ angka dari pembilangnya. Jadi bawahnya adalah $n + 1$.
    

**Penyelesaian UTS:**

Langkah 1: Tuliskan rumus barisannya.

$$a_n = \frac{n}{n + 1}$$

Langkah 2: Selesaikan dengan limit menuju tak hingga (Gunakan metode bagi pangkat tertinggi, yaitu $n$).

$$= \lim_{n \to \infty} \frac{n}{n + 1}$$

$$= \lim_{n \to \infty} \frac{\frac{n}{n}}{\frac{n}{n} + \frac{1}{n}}$$

$$= \lim_{n \to \infty} \frac{1}{1 + \frac{1}{n}}$$

Substitusikan $n = \infty$:

$$= \frac{1}{1 + 0} = 1$$

**Kesimpulan:** Barisan **KONVERGEN** menuju $1$.

---

### **Soal 7: Barisan Ganti Tanda (Alternating)**

Tentukan kekonvergenan barisan $\left\{ -1, \frac{2}{3}, -\frac{3}{5}, \frac{4}{7}, -\frac{5}{9}, \dots \right\}$

**Cara Berpikir (Intuisi):**

Ada tanda minus yang muncul selang-seling. Ini berarti rumus pastinya mengandung pengali $(-1)^n$.

Sekarang abaikan dulu tandanya, kita cari pola angkanya saja: $\frac{1}{1}, \frac{2}{3}, \frac{3}{5}, \frac{4}{7}, \dots$

- Atas: $1, 2, 3, 4 \dots \implies n$
    
- Bawah: $1, 3, 5, 7 \dots \implies$ Ini deret ganjil. Rumus bilangan ganjil adalah $2n - 1$.
    

**Penyelesaian UTS:**

Langkah 1: Tuliskan rumus umumnya beserta pengali tandanya.

$$a_n = (-1)^n \frac{n}{2n - 1}$$

Langkah 2: Hitung limitnya.

$$\lim_{n \to \infty} (-1)^n \frac{n}{2n - 1}$$

Kita lihat bagian angkanya saja dulu: $\lim_{n \to \infty} \frac{n}{2n - 1}$.

Jika dihitung dengan metode bagi pangkat tertinggi ($n$), hasil dari pecahan tersebut adalah $\frac{1}{2}$.

Namun, jangan lupa ada pengali $(-1)^n$.

Artinya, ketika $n$ berjalan di angka yang sangat besar (tak terhingga), hasil barisan ini akan terus melompat-lompat berosilasi antara angka $\frac{1}{2}$ (saat $n$ genap) dan $-\frac{1}{2}$ (saat $n$ ganjil).

Syarat mutlak kekonvergenan adalah limit harus menunjuk ke **SATU** nilai pasti. Karena ini punya dua nilai bergantian, limitnya dianggap tidak ada.

**Kesimpulan:** Karena angkanya terus berosilasi, barisan ini **DIVERGEN**.

---

### **Soal 8: Bentuk Terselubung (Wajib Sederhanakan Dulu)**

Tentukan kekonvergenan barisan $\left\{ 1, \frac{1}{1 - \frac{1}{2}}, \frac{1}{1 - \frac{2}{3}}, \frac{1}{1 - \frac{3}{4}}, \dots \right\}$

**Cara Berpikir (Intuisi):**

Ini adalah soal jebakan mental. Bentuk pecahannya terlihat sangat mengerikan. Kunci menghadapi soal seperti ini adalah: _Kerjakan dulu hitungan aritmetika di dalamnya!_ Jangan buru-buru mencari pola rumit.

**Penyelesaian UTS:**

Langkah 1: Sederhanakan masing-masing suku secara manual.

- Suku 1: $1$
    
- Suku 2: $\frac{1}{1 - \frac{1}{2}} = \frac{1}{\frac{1}{2}} = 2$
    
- Suku 3: $\frac{1}{1 - \frac{2}{3}} = \frac{1}{\frac{1}{3}} = 3$
    
- Suku 4: $\frac{1}{1 - \frac{3}{4}} = \frac{1}{\frac{1}{4}} = 4$
    

Langkah 2: Tulis ulang barisan aslinya.

Ternyata, barisan menyeramkan di atas sama persis dengan barisan sederhana ini:

$\{1, 2, 3, 4, \dots\}$

Langkah 3: Tentukan rumus dan hitung limitnya.

Rumusnya jelas adalah $a_n = n$.

$$\lim_{n \to \infty} n = \infty$$

**Kesimpulan:** Karena nilainya terus membesar tanpa batas, barisan ini **DIVERGEN**.