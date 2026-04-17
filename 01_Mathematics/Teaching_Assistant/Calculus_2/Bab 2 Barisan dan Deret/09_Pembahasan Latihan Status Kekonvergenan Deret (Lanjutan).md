**Catatan Responsi Kalkulus 2: Pembahasan Latihan Status Kekonvergenan Deret (Lanjutan)**

Halo teman-teman, ini adalah pembahasan lengkap untuk latihan soal penentuan status deret (Konvergen Mutlak, Konvergen Bersyarat, atau Divergen). Pada latihan ini, kemampuan insting kalian dalam memilih alat uji akan sangat diuji. Ingat prinsip dasarnya: **Selalu uji bentuk mutlaknya (tanpa tanda minus) terlebih dahulu!**

Mari kita bahas tuntas satu per satu langkah pengerjaannya untuk persiapan UTS.

---

### **Soal 1: Uji Hasil Bagi Mutlak**
Selidiki apakah deret tersebut konvergen mutlak, konvergen bersyarat, atau divergen:
$$\sum_{n=1}^{\infty} (-1)^n \left( \frac{n}{2^n} \right)$$

**Penyelesaian untuk UTS:**
*Intuisi (Mengapa pilih tes ini?):* Saat kalian memindai soal ini, mata kalian harus langsung tertuju pada bentuk $2^n$ (konstanta yang dipangkatkan $n$). Ingat aturan pamungkas kita: Jika ada pangkat $n$ atau faktorial, **Uji Hasil Bagi Mutlak** adalah jalan yang paling cepat dan akurat.

**Langkah 1: Tentukan $|a_n|$ dan $|a_{n+1}|$**
Kita mutlakkan fungsinya untuk membuang elemen $(-1)^n$.
* $|a_n| = \frac{n}{2^n}$
* $|a_{n+1}| = \frac{n+1}{2^{n+1}}$

**Langkah 2: Masukkan ke Rumus Limit Uji Hasil Bagi**
$$r = \lim_{n \to \infty} \left| \frac{a_{n+1}}{a_n} \right| = \lim_{n \to \infty} \frac{\frac{n+1}{2^{n+1}}}{\frac{n}{2^n}}$$
Ubah pembagian menjadi perkalian silang:
$$r = \lim_{n \to \infty} \frac{n+1}{2^{n+1}} \times \frac{2^n}{n}$$

**Langkah 3: Jabarkan Eksponen dan Coret**
Agar bisa dicoret, jabarkan $2^{n+1}$ menjadi $2^n \cdot 2^1$:
$$r = \lim_{n \to \infty} \frac{n+1}{2^n \cdot 2} \times \frac{2^n}{n}$$
Coret $2^n$ di atas dan di bawah, kalikan sisanya:
$$r = \lim_{n \to \infty} \frac{n+1}{2n}$$

**Langkah 4: Selesaikan Limit Polinomial**
Pangkat tertinggi di pembilang (atas) dan penyebut (bawah) sama-sama $n^1$. Ambil koefisien di depannya:
$$r = \frac{1}{2}$$

**Kesimpulan Akhir:** Karena nilai limit $r = \frac{1}{2}$ (di mana nilainya $r < 1$), maka deret ini sangat tangguh dan berstatus **KONVERGEN MUTLAK**.

---

### **Soal 2: Awas Jebakan Tanda Minus di Dalam Kurung Pangkat!**
Selidiki status deret:
$$\sum_{n=1}^{\infty} \frac{(-4)^n}{n^2}$$

**Penyelesaian untuk UTS:**
*Intuisi:* Sekilas ini tidak terlihat seperti deret ganti tanda karena tidak ada tulisan $(-1)^n$. Namun, angka $(-4)^n$ sebenarnya menyimpan tanda selang-seling di dalamnya! Karena $(-4)^n$ sama persis dengan $(-1)^n \cdot 4^n$. 
Karena ada bentuk pangkat $n$, kita kembali gunakan **Uji Hasil Bagi Mutlak**.

**Langkah 1: Tentukan $|a_n|$ (Proses Pemutlakan)**
Ketika kita memutlakkan pecahan ini, tanda minus pada angka 4 akan lenyap tertelan tanda mutlak.
* $|a_n| = \frac{4^n}{n^2}$
* $|a_{n+1}| = \frac{4^{n+1}}{(n+1)^2}$

**Langkah 2: Masukkan ke Rumus Limit Uji Hasil Bagi**
$$r = \lim_{n \to \infty} \frac{4^{n+1}}{(n+1)^2} \times \frac{n^2}{4^n}$$

**Langkah 3: Jabarkan dan Coret**
Jabarkan $4^{n+1}$ menjadi $4^n \cdot 4$:
$$r = \lim_{n \to \infty} \frac{4^n \cdot 4}{(n+1)^2} \times \frac{n^2}{4^n}$$
Coret $4^n$ atas dan bawah. Jangan lupa jabarkan bentuk kuadrat $(n+1)^2$ di penyebut menjadi $n^2 + 2n + 1$:
$$r = \lim_{n \to \infty} \frac{4n^2}{n^2 + 2n + 1}$$

**Langkah 4: Selesaikan Limit**
Pangkat tertinggi adalah $n^2$. Ambil koefisiennya:
$$r = \frac{4}{1} = 4$$

**Kesimpulan Akhir:** Karena nilai limit $r = 4$ (di mana nilainya $r > 1$), maka deret ini membesar tanpa batas. Statusnya adalah **DIVERGEN**.

---

### **Soal 3: Berurusan dengan Bilangan Natural (e)**
Selidiki status deret:
$$\sum_{n=1}^{\infty} (-1)^{n-1} \frac{n^2}{e^n}$$

**Penyelesaian untuk UTS:**
*Intuisi:* Ada konstanta bilangan eksponensial dasar ($e$) yang dipangkatkan $n$. Tentu saja senjata terbaik kita tetap **Uji Hasil Bagi Mutlak**.

**Langkah 1: Tentukan $|a_n|$**
Mutlakkan deretnya untuk menghilangkan $(-1)^{n-1}$.
* $|a_n| = \frac{n^2}{e^n}$
* $|a_{n+1}| = \frac{(n+1)^2}{e^{n+1}}$

**Langkah 2: Masukkan ke Rumus dan Jabarkan**
$$r = \lim_{n \to \infty} \frac{(n+1)^2}{e^{n+1}} \times \frac{e^n}{n^2}$$
Jabarkan $e^{n+1}$ menjadi $e^n \cdot e^1$ (atau $e^n \cdot e$):
$$r = \lim_{n \to \infty} \frac{(n^2 + 2n + 1)}{e^n \cdot e} \times \frac{e^n}{n^2}$$
Coret $e^n$ atas dan bawah, lalu kalikan $e$ dengan penyebut:
$$r = \lim_{n \to \infty} \frac{n^2 + 2n + 1}{e \cdot n^2}$$

**Langkah 3: Selesaikan Limit**
Pangkat tertinggi adalah $n^2$. Perhatikan koefisiennya! Di atas koefisiennya $1$. Di bawah, koefisiennya adalah bilangan $e$.
$$r = \frac{1}{e}$$

**Langkah 4: Evaluasi Nilai Limit (Penting!)**
Di ujian, jangan biarkan bentuknya $\frac{1}{e}$ tanpa memberikan kesimpulan logis. Ingat bahwa bilangan natural $e$ memiliki nilai pendekatan sekitar **2,718**.
Artinya, $r \approx \frac{1}{2,718}$. Karena penyebutnya lebih besar dari pembilang, sudah pasti nilai pecahan ini lebih kecil dari 1.
$$r < 1$$

**Kesimpulan Akhir:** Karena $r < 1$, maka deret ini mutlak sangat konvergen. Statusnya adalah **KONVERGEN MUTLAK**.

---

### **Soal 4: Uji Logika Kasta (Tanpa Hasil Bagi)**
Selidiki status deret:
$$\sum_{n=1}^{\infty} (-1)^{n+1} \frac{1}{n(n+1)}$$

**Penyelesaian untuk UTS:**
*Intuisi:* **PERHATIAN PENUH!** Di soal ini TIDAK ADA faktorial (!), dan TIDAK ADA angka pangkat $n$. Ini murni deret aljabar polinomial biasa. 
Jika kalian mencoba-coba menggunakan Uji Hasil Bagi Mutlak untuk soal jenis ini, saya jamin 100% hasil limit akhirnya akan $r = 1$ (Tes Gagal). Kalian hanya akan menghabiskan waktu UTS dengan percuma.
Solusinya: Gunakan metode pengujian manual dengan alat uji deret positif lainnya (seperti Uji Banding Limit).

**Langkah 1: Uji Status Mutlak (Buang tanda minusnya)**
Anggap tanda $(-1)^{n+1}$ tidak ada. Fungsi mutlaknya menjadi:
$$|a_n| = \frac{1}{n(n+1)} = \frac{1}{n^2 + n}$$
Mari kita uji kekonvergenan deret positif ini menggunakan **Tes Banding Limit**.

**Langkah 2: Terapkan Tes Banding Limit**
* Tentukan Deret Acuan ($b_n$): Ambil pangkat tertinggi atas dan bawah. Maka, $b_n = \frac{1}{n^2}$.
* Cek Sifat Acuan: $b_n = \frac{1}{n^2}$ adalah Deret-p dengan $p = 2$. Karena $2 > 1$, deret acuan ini **KONVERGEN**.
* Masukkan ke Limit Banding ($L$):
$$L = \lim_{n \to \infty} \frac{|a_n|}{b_n} = \lim_{n \to \infty} \frac{\frac{1}{n^2 + n}}{\frac{1}{n^2}}$$
$$L = \lim_{n \to \infty} \frac{n^2}{n^2 + n}$$
Pangkat tertinggi sama ($n^2$), ambil koefisiennya:
$$L = \frac{1}{1} = 1$$

**Langkah 3: Ambil Kesimpulan dari Kasta Tertinggi**
Karena hasil $L = 1$ (berupa angka positif riil), maka nasib deret soal $|a_n|$ sama persis dengan deret acuan $b_n$. Karena acuannya konvergen, maka deret $|a_n|$ terbukti **KONVERGEN**.

Karena pada saat dimutlakkan saja (dibuang minusnya) deret ini sudah berhasil konvergen, kita tidak perlu lagi menguji syarat deret ganti tandanya. Dia sudah langsung lulus di tingkat paling atas.

**Kesimpulan Akhir:** Deret ini berstatus **KONVERGEN MUTLAK**.