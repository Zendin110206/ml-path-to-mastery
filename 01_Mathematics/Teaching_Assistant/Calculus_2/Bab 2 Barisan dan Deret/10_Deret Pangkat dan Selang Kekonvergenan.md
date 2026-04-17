**Catatan Responsi Kalkulus 2: Deret Pangkat dan Selang Kekonvergenan**

Halo teman-teman, selamat datang di "Final Boss" dari materi Deret. Sejauh ini, kita hanya melihat deret yang berisi angka dan variabel $n$. Sekarang, kita akan memasukkan satu tamu tak diundang: **variabel $x$**.

Bentuk yang memiliki variabel $x$ di dalamnya inilah yang kita sebut sebagai **Deret Pangkat (Power Series)**. Bentuk umumnya bisa berupa $\sum a_n x^n$ atau $\sum a_n (x-b)^n$.

**Apa Tujuan Utama Materi Ini?**

Karena sekarang ada variabel $x$, deret ini bertindak seperti sebuah fungsi. Tergantung angka berapa yang kalian masukkan ke dalam $x$, deret ini bisa meledak (Divergen) atau bisa juga jinak (Konvergen).

Tugas utama kalian di soal UTS adalah mencari **"Selang Kekonvergenan" (Interval of Convergence)**. Artinya, kalian harus mencari tahu: _"Pada rentang angka berapa sajakah nilai $x$ ini aman dimasukkan agar deretnya tetap konvergen?"_

### **Senjata Mutlak: Uji Hasil Bagi Mutlak**

Untuk mencari selang aman tersebut, kita selalu, dan **WAJIB** menggunakan **Uji Hasil Bagi Mutlak** yang sudah kita pelajari sebelumnya.

Rumus utamanya:

$$L = \lim_{n \to \infty} \left| \frac{U_{n+1}}{U_n} \right|$$

**Logika Pengerjaan (PENTING UNTUK UTS):**

1. Kita paksa nilai limitnya harus **$L < 1$** (karena syarat mutlak agar deret konvergen adalah rasionya kurang dari satu).
    
2. Dari pertidaksamaan $L < 1$ tersebut, kita akan mendapatkan rentang nilai $x$ (misalnya $-2 < x < 2$). Rentang ini kita sebut sebagai "Selang Terbuka".
    
3. **JEBAKAN UTS (Tahap Pengecekan Ujung):** Kalian tidak boleh berhenti di situ! Bagaimana nasib deret jika nilai $x$ tepat berada di ujung selang (tepat di $x = -2$ atau $x = 2$)? Pada titik ujung tersebut, nilai limitnya pasti persis $L = 1$ (Tes Hasil Bagi Gagal). Maka, kalian **WAJIB** mengecek kedua ujung angka tersebut secara manual menggunakan uji deret yang lain (seperti Deret Ganti Tanda atau Uji Banding).
    

Mari kita terapkan langsung ke contoh soal agar tidak bingung!

---

### **Pembahasan Contoh Soal Selang Kekonvergenan**

**Contoh 1:** Tentukan selang kekonvergenan dari $\sum_{n=0}^{\infty} \frac{x^n}{(n+1)2^n}$

**Penyelesaian untuk UTS:**

_Intuisi:_ Ada variabel $x^n$, langsung hajar pakai Uji Hasil Bagi Mutlak.

**Langkah 1: Tentukan $U_n$ dan $U_{n+1}$**

- $U_n = \frac{x^n}{(n+1)2^n}$
    
- Ganti $n$ dengan $n+1$:
    
    $U_{n+1} = \frac{x^{n+1}}{(n+2)2^{n+1}}$
    

**Langkah 2: Masukkan ke Limit Hasil Bagi Mutlak**

$$L = \lim_{n \to \infty} \left| \frac{x^{n+1}}{(n+2)2^{n+1}} \times \frac{(n+1)2^n}{x^n} \right|$$

Jabarkan pangkatnya agar bisa dicoret ($x^{n+1} = x^n \cdot x$ dan $2^{n+1} = 2^n \cdot 2$):

$$L = \lim_{n \to \infty} \left| \frac{x^n \cdot x}{(n+2) \cdot 2^n \cdot 2} \times \frac{(n+1) \cdot 2^n}{x^n} \right|$$

Coret $x^n$ dan $2^n$ di atas dan bawah. Pindahkan huruf $x$ ke depan limit (karena limit hanya bekerja untuk huruf $n$). Jangan lupa tanda mutlaknya tetap mengikat si $x$:

$$L = |x| \lim_{n \to \infty} \frac{n+1}{(n+2)2}$$

$$L = |x| \lim_{n \to \infty} \frac{n+1}{2n+4}$$

Evaluasi limit polinomialnya (pangkat tertinggi $n^1$, ambil koefisiennya):

$$L = |x| \left( \frac{1}{2} \right) = \frac{|x|}{2}$$

**Langkah 3: Paksa agar Konvergen ($L < 1$)**

Agar konvergen, maka:

$$\frac{|x|}{2} < 1$$

$$|x| < 2$$

Ingat aturan pertidaksamaan mutlak zaman SMA: Jika $|x| < a$, maka artinya $-a < x < a$.

Berarti, selang sementaranya adalah: **$-2 < x < 2$**

**Langkah 4: CEK UJUNG SELANG (Wajib!)**

Kita harus menguji manual saat $x = 2$ dan $x = -2$.

- **Uji Ujung Kanan ($x = 2$):**
    
    Masukkan $x = 2$ ke dalam soal asli:
    
    $$\sum_{n=0}^{\infty} \frac{2^n}{(n+1)2^n}$$
    
    Coret $2^n$ atas bawah, tersisa:
    
    $$\sum_{n=0}^{\infty} \frac{1}{n+1}$$
    
    _Sifat Deret:_ Bentuk $\frac{1}{n+1}$ ini perilakunya sama persis dengan Deret Harmonik ($\frac{1}{n}$). Kita sudah tahu dari pertemuan sebelumnya bahwa deret harmonik mutlak **DIVERGEN**. Karena divergen, batas $x=2$ tidak boleh ikut (tandanya tetap $<$ bukan $\leq$).
    
- **Uji Ujung Kiri ($x = -2$):**
    
    Masukkan $x = -2$ ke dalam soal asli:
    
    $$\sum_{n=0}^{\infty} \frac{(-2)^n}{(n+1)2^n}$$
    
    Pisahkan minusnya: $(-2)^n$ sama dengan $(-1)^n \cdot 2^n$.
    
    $$= \sum_{n=0}^{\infty} \frac{(-1)^n 2^n}{(n+1)2^n} = \sum_{n=0}^{\infty} \frac{(-1)^n}{n+1}$$
    
    _Sifat Deret:_ Ini adalah Deret Harmonik Ganti Tanda! Tadi kita sudah buktikan bersama bahwa jika ada tanda selang-seling, deret ini menjadi **KONVERGEN**. Karena konvergen, maka batas $x=-2$ adalah zona aman dan boleh diikutkan (tandanya menjadi $\leq$).
    

**Kesimpulan Akhir:** Selang kekonvergenan yang benar dan valid adalah **$-2 \leq x < 2$** atau ditulis dalam notasi interval **$[-2, 2)$**.

---

**Contoh 2:** Tentukan selang kekonvergenan dari $\sum_{n=0}^{\infty} \frac{x^n}{(n+1)!}$

**Penyelesaian untuk UTS:**

_Intuisi:_ Ada faktorial, Uji Hasil Bagi Mutlak akan sangat cepat menyelesaikannya.

**Langkah 1 & 2: Limit Hasil Bagi Mutlak**

$$L = \lim_{n \to \infty} \left| \frac{x^{n+1}}{(n+2)!} \times \frac{(n+1)!}{x^n} \right|$$

Jabarkan pangkat dan faktorial:

$$L = \lim_{n \to \infty} \left| \frac{x^n \cdot x}{(n+2)(n+1)!} \times \frac{(n+1)!}{x^n} \right|$$

Coret $x^n$ dan $(n+1)!$:

$$L = |x| \lim_{n \to \infty} \frac{1}{n+2}$$

Substitusikan $n = \infty$, maka $1 / \infty = 0$.

$$L = |x| \cdot 0$$

$$L = 0$$

**Langkah 3: Analisis Selang**

Syarat konvergen adalah $L < 1$.

Di sini kita dapat $0 < 1$. Pertanyaannya: Untuk nilai $x$ berapa sajakah pernyataan $0 < 1$ ini benar?

Jawabannya: **Untuk angka berapapun!** Mau kalian masukkan $x = 1000$ atau $x = -999$, jika dikalikan 0 hasilnya tetap 0, dan 0 itu selalu lebih kecil dari 1.

**Kesimpulan Akhir:** Karena selalu memenuhi syarat untuk angka berapapun, maka deret ini konvergen di mana-mana. Selang kekonvergenannya adalah **$-\infty < x < \infty$** atau **$(-\infty, \infty)$**.

---

**Contoh 3:** Tentukan selang kekonvergenan dari $\sum_{n=0}^{\infty} (n+1)! x^n$

**Penyelesaian untuk UTS:**

_Intuisi:_ Faktorialnya sekarang ada di posisi atas (sebagai pengali, bukan pembagi). Ini pertanda bahwa deret ini sangat mudah meledak.

**Langkah 1 & 2: Limit Hasil Bagi Mutlak**

$$L = \lim_{n \to \infty} \left| \frac{(n+2)! x^{n+1}}{(n+1)! x^n} \right|$$

Jabarkan:

$$L = \lim_{n \to \infty} \left| \frac{(n+2)(n+1)! \cdot x^n \cdot x}{(n+1)! x^n} \right|$$

Coret $x^n$ dan $(n+1)!$:

$$L = |x| \lim_{n \to \infty} (n+2)$$

Substitusikan $n = \infty$:

$$L = |x| \cdot \infty$$

$$L = \infty$$

**Langkah 3: Analisis Selang**

Syarat konvergen adalah $L < 1$.

Kapan nilai tak terhingga ($\infty$) bisa menjadi kurang dari 1? Tentu saja mustahil, **KECUALI** jika nilai $|x|$ itu sendiri adalah mutlak angka nol ($0$). Karena $0 \times \infty = 0$ (dalam konteks deret pangkat ini).

**Kesimpulan Akhir:** Karena limitnya selalu melesat ke tak terhingga untuk angka selain nol, maka deret ini hanya konvergen di satu titik mati saja. Selang kekonvergenannya hanyalah **$x = 0$**.