**Catatan Responsi Kalkulus 2: Review Integral Tak Wajar & Uji Deret Positif (Halaman 28)**

Halo teman-teman, sebelum kita masuk ke alat uji deret yang lebih dalam, kita harus melakukan pemanasan sebentar dengan materi **Integral Tak Wajar**. Mengapa? Karena salah satu alat uji deret nanti (Tes Integral) akan sangat bergantung pada kemampuan kalian menyelesaikan integral yang memiliki batas tak terhingga ($\infty$).

Mari kita bahas tuntas latihan soalnya agar kalian siap menghadapi UTS.

---

### **BAGIAN 1: Review Integral Tak Wajar (Pemanasan)**

**Aturan Emas Integral Tak Wajar:**

Kalian **TIDAK BOLEH** langsung memasukkan simbol tak hingga ($\infty$ atau $-\infty$) ke dalam fungsi. Tak hingga bukanlah angka. Kalian wajib menggantinya dengan sebuah huruf (misalnya $a$ atau $b$), lalu menggunakan pendekatan **Limit**.

**Soal Latihan a:**

$$\int_{0}^{+\infty} \frac{dx}{4 + x^2}$$

**Penyelesaian untuk UTS:**

Langkah 1: Ubah batas tak hingga menjadi limit.

$$= \lim_{b \to \infty} \int_{0}^{b} \frac{1}{4 + x^2} \, dx$$

Langkah 2: Selesaikan integralnya.

**Intuisi:** Kalau kalian melihat bentuk pecahan $\frac{1}{\text{angka} + x^2}$, ini adalah rumus instan dari balikan trigonometri, yaitu **Arctangen**.

Rumus bakunya: $\int \frac{1}{a^2 + x^2} \, dx = \frac{1}{a} \arctan\left(\frac{x}{a}\right)$

Di soal ini, $a^2 = 4$, yang berarti $a = 2$. Mari kita masukkan ke rumus:

$$= \lim_{b \to \infty} \left[ \frac{1}{2} \arctan\left(\frac{x}{2}\right) \right]_{0}^{b}$$

Langkah 3: Masukkan batas atas dan bawah.

$$= \lim_{b \to \infty} \left( \frac{1}{2} \arctan\left(\frac{b}{2}\right) - \frac{1}{2} \arctan\left(\frac{0}{2}\right) \right)$$

Langkah 4: Evaluasi Limitnya.

- Bayangkan $b$ adalah angka yang super besar (tak terhingga). Tak terhingga dibagi 2 tetap tak terhingga. Tangen sudut berapa yang hasilnya tak terhingga? Jawabannya adalah $90^\circ$ atau dalam radian adalah $\frac{\pi}{2}$.
    
- Untuk $\arctan(0)$, tangen sudut berapa yang hasilnya 0? Jawabannya adalah $0$.
    
    $$= \frac{1}{2} \left( \frac{\pi}{2} \right) - \frac{1}{2} (0)$$
    
    $$= \frac{\pi}{4}$$
    

**Kesimpulan:** Karena hasilnya berupa angka pasti, integral ini **KONVERGEN**.

---

**Soal Latihan b:**

$$\int_{-\infty}^{0} e^{4x} \, dx$$

**Penyelesaian untuk UTS:**

Langkah 1: Ubah batas minus tak hingga menjadi limit.

$$= \lim_{a \to -\infty} \int_{a}^{0} e^{4x} \, dx$$

Langkah 2: Selesaikan integral eksponensialnya.

**Intuisi:** Integral dari $e^{kx}$ adalah $\frac{1}{k} e^{kx}$. Di sini $k = 4$.

$$= \lim_{a \to -\infty} \left[ \frac{1}{4} e^{4x} \right]_{a}^{0}$$

Langkah 3: Masukkan batasnya.

$$= \lim_{a \to -\infty} \left( \frac{1}{4} e^{4(0)} - \frac{1}{4} e^{4a} \right)$$

$$= \lim_{a \to -\infty} \left( \frac{1}{4} (1) - \frac{1}{4} e^{4a} \right)$$

Langkah 4: Evaluasi Limitnya.

Saat nilai $a$ menuju minus tak hingga ($-\infty$), bentuk eksponensialnya menjadi $e^{-\infty}$. Ingat aturan pangkat negatif, $e^{-\infty} = \frac{1}{e^\infty}$. Satu dibagi angka yang tak terhingga besarnya akan habis menuju **Nol**.

$$= \frac{1}{4} - \frac{1}{4}(0)$$

$$= \frac{1}{4}$$

**Kesimpulan:** Integral ini juga **KONVERGEN**.

---

### **BAGIAN 2: Uji Kekonvergenan Deret Positif (Halaman 28)**

Sekarang kita kembali ke deret. Jika kalian punya deret yang angkanya positif semua, kita punya beberapa alat uji. Mari kita bahas dua alat uji pertama.

#### **Alat Uji 1: Tes Integral**

**Kapan digunakan?** Gunakan tes ini jika bentuk rumus deretnya ($a_n$) terlihat mudah untuk diintegralkan, terutama jika kalian melihat pola **Substitusi Tumbal** (ada fungsi rumit, dan di sebelahnya ada turunan dari fungsi tersebut).

**Aturan Main:** Ubah deret menjadi fungsi $x$, lalu pasang integral tak wajar dari batas awalnya sampai $\infty$. Apapun hasil integralnya (Konvergen/Divergen), maka nasib deretnya akan sama persis.

**Contoh Soal 1:** Selidiki kekonvergenan $\sum_{n=1}^{\infty} n e^{-n^2}$

**Penyelesaian:**

Kita sudah membahas ini di catatan sebelumnya, tapi mari kita _review_ cepat.

Ubah ke integral: $\lim_{b \to \infty} \int_{1}^{b} x e^{-x^2} \, dx$

Karena ada pangkat $-x^2$ dan di bawahnya ada $x$, kita pakai substitusi $u = -x^2$. Huruf $x$ akan tercoret.

Hasil akhir integralnya adalah $\frac{1}{2e}$ (Konvergen).

Karena integralnya konvergen, maka **deretnya KONVERGEN**.

**Contoh Soal 2 (Wajib Perhatikan!):** Selidiki kekonvergenan $\sum_{n=2}^{\infty} \frac{1}{n \ln n}$

**Penyelesaian untuk UTS:**

**Intuisi:** Kenapa pakai Tes Integral? Karena di soal ada $\ln n$, dan di posisi penyebut ada huruf $n$ (yang nilainya sama dengan dikali $\frac{1}{n}$). Kita tahu turunan dari $\ln n$ adalah $\frac{1}{n}$. Ini adalah sinyal kuat untuk pakai metode substitusi.

Langkah 1: Ubah ke Integral Tak Wajar.

$$= \lim_{b \to \infty} \int_{2}^{b} \frac{1}{x \ln x} \, dx$$

Langkah 2: Selesaikan dengan Substitusi.

Misalkan $u = \ln x$.

Turunkan: $\frac{du}{dx} = \frac{1}{x} \implies dx = x \, du$.

Masukkan ke integral:

$$= \int \frac{1}{x \cdot u} (x \, du)$$

Huruf $x$ saling mencoret, tersisa:

$$= \int \frac{1}{u} \, du$$

Integral dari $\frac{1}{u}$ adalah $\ln|u|$. Kembalikan nilai $u$ menjadi $\ln x$:

$$= \ln(\ln x)$$

Langkah 3: Masukkan batas dan evaluasi limit.

$$= \lim_{b \to \infty} \Big[ \ln(\ln x) \Big]_{2}^{b}$$

$$= \lim_{b \to \infty} \Big( \ln(\ln b) - \ln(\ln 2) \Big)$$

Sekarang bayangkan $b$ adalah tak hingga. Nilai $\ln(\infty)$ adalah tak hingga ($\infty$). Dan jika dilogaritmakan lagi $\ln(\infty)$, hasilnya tetap akan membesar ke tak terhingga ($\infty$).

$$= \infty - \text{angka}$$

$$= \infty$$

**Kesimpulan:** Karena hasil integralnya melaju ke tak hingga ($\infty$), maka integralnya Divergen. Otomatis, **deretnya juga DIVERGEN**.

---

#### **Alat Uji 2: Uji Deret-p (Deret Hiperharmonik)**

**Kapan digunakan?**

Ini adalah alat uji paling mudah dan berfungsi sebagai "jalan pintas" utama. Gunakan HANYA jika bentuk deretnya benar-benar murni berupa $1$ dibagi $n$ pangkat sesuatu.

Bentuk Baku: $\sum \frac{1}{n^p}$

**Aturan Mutlak Deret-p:**

Kalian hanya perlu melihat angka pangkatnya ($p$):

1. Jika $p > 1$ (lebih besar dari satu), deret **KONVERGEN**.
    
2. Jika $p \leq 1$ (satu, atau lebih kecil dari satu), deret **DIVERGEN**.
    

**Pembahasan Latihan Uji Deret-p:**

**Soal 1:** $\sum_{n=1}^{\infty} \frac{1}{n^{1.001}}$

**Penyelesaian:**

- Lihat posisinya, sudah sesuai bentuk baku $\frac{1}{n^p}$.
    
- Nilai $p = 1.001$.
    
- Bandingkan dengan angka $1$. Karena $1.001 > 1$ (walaupun hanya lewat sedikit sekali), deret ini tetap masuk kategori **KONVERGEN**.
    

**Soal 2:** $\sum_{n=1}^{\infty} \frac{1}{n^{1/2}}$

_(Catatan: Kadang soal ini ditulis dalam bentuk akar $\sum \frac{1}{\sqrt{n}}$. Ingat selalu bahwa akar adalah pangkat pecahan)._

**Penyelesaian:**

- Nilai $p = \frac{1}{2}$ (atau $0.5$).
    
- Bandingkan dengan angka $1$. Karena $\frac{1}{2} < 1$, maka menurut aturan deret-p, deret ini dipastikan **DIVERGEN**.
    

_(Pengingat: Inilah alasan kenapa deret harmonik $\sum \frac{1}{n}$ itu Divergen. Karena di deret harmonik, pangkat $n$-nya adalah $1$. Sesuai aturan deret-p, jika $p=1$ maka hasilnya divergen)._