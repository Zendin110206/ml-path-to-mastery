**Catatan Responsi Kalkulus 2: Konvergen Mutlak dan Konvergen Bersyarat**

Halo teman-teman, kita telah sampai di tahap akhir dari pengujian deret, yaitu menentukan "Status Kasta" atau tingkatan dari kekonvergenan sebuah deret ganti tanda.

Sebelumnya kita tahu bahwa deret ganti tanda (yang ada minus-plusnya) itu sangat mudah untuk konvergen karena angkanya saling menetralisir. Nah, materi ini bertujuan untuk menguji tingkat kekuatan deret tersebut: **"Apakah deret ini benar-benar tangguh (konvergen mutlak), atau dia cuma kebetulan konvergen karena dibantu oleh tanda minus-plusnya saja (konvergen bersyarat)?"**

### **1. Memahami 3 Status Deret (Sistem "Kasta")**

Untuk mengujinya, kita akan me-**Mutlak**-kan deret tersebut. Artinya, kita **paksa buang semua tanda minusnya** (ubah tanda $(-1)^n$ menjadi positif semua), lalu kita uji menggunakan tes deret positif yang sudah kita pelajari (seperti uji deret-p, uji rasio, uji banding, dll).

Ada 3 kasta hasil akhir yang bisa terjadi:

1. **Konvergen Mutlak (Kasta Tertinggi):** Saat tanda minusnya dibuang secara paksa, dia ternyata **TETAP KONVERGEN**. Ini adalah deret yang sangat tangguh.
    
2. **Konvergen Bersyarat (Kasta Menengah):** Saat tanda minusnya dibuang, dia ternyata melemah dan meledak (**DIVERGEN**). Tetapi, saat tanda minusnya dikembalikan seperti soal aslinya, dia **KONVERGEN**. (Artinya: dia butuh "syarat" tanda selang-seling untuk bisa konvergen).
    
3. **Divergen (Kasta Terendah):** Mau dibuang minusnya ataupun dibiarkan sesuai soal asli, dia tetap saja **DIVERGEN**.
    

---

### **2. Senjata Utama: Pengujian Kekonvergenan Mutlak (Uji Hasil Bagi)**

Sama seperti sebelumnya, jika di dalam soal terdapat **Faktorial (!)** atau **Angka Konstanta Pangkat $n$** (seperti $2^n, e^n$), kita TIDAK PERLU repot-repot menguji manual. Langsung keluarkan senjata pamungkas: **Uji Hasil Bagi Mutlak (Absolute Ratio Test)**.

Caranya sama persis dengan Tes Hasil Bagi biasa, bedanya kita pasang tanda mutlak agar nilai $(-1)^n$ langsung lenyap.

$$r = \lim_{n \to \infty} \left| \frac{a_{n+1}}{a_n} \right|$$

- Jika $r < 1 \implies$ **Konvergen Mutlak**
    
- Jika $r > 1 \implies$ **Divergen**
    
- Jika $r = 1 \implies$ **Tes Gagal**. (Jika gagal, kita tidak boleh pakai tes ini. Kita harus kembali ke cara manual mengecek satu-satu kastanya).
    

Mari kita bahas detail penyelesaian dua contoh soal yang ada di modul agar kalian siap UTS:

---

### **3. Pembahasan Soal Latihan (Modul)**

**Soal 1:** Selidiki deret berikut apakah konvergen bersyarat, konvergen mutlak, atau divergen?

$$\sum_{n=1}^{\infty} (-1)^{n+1} \frac{2^n}{n!}$$

**Penyelesaian untuk UTS:**

_Intuisi:_ Melihat ada pangkat $n$ ($2^n$) dan ada faktorial ($n!$), insting kita harus langsung memanggil **Uji Hasil Bagi Mutlak**.

**Langkah 1: Tentukan $|a_n|$ dan $|a_{n+1}|$**

Kita mutlakkan fungsinya, yang artinya membuang pengali $(-1)^{n+1}$.

- $|a_n| = \frac{2^n}{n!}$
    
- Ganti $n$ dengan $n+1$ untuk mencari suku berikutnya:
    
    $|a_{n+1}| = \frac{2^{n+1}}{(n+1)!}$
    

**Langkah 2: Masukkan ke Rumus Limit**

$$r = \lim_{n \to \infty} \left| \frac{a_{n+1}}{a_n} \right| = \lim_{n \to \infty} \frac{\frac{2^{n+1}}{(n+1)!}}{\frac{2^n}{n!}}$$

Ingat, pembagian pecahan kita ubah jadi perkalian terbalik:

$$= \lim_{n \to \infty} \frac{2^{n+1}}{(n+1)!} \times \frac{n!}{2^n}$$

**Langkah 3: Jabarkan dan Coret (Sangat Penting di UTS)**

Agar bisa dicoret atas dan bawah, kita harus menjabarkan suku yang pangkat dan faktorialnya lebih besar:

- $2^{n+1}$ dijabarkan menjadi $2^n \cdot 2^1$
    
- $(n+1)!$ dijabarkan menjadi $(n+1) \cdot n!$
    

Masukkan kembali ke limit:

$$= \lim_{n \to \infty} \frac{2^n \cdot 2}{(n+1) \cdot n!} \times \frac{n!}{2^n}$$

Coret $2^n$ dan $n!$ di bagian atas dan bawah. Tersisa:

$$= \lim_{n \to \infty} \frac{2}{n+1}$$

**Langkah 4: Evaluasi Limit**

Substitusikan nilai $n = \infty$. Angka $2$ dibagi dengan penyebut yang nilainya tak terhingga besarnya, hasilnya akan habis menjadi nol.

$$r = 0$$

**Kesimpulan:** Karena nilai $r = 0$ (di mana $0 < 1$), maka deret tersebut sangat tangguh. Jawabannya mutlak adalah **KONVERGEN MUTLAK**.

---

**Soal 2:** Selidiki deret berikut apakah konvergen bersyarat, konvergen mutlak, atau divergen?

$$\sum_{n=1}^{\infty} (-1)^{n-1} \frac{1}{\sqrt{n}}$$

**Penyelesaian untuk UTS:**

_Intuisi:_ HATI-HATI! Di soal ini **TIDAK ADA** faktorial dan **TIDAK ADA** angka pangkat $n$. Jika kalian nekat menggunakan Uji Hasil Bagi, hasil limitnya pasti akan $r = 1$ (Tes Gagal) dan kalian hanya akan membuang waktu ujian.

Untuk soal seperti ini, kita harus mengeceknya secara manual menggunakan metode 2 Langkah (Logika Kasta).

**Langkah 1: Uji Kekuatan Mutlaknya (Buang Minusnya)**

Anggap tanda $(-1)^{n-1}$ kita hilangkan secara paksa. Deretnya berubah wujud menjadi deret positif:

$$\sum_{n=1}^{\infty} \frac{1}{\sqrt{n}} = \sum_{n=1}^{\infty} \frac{1}{n^{1/2}}$$

_(Apakah kalian ingat bentuk apa ini?)_ Ya, ini adalah rumus baku **Deret-p**.

Sesuai hukum deret-p, kita lihat pangkatnya. Karena nilai $p = \frac{1}{2}$ (di mana $p \leq 1$), maka deret positif ini sifatnya **DIVERGEN**.

_(Wah, ternyata saat minusnya dibuang, dia tidak kuat dan meledak. Berarti dia GAGAL masuk Kasta Tertinggi / Konvergen Mutlak)._

**Langkah 2: Uji Bentuk Aslinya (Deret Ganti Tanda)**

Karena gagal mutlak, kita harus mengecek apakah dia bisa diselamatkan oleh tanda selang-selingnya. Kita uji pakai 2 Syarat Deret Ganti Tanda dari materi sebelumnya.

Nilai murninya: $a_n = \frac{1}{\sqrt{n}}$

- **Cek Syarat Limit Nol:** $\lim_{n \to \infty} \frac{1}{\sqrt{n}} = \frac{1}{\infty} = 0$. _(Syarat Terpenuhi!)_
    
- **Cek Syarat Monoton Turun ($a_{n+1} \leq a_n$):** Apakah $\frac{1}{\sqrt{n+1}} \leq \frac{1}{\sqrt{n}}$?
    
    Jawabannya Benar. Karena penyebut $\sqrt{n+1}$ jelas lebih besar dari $\sqrt{n}$, maka nilai pecahannya pasti lebih kecil. _(Syarat Terpenuhi!)_
    

Karena kedua syarat deret ganti tanda terpenuhi, maka bentuk asli dari deret ini (yang ada selang-selingnya) terbukti **KONVERGEN**.

**Kesimpulan Akhir:** Saat dimutlakkan dia lemah (_Divergen_), tetapi saat dibiarkan dalam bentuk aslinya yang berganti tanda dia selamat (_Konvergen_). Karena dia membutuhkan bantuan "syarat" minus-plus untuk bisa konvergen, maka deret ini resmi berstatus **KONVERGEN BERSYARAT**.