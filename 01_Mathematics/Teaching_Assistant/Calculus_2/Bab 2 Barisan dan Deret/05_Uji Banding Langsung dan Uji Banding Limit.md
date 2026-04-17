**Catatan Responsi Kalkulus 2: Uji Banding Langsung dan Uji Banding Limit (Halaman 29)**

Halo teman-teman, mari kita lanjutkan ke dua alat uji deret positif yang sangat penting dan akan menjadi "senjata utama" kalian saat UTS nanti. Seringkali, dosen memberikan soal deret yang bentuknya mirip dengan Deret-p (ada pangkat $n$-nya), tetapi ditambahi angka-angka konstanta yang membuatnya terlihat rumit, misalnya ada $+5$, $-7$, dan sebagainya.

Untuk menyelesaikan deret yang "kotor" seperti ini, kita menggunakan metode **Banding (Comparison)**. Logikanya sangat rasional: kita mencari deret bayangan yang "bersih" (kita sebut $b_n$) sebagai acuan, lalu kita bandingkan nasib deret soal ($a_n$) dengan deret acuan tersebut.

---

### **1. Tes Perbandingan Langsung (Analogi Atap dan Lantai)**

**Cara Berpikir (Intuisi):**
Bayangkan deret acuan ($b_n$) itu seperti Atap atau Lantai sebuah bangunan.
1. **Aturan Atap:** Jika deret acuan kita punya batas nilai pasti / **Konvergen**, dia bertindak sebagai "Atap". Jika deret soal ($a_n$) nilainya **LEBIH KECIL** (berada di bawah atap), maka dia pasti terkurung dan ikut **KONVERGEN**.
2. **Aturan Lantai:** Jika deret acuan kita membesar tanpa batas / **Divergen**, dia bertindak sebagai "Lantai yang terus naik". Jika deret soal ($a_n$) nilainya **LEBIH BESAR** (berada di atas lantai), maka dia pasti ikut terdorong ke atas tak terhingga dan ikut **DIVERGEN**.

*Cara mencari deret acuan ($b_n$): Sangat mudah! Cukup ambil variabel dengan pangkat tertinggi di pembilang (atas) dan di penyebut (bawah), lalu buang semua angka konstanta penambah atau pengurangnya.*

Mari kita bedah kedua contoh di modul agar kalian paham penerapan matematisnya:

**Contoh 2 (Kita bahas yang pembuktian Konvergen dulu):** Selidiki kekonvergenan $\sum_{n=1}^{\infty} \frac{1}{n^2 + 5}$

**Penyelesaian untuk UTS:**
**Langkah 1: Tentukan Deret Acuan ($b_n$)**
Abaikan angka konstanta $+5$ di bagian penyebut. Kita dapatkan deret acuan yang bersih:
$$b_n = \frac{1}{n^2}$$

**Langkah 2: Cek Sifat Deret Acuan**
Ingat materi uji deret sebelumnya! Bentuk $\frac{1}{n^2}$ adalah rumus baku **Deret-p**. Karena nilai pangkatnya $p = 2$ (di mana $2 > 1$), maka deret acuan ini sifatnya **KONVERGEN** (berfungsi sebagai Atap).

**Langkah 3: Bandingkan Ukurannya (Wajib ditulis logikanya di lembar ujian)**
Mana yang hasil pecahannya lebih besar? Deret soal $a_n = \frac{1}{n^2 + 5}$ atau deret acuan $b_n = \frac{1}{n^2}$?
Secara logika pecahan, jika penyebutnya (pembaginya) lebih besar, maka hasil pecahannya pasti **lebih kecil**. 
Karena penyebut deret soal ($n^2 + 5$) jelas lebih besar daripada penyebut acuan ($n^2$), maka:
$$\frac{1}{n^2 + 5} < \frac{1}{n^2}$$
Artinya: $a_n < b_n$.

**Kesimpulan:** Karena deret acuan konvergen (punya atap) dan deret soal nilainya lebih kecil (ada di bawah atap), maka deret soal terbukti mutlak **KONVERGEN**.

---

**Contoh 1 (Pembuktian Divergen):**
Selidiki kekonvergenan $\sum_{n=1}^{\infty} \frac{n}{n^2 - 5}$

**Penyelesaian untuk UTS:**
**Langkah 1: Tentukan Deret Acuan ($b_n$)**
Abaikan konstanta $-5$ di penyebut. Tersisa $\frac{n}{n^2}$. 
Sederhanakan dengan mencoret huruf $n$ atas dan bawah, sehingga kita dapatkan deret acuan:
$$b_n = \frac{1}{n}$$

**Langkah 2: Cek Sifat Deret Acuan**
Bentuk $\frac{1}{n}$ adalah **Deret Harmonik**. Deret harmonik adalah deret-p dengan $p = 1$. Sesuai aturan deret-p (jika $p \leq 1$), maka deret ini mutlak **DIVERGEN** (berfungsi sebagai Lantai yang membesar tanpa batas).
*(Ingat: Segala bentuk kelipatan deret harmonik seperti $\frac{2}{n}$ atau $\frac{1}{5n}$ juga pasti divergen).*

**Langkah 3: Bandingkan Ukurannya**
Mari kita bandingkan: $\frac{n}{n^2 - 5}$ dengan $\frac{n}{n^2}$.
Karena penyebut deret soal ($n^2 - 5$) itu **lebih kecil** akibat dikurangi angka 5, maka nilai keseluruhan pecahan deret soal justru menjadi **LEBIH BESAR**.
$$\frac{n}{n^2 - 5} > \frac{n}{n^2}$$
Artinya: $a_n > b_n$.

**Kesimpulan:** Karena deret acuan divergen (lantai yang naik tak terhingga) dan deret soal nilainya lebih besar dari acuan tersebut, maka deret soal ikut terdorong membesar tanpa batas. Terbukti bahwa deret soal **DIVERGEN**.

---

### **2. Tes Banding Limit (Senjata Pamungkas Pecahan Polinomial)**

**Cara Berpikir (Intuisi):**
Metode membandingkan lebih besar atau lebih kecil (seperti di atas) terkadang membingungkan, terutama kalau soalnya memiliki banyak variabel yang dicampur tanda minus. 
Solusi paling aman dan pasti berhasi untuk soal suku banyak (polinomial) adalah: **Bagi saja deret soal dengan deret acuannya, lalu cari nilai limit menuju tak hingganya!**

**Aturan Main Tes Banding Limit:**
Kalian hitung nilai $L = \lim_{n \to \infty} \frac{a_n}{b_n}$
Jika hasil limitnya berupa **angka positif riil** (yaitu angka berapapun selain $0$ dan selain $\infty$), maka **nasib mereka berdua persis sama**. 
Kalau deret acuan terbukti konvergen, soal ikut konvergen. Kalau acuan divergen, soal ikut divergen. Sangat simpel!

**Contoh 1:** Selidiki kekonvergenan $\sum_{n=1}^{\infty} \frac{2n + 3}{n^3 - 5n^2 + 7}$

**Penyelesaian untuk UTS:**
**Langkah 1: Tentukan Deret Acuan ($b_n$)**
Ambil variabel dengan pangkat tertinggi saja di pembilang dan penyebut.
Di atas pangkat tertingginya $2n$, di bawah $n^3$. Jadinya $\frac{2n}{n^3}$.
Sederhanakan menjadi $\frac{2}{n^2}$. Untuk mempermudah deret acuan, konstanta pengali (angka 2 di atas) boleh kita buang saja agar bentuknya menjadi deret-p murni.
$$b_n = \frac{1}{n^2}$$
Sifat Acuan: Karena ini Deret-p dengan $p = 2$ (di mana $2 > 1$), maka acuan ini **KONVERGEN**.

**Langkah 2: Masukkan ke Rumus Tes Banding Limit**
$$L = \lim_{n \to \infty} \frac{a_n}{b_n}$$
$$L = \lim_{n \to \infty} \frac{\frac{2n + 3}{n^3 - 5n^2 + 7}}{\frac{1}{n^2}}$$

Ingat aturan aljabar dasar, membagi dengan pecahan itu sama persis dengan mengalikan kebalikannya:
$$L = \lim_{n \to \infty} \frac{2n + 3}{n^3 - 5n^2 + 7} \times \frac{n^2}{1}$$
Kalikan $n^2$ ke bagian pembilang (kali pelangi):
$$L = \lim_{n \to \infty} \frac{2n^3 + 3n^2}{n^3 - 5n^2 + 7}$$

**Langkah 3: Selesaikan Limit Menuju Tak Hingga**
Gunakan metode membagi dengan pangkat tertinggi yang sudah kita pelajari. 
Pangkat tertinggi di keseluruhan pecahan tersebut adalah $n^3$. Karena pangkat tertinggi pembilang (atas) sama persis dengan pangkat tertinggi penyebut (bawah), maka hasil limitnya adalah pembagian dari koefisien angka di depan pangkat tertinggi tersebut.
Di atas angkanya $2$, di bawah angkanya $1$ (dari $1n^3$).
$$L = \frac{2}{1} = 2$$

**Kesimpulan:** Karena hasil limitnya adalah angka riil yang positif ($L = 2$), maka syarat Tes Banding Limit terpenuhi dan membuktikan bahwa nasib mereka berdua persis sama. Karena deret acuan kita konvergen, maka deret soal terbukti mutlak **KONVERGEN**.

---

**Contoh 2:**
Selidiki kekonvergenan $\sum_{n=1}^{\infty} \frac{1}{\sqrt{n^2 + 4}}$

**Penyelesaian untuk UTS:**
**Langkah 1: Tentukan Deret Acuan ($b_n$)**
Abaikan konstanta $+4$. Tersisa bentuk $\frac{1}{\sqrt{n^2}}$. 
Akar dari nilai kuadrat akan saling menetralisir, sehingga deret acuannya berubah menjadi sangat sederhana:
$$b_n = \frac{1}{n}$$
Sifat Acuan: Ini adalah deret harmonik (atau Deret-p dengan $p = 1$). Deret ini selalu membesar tanpa batas, sehingga mutlak **DIVERGEN**.

**Langkah 2: Masukkan ke Tes Banding Limit**
$$L = \lim_{n \to \infty} \frac{a_n}{b_n}$$
$$L = \lim_{n \to \infty} \frac{\frac{1}{\sqrt{n^2 + 4}}}{\frac{1}{n}}$$
Ubah menjadi operasi perkalian dengan membalik pecahan acuannya:
$$L = \lim_{n \to \infty} \frac{1}{\sqrt{n^2 + 4}} \times \frac{n}{1}$$
$$L = \lim_{n \to \infty} \frac{n}{\sqrt{n^2 + 4}}$$

**Langkah 3: Selesaikan Limitnya (Penting: Hati-hati dengan tanda akar!)**
Pangkat tertinggi di pembilang adalah $n^1$ (atau $n$). Pangkat tertinggi di penyebut kelihatannya $n^2$, tapi karena ia berada di dalam akar persegi ($\sqrt{\dots}$), nilai aslinya tetaplah setara dengan $n^1$.
Maka, kita bagi seluruh elemen di atas dan di bawah dengan $n$.

*Aturan aljabar yang harus diingat:* Jika huruf $n$ ingin masuk menyelinap ke dalam kurungan akar ($\sqrt{\dots}$), ia harus dikuadratkan terlebih dahulu menjadi $n^2$.
$$L = \lim_{n \to \infty} \frac{\frac{n}{n}}{\sqrt{\frac{n^2}{n^2} + \frac{4}{n^2}}}$$
Sederhanakan persamaan di atas:
$$L = \lim_{n \to \infty} \frac{1}{\sqrt{1 + \frac{4}{n^2}}}$$
Substitusikan $n = \infty$. Angka $4$ dibagi tak hingga ($\infty$) hasilnya adalah $0$.
$$L = \frac{1}{\sqrt{1 + 0}} = \frac{1}{\sqrt{1}} = \frac{1}{1} = 1$$

**Kesimpulan:** Karena hasil akhir limitnya berupa angka riil positif ($L = 1$), terbukti bahwa nasib mereka sama. Karena deret acuan yang kita pilih tadi divergen, maka deret soal di atas terbukti **DIVERGEN**.