**Catatan Responsi Kalkulus: Integral Tak Wajar**

Halo teman-teman, berikut adalah rangkuman materi untuk bab Integral Tak Wajar. Dinamakan "Tak Wajar" karena ada kondisi spesifik yang membuat kita tidak bisa menghitung integralnya menggunakan cara substitusi batas atas dan batas bawah seperti biasa.

Terdapat dua jenis ketidakwajaran dalam integral ini, namun aturan penyelesaiannya bersumber pada satu prinsip dasar yang sama.

### **Aturan Utama Integral Tak Wajar:**

> Kalian **TIDAK BOLEH** mensubstitusikan simbol tak hingga ($\infty$) atau angka pembuat nol pada penyebut secara langsung ke dalam fungsi. Gantilah simbol/angka bermasalah tersebut menggunakan huruf bantu (parameter, misalnya $b$, $t$, atau $s$), lalu gunakan konsep **LIMIT**.

---

### **Jenis 1: Batas Integrasi Tak Hingga**

Jenis pertama ini paling mudah dikenali karena batas atas atau batas bawah pada simbol integralnya bukan berupa angka pasti, melainkan tak hingga ($\infty$) atau minus tak hingga ($-\infty$).

**Soal:** Tentukan nilai dari $\int_{4}^{\infty} x e^{-x^2} \, dx$  (halaman 18 bagian a)

**Penyelesaian:**

Mengingat $\infty$ bukanlah sebuah angka riil, kita tidak bisa mengalikan atau memangkatkan sesuatu dengan $\infty$ di akhir perhitungan.

**Langkah 1: Ubah menjadi bentuk Limit**

Ganti simbol $\infty$ dengan variabel bantu (misalnya $b$), lalu tarik limit $b$ menuju tak hingga.

$$\lim_{b \to \infty} \int_{4}^{b} x e^{-x^2} \, dx$$

**Langkah 2: Selesaikan integralnya secara normal**

Abaikan limit dan batasnya sejenak, fokus selesaikan $\int x e^{-x^2} \, dx$ dengan metode substitusi.

Misalkan $u = -x^2$, maka turunannya adalah $du = -2x \, dx$, sehingga $x \, dx = \frac{du}{-2}$.

$$\int e^u \left( \frac{du}{-2} \right) = -\frac{1}{2} \int e^u \, du = -\frac{1}{2} e^u = -\frac{1}{2} e^{-x^2}$$

**Langkah 3: Masukkan batas atas dan batas bawah**

Kembalikan bentuk limit dan substitusikan batasnya (atas kurangi bawah).

$$= \lim_{b \to \infty} \left[ -\frac{1}{2} e^{-x^2} \right]_{4}^{b}$$

$$= \lim_{b \to \infty} \left( \left(-\frac{1}{2} e^{-b^2}\right) - \left(-\frac{1}{2} e^{-4^2}\right) \right)$$

$$= \lim_{b \to \infty} \left( -\frac{1}{2 e^{b^2}} + \frac{1}{2 e^{16}} \right)$$

**Langkah 4: Evaluasi Limit**

Bayangkan nilai $b$ terus membesar menuju tak terhingga. Maka, nilai penyebut $e^{b^2}$ akan menjadi angka yang luar biasa raksasa.

Sesuai konsep limit, angka berapapun yang dibagi oleh nilai tak terhingga besarnya akan mendekati nol ($0$). Oleh karena itu, nilai dari $-\frac{1}{2 e^{b^2}}$ saat $b \to \infty$ adalah $0$.

$$= 0 + \frac{1}{2 e^{16}} = \frac{1}{2 e^{16}}$$

**Kesimpulan:** Karena hasil akhirnya berupa angka yang jelas dan pasti (bukan tak hingga), maka integral tak wajar ini sifatnya **KONVERGEN** (memusat ke satu nilai).

---

### **Jenis 2: Fungsi Tak Terdefinisi (Asimtot Vertikal) di Tengah Interval**

Jenis kedua ini agak _tricky_ (menjebak) karena sekilas batas integralnya terlihat wajar berupa angka biasa. Ketidakwajaran baru terlihat jika kita menganalisis fungsi di dalam integralnya.

**Soal:** Tentukan nilai dari $\int_{0}^{2} \frac{x}{1-x} \, dx$

**Penyelesaian:**

Batas integralnya adalah dari $0$ sampai $2$. Namun, perhatikan bagian penyebut fungsinya, yaitu $(1 - x)$.

Jika nilai $x = 1$, maka penyebutnya menjadi $1 - 1 = 0$. Pembagian dengan nol akan membuat fungsinya meledak menjadi tak hingga (tak terdefinisi). Karena angka $1$ terletak tepat di tengah-tengah rentang interval $[0, 2]$, kita **dilarang keras** menabrak angka tersebut.

**Langkah 1: Pecah rute integral**

Kita harus membelah integral ini di titik masalahnya (yaitu $x = 1$).

$$\int_{0}^{1} \frac{x}{1-x} \, dx \quad + \quad \int_{1}^{2} \frac{x}{1-x} \, dx$$

**Langkah 2: Ubah menjadi bentuk Limit**

Karena angka $1$ adalah "zona terlarang", kita ganti angka tersebut dengan variabel bantu dan gunakan limit pendekatan kiri dan kanan.

$$= \lim_{t \to 1^-} \int_{0}^{t} \frac{x}{1-x} \, dx \quad + \quad \lim_{s \to 1^+} \int_{s}^{2} \frac{x}{1-x} \, dx$$

**Langkah 3: Cari hasil integral aslinya**

Selesaikan $\int \frac{x}{1-x} \, dx$ dengan trik manipulasi aljabar pembilang:

$$\frac{x}{1-x} = \frac{-(1-x) + 1}{1-x} = \frac{-(1-x)}{1-x} + \frac{1}{1-x} = -1 + \frac{1}{1-x}$$

Maka hasil integralnya adalah:

$$\int \left( -1 + \frac{1}{1-x} \right) \, dx = -x - \ln|1-x|$$

**Langkah 4: Evaluasi satu bagian saja (Kiri)**

Untuk menghemat waktu, selesaikan bagian kiri terlebih dahulu. Jika bagian kiri hasilnya tak hingga (divergen), maka kita tidak perlu menghitung bagian kanannya.

$$= \lim_{t \to 1^-} \left[ -x - \ln|1-x| \right]_{0}^{t}$$

$$= \lim_{t \to 1^-} \left( (-t - \ln|1-t|) - (-0 - \ln|1-0|) \right)$$

$$= \lim_{t \to 1^-} (-t - \ln|1-t|)$$

**Langkah 5: Masukkan nilai Limit**

Kita uji pendekatan $t \to 1$. Fokus pada bentuk $\ln|1-t|$.

Jika $t$ mendekati $1$, maka nilai $(1 - t)$ akan sangat dekat dengan $0$.

Ingat sifat logaritma natural: nilai dari $\ln(x)$ ketika $x$ mendekati $0$ akan menukik tajam menuju minus tak terhingga ($-\infty$).

Karena bagian limit ini menghasilkan tak hingga, perhitungan gagal menemukan angka pasti.

**Kesimpulan:** Integral ini **DIVERGEN** (menyebar/tidak memiliki nilai pasti). Perhitungan untuk bagian limit kanan tidak perlu dilanjutkan.

---
### **Jenis 3: Batas Integrasi Tak Hingga di Kedua Ujung**

Kasus ini terjadi ketika batas bawah adalah minus tak hingga ($-\infty$) dan batas atas adalah plus tak hingga ($\infty$). Aturan mainnya: kita tidak bisa melimitkan dua tak hingga sekaligus dalam satu integral. Kita harus memecah rutenya dengan "transit" di titik aman (paling mudah menggunakan angka $0$).

**Soal:** Tentukan nilai dari $\int_{-\infty}^{\infty} \frac{dx}{x^2 + 2x + 5}$

**Penyelesaian:**

**Langkah 1: Belah Integral dan Pasang Limit**

Kita pecah integralnya di angka $0$, lalu ubah simbol tak hingganya menjadi huruf (parameter) dan pasang limit.

$$\int_{-\infty}^{0} \frac{dx}{x^2 + 2x + 5} \quad + \quad \int_{0}^{\infty} \frac{dx}{x^2 + 2x + 5}$$

$$= \lim_{a \to -\infty} \int_{a}^{0} \frac{dx}{x^2 + 2x + 5} \quad + \quad \lim_{b \to \infty} \int_{0}^{b} \frac{dx}{x^2 + 2x + 5}$$

**Langkah 2: Selesaikan Integralnya (Melengkapkan Kuadrat)**

Fokus pada fungsi $\frac{1}{x^2 + 2x + 5}$. Karena penyebutnya berbentuk kuadrat dan tidak bisa difaktorkan, kita gunakan teknik melengkapkan kuadrat sempurna:

$$x^2 + 2x + 5 = (x^2 + 2x + 1) + 4 = (x+1)^2 + 2^2$$

Bentuk penyebutnya sekarang menjadi $(x+1)^2 + 2^2$.

_Catatan Penting:_ Ingat kembali rumus standar integral trigonometri invers:

$$\int \frac{1}{u^2 + a^2} \, du = \frac{1}{a} \arctan\left(\frac{u}{a}\right)$$

Dengan memisalkan $u = x+1$ dan $a = 2$, maka hasil integralnya langsung didapat:

$$\int \frac{dx}{(x+1)^2 + 2^2} = \frac{1}{2} \arctan\left(\frac{x+1}{2}\right)$$

**Langkah 3: Masukkan Batas dan Evaluasi Limit**

Kembalikan ke dalam persamaan limit dan substitusikan batas-batasnya:

$$= \lim_{a \to -\infty} \left[ \frac{1}{2} \arctan\left(\frac{x+1}{2}\right) \right]_{a}^{0} \quad + \quad \lim_{b \to \infty} \left[ \frac{1}{2} \arctan\left(\frac{x+1}{2}\right) \right]_{0}^{b}$$

Jabarkan batas atas dikurangi batas bawah:

$$= \left( \frac{1}{2} \arctan\left(\frac{0+1}{2}\right) - \frac{1}{2} \arctan\left(\frac{a+1}{2}\right) \right) + \left( \frac{1}{2} \arctan\left(\frac{b+1}{2}\right) - \frac{1}{2} \arctan\left(\frac{0+1}{2}\right) \right)$$

Nilai $\frac{1}{2} \arctan(1/2)$ saling menghilangkan (satu positif, satu negatif). Persamaan tersisa:

$$= - \lim_{a \to -\infty} \frac{1}{2} \arctan\left(\frac{a+1}{2}\right) + \lim_{b \to \infty} \frac{1}{2} \arctan\left(\frac{b+1}{2}\right)$$

Jika $a \to -\infty$, maka nilai di dalam arctan adalah $-\infty$. Jika $b \to \infty$, nilainya adalah $\infty$.

Ingat sifat grafik tangen: Tangen sudut berapa yang hasilnya tak terhingga ($\infty$)? Jawabannya adalah $90^\circ$ atau $\frac{\pi}{2}$. Jika $-\infty$, jawabannya $-\frac{\pi}{2}$.

$$= - \frac{1}{2} \left(-\frac{\pi}{2}\right) + \frac{1}{2} \left(\frac{\pi}{2}\right)$$

$$= \frac{\pi}{4} + \frac{\pi}{4} = \frac{2\pi}{4} = \frac{\pi}{2}$$

**Kesimpulan:** Karena menghasilkan angka pasti, integral ini bersifat **KONVERGEN**.

---

### **Jenis 4: Titik Tak Terdefinisi (Singularitas) di Batas Integrasi**

Terkadang batas integral tampak seperti angka wajar, namun salah satu angkanya membuat fungsi menjadi tak terdefinisi jika disubstitusi. Angka ini harus diganti dengan limit.

**Soal:** Tentukan nilai dari $\int_{0}^{1} \frac{\ln x}{x} \, dx$

**Penyelesaian:**

Jika kita substitusi batas atas $x = 1$, fungsinya bernilai $\frac{\ln(1)}{1} = \frac{0}{1} = 0$ (Aman).

Namun, jika substitusi batas bawah $x = 0$, fungsi bernilai $\frac{\ln(0)}{0}$. Kita tahu bahwa $\ln(0)$ nilainya menuju $-\infty$ (tak terdefinisi). Karena $0$ adalah "ranjau", kita ganti dengan huruf $t$ dan beri limit.

**Langkah 1: Setup Limit dan Hitung Integral**

$$\lim_{t \to 0^+} \int_{t}^{1} \frac{\ln x}{x} \, dx$$

Gunakan substitusi biasa:

Misal $u = \ln x \implies du = \frac{1}{x} \, dx$

$$\int u \, du = \frac{1}{2}u^2 = \frac{1}{2}(\ln x)^2$$

**Langkah 2: Evaluasi Limit**

Masukkan batasnya:

$$= \lim_{t \to 0^+} \left[ \frac{1}{2}(\ln x)^2 \right]_{t}^{1}$$

$$= \lim_{t \to 0^+} \left( \frac{1}{2}(\ln 1)^2 - \frac{1}{2}(\ln t)^2 \right)$$

Karena $\ln(1) = 0$, bagian depan menjadi nol.

$$= \lim_{t \to 0^+} \left( 0 - \frac{1}{2}(\ln t)^2 \right)$$

Uji limit $t \to 0^+$. Nilai $\ln(t)$ akan menuju $-\infty$. Jika $-\infty$ dikuadratkan, hasilnya menjadi $\infty$ (positif tak terhingga). Kemudian dikali dengan $-\frac{1}{2}$.

$$= -\frac{1}{2} (\infty) = -\infty$$

**Kesimpulan:** Karena nilainya meledak menjadi tak terhingga, integral ini **DIVERGEN**.

---

### **Jenis 5: Kasus Gabungan (Kondisi Tak Wajar Ganda)**

Ini adalah soal dengan tingkat kesulitan analisis tertinggi, di mana batasnya tak terhingga DAN ada titik yang membuat fungsi tidak terdefinisi di tengah jalan.

**Soal:** Tentukan sifat dari $\int_{0}^{\infty} \frac{x}{1-x} \, dx$

**Penyelesaian:**

Soal ini memiliki dua masalah:

1. Batas atas berupa tak hingga ($\infty$).
    
2. Di tengah interval $0$ hingga $\infty$, terdapat angka $1$. Jika disubstitusikan ke penyebut $(1-x)$, hasilnya menjadi nol (tak terdefinisi).
    

Secara teoritis, rute integral ini harus dipecah menjadi **tiga** bagian:

$$\int_{0}^{1} \frac{x}{1-x} \, dx \quad + \quad \int_{1}^{2} \frac{x}{1-x} \, dx \quad + \quad \int_{2}^{\infty} \frac{x}{1-x} \, dx$$

**Hukum Emas Integral Tak Wajar (Jalan Pintas):**

Jika sebuah integral dipecah menjadi beberapa bagian, dan ternyata ada **SATU SAJA** bagian yang hasilnya tak terhingga (Divergen), maka **seluruh integral tersebut otomatis bersifat DIVERGEN**. Kita tidak perlu menghitung bagian lainnya.

Berdasarkan perhitungan pada contoh soal di materi sebelumnya (Jenis 2), kita sudah membuktikan bahwa potongan pertama dari rute ini:

$$\int_{0}^{1} \frac{x}{1-x} \, dx$$

menghasilkan nilai yang menuju $-\infty$ (Divergen).

**Kesimpulan:** Karena salah satu pecahannya sudah terbukti meledak (Divergen), kita dapat langsung menyimpulkan bahwa integral $\int_{0}^{\infty} \frac{x}{1-x} \, dx$ secara keseluruhan adalah **DIVERGEN**.

---

Semoga rangkuman ini dapat membantu teman-teman memahami alur dan trik penyelesaian integral tak wajar. Selamat belajar!