**Catatan Responsi Kalkulus 2: Uji Deret Ganti Tanda (Alternating Series) (Halaman 31)**

Halo teman-teman, mari kita bahas kembali secara lebih mendalam mengenai materi halaman 31, yaitu **Deret Ganti Tanda (Alternating Series)**. Sejauh ini, kita terus berurusan dengan deret yang semua sukunya bernilai positif. Nah, deret ganti tanda ini sangat unik karena tandanya selalu selang-seling secara berurutan: positif, negatif, positif, negatif, dan seterusnya.

**Kapan dan Bagaimana Kita Mengenali Deret Ini?**
Ciri utamanya sangat mudah dikenali. Di dalam rumusnya, kalian pasti akan menemukan elemen pengali **$(-1)^n$**, **$(-1)^{n-1}$**, atau **$(-1)^{n+1}$**. Fungsi dari elemen ini hanyalah sebagai "saklar" yang membolak-balikkan tanda pada setiap sukunya. 
Bentuk penjabarannya selalu seperti ini: $\sum (-1)^{n-1} a_n = a_1 - a_2 + a_3 - a_4 + \dots$

### **Aturan Main: Dua Syarat Mutlak Kekonvergenan**

Untuk deret ganti tanda, kita tidak perlu repot-repot menggunakan Uji Banding, Uji Rasio, atau Uji Integral. Deret ini memiliki alat ujinya sendiri yang sangat spesifik.

**Langkah Paling Awal (PENTING):** Saat akan menguji deret ini, **ABAIKAN SEMENTARA tanda minus/plus-nya!** Tutup bagian $(-1)^n$-nya, dan kita **hanya fokus menganalisis bentuk angka murninya saja ($a_n$)**. Nilai $a_n$ ini selalu dianggap positif.

Deret ganti tanda dinyatakan **KONVERGEN** jika ia berhasil lolos **KEDUA** syarat berikut secara bersamaan:

1. **Syarat 1: Suku-sukunya Monoton Turun ($a_{n+1} \leq a_n$).** Suku yang muncul berikutnya mutlak harus lebih kecil (atau setidaknya sama) dibandingkan suku yang sebelumnya. Logika sederhananya: *"Angkanya harus secara konsisten semakin mengecil."*
2. **Syarat 2: Limit Menuju Nol ($\lim_{n \to \infty} a_n = 0$).** Saat kita tarik perhitungan limitnya menuju tak terhingga, nilai akhir dari bentuk pecahannya harus persis menabrak angka nol.

**Trik Jitu untuk Mengerjakan UTS:**
Selalu biasakan untuk **menguji Syarat 2 (Limit Nol) terlebih dahulu!** Alasannya sangat praktis: Jika kalian melimitkan $a_n$ dan ternyata hasilnya *bukan nol* (misalnya hasilnya adalah $1$, $5$, atau tak terhingga), maka ujian langsung selesai. Kalian tidak perlu lagi repot-repot menguji Syarat 1. Kalian bisa langsung menyimpulkan bahwa deret tersebut **DIVERGEN** (berdasarkan hukum Uji Suku ke-n yang sudah kita pelajari).

Mari kita bedah perhitungan matematisnya melalui dua contoh soal di modul agar kalian tahu cara menuliskannya di lembar ujian:

---

### **Pembahasan Contoh Soal (Halaman 31)**

**Contoh Soal 1 (Deret Harmonik Berganti Tanda):** Tentukan kekonvergenan deret $1 - \frac{1}{2} + \frac{1}{3} - \frac{1}{4} + \dots$

**Penyelesaian untuk UTS:**
*Intuisi:* Dari bentuk penjabarannya, tandanya berganti-ganti (plus, minus, plus, minus). Ini dipastikan deret ganti tanda.

**Langkah 1: Tentukan nilai $a_n$ murni (Tanpa tanda minus)**
Jika kita hilangkan semua tanda negatifnya, deretan angkanya adalah $1, \frac{1}{2}, \frac{1}{3}, \frac{1}{4}, \dots$
Dari pola ini, rumusnya sangat jelas:
$$a_n = \frac{1}{n}$$

**Langkah 2: Uji Syarat 2 Terlebih Dahulu (Limit Nol)**
Mari kita limitkan rumus $a_n$ menuju tak terhingga:
$$\lim_{n \to \infty} a_n = \lim_{n \to \infty} \frac{1}{n}$$
Substitusikan nilai $n = \infty$. Angka $1$ jika dibagi dengan nilai yang tak terhingga besarnya, maka hasilnya akan habis:
$$= 0$$
*(Syarat 2 Terpenuhi!)*

**Langkah 3: Uji Syarat 1 (Pembuktian Monoton Turun)**
Kita harus membuktikan secara matematis bahwa $a_{n+1} \leq a_n$.
Ganti huruf $n$ menjadi $n+1$ di ruas kiri, lalu bandingkan:
Apakah benar $\frac{1}{n+1} \leq \frac{1}{n}$ ?
*Cara menulis alasan logis di ujian:* Nilai $n$ adalah bilangan positif yang terus bertambah. Karena penyebut di ruas kiri ($n+1$) selalu lebih besar daripada penyebut di ruas kanan ($n$), maka sifat dasar pecahan menyatakan bahwa nilai pecahan di ruas kiri pasti akan selalu **lebih kecil**. Nilainya terbukti terus menurun secara konsisten.
*(Syarat 1 Terpenuhi!)*

**Kesimpulan:** Karena deret ini berhasil lolos dari kedua syarat uji, maka deret ganti tanda ini terbukti **KONVERGEN**. 

*(Fakta Penting untuk Diingat: Teman-teman pasti masih ingat bahwa Deret Harmonik biasa yang semuanya positif, yaitu $\sum \frac{1}{n}$, mutlak bersifat DIVERGEN karena ia terus membesar tanpa batas. Namun, keajaiban matematika terjadi di sini: ketika deret harmonik tersebut diberikan tanda selang-seling (minus-plus), laju pembesarannya berhasil ditahan dan saling menetralisir, sehingga nasibnya berubah total menjadi KONVERGEN. Tolong diingat perbedaan antara Harmonik biasa dan Harmonik ganti tanda ini ya!)*

---

**Contoh Soal 2:** Tentukan kekonvergenan deret $1 - \frac{1}{2!} + \frac{1}{3!} - \frac{1}{4!} + \dots$

**Penyelesaian untuk UTS:**
*Intuisi:* Soal ini memiliki tanda selang-seling, dan penyebutnya menggunakan bentuk Faktorial (!). Ingat kembali bahwa faktorial adalah perkalian mundur ($4! = 4 \times 3 \times 2 \times 1 = 24$). Nilai faktorial ini bertumbuh dengan sangat drastis seiring bertambahnya $n$.

**Langkah 1: Tentukan nilai $a_n$ murni**
Abaikan tanda minusnya, dan kita rumuskan pola angkanya:
$$a_n = \frac{1}{n!}$$

**Langkah 2: Uji Syarat 2 (Limit Nol)**
$$\lim_{n \to \infty} a_n = \lim_{n \to \infty} \frac{1}{n!}$$
Karena penyebut $n!$ bertumbuh menjadi angka yang luar biasa raksasa saat mendekati tak terhingga, maka angka $1$ dibagi nilai super raksasa tersebut sudah pasti akan menabrak angka nol.
$$= 0$$
*(Syarat 2 Terpenuhi!)*

**Langkah 3: Uji Syarat 1 (Pembuktian Monoton Turun)**
Kita bandingkan $a_{n+1}$ dengan $a_n$:
Apakah benar $\frac{1}{(n+1)!} \leq \frac{1}{n!}$ ?
*Cara menulis alasan di ujian:* Kita tahu bahwa $(n+1)!$ dijabarkan menjadi $(n+1) \times n!$. Ini berarti penyebut $(n+1)!$ ukurannya berlipat-lipat jauh lebih besar dibandingkan $n!$ saja. Karena penyebutnya semakin membesar secara ekstrem, maka nilai keseluruhan pecahannya pasti akan semakin mengecil. Barisan ini terbukti monoton turun.
*(Syarat 1 Terpenuhi!)*

**Kesimpulan:** Karena kedua syarat terpenuhi dengan sangat jelas dan terbukti secara matematis, maka deret faktorial ganti tanda ini dipastikan **KONVERGEN**.