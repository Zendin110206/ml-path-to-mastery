**Catatan Responsi Kalkulus 2: Pengantar Deret Tak Hingga (Halaman 26-27)**

Halo teman-teman, sekarang kita memasuki babak baru. Jika sebelumnya di materi "Barisan" kita hanya melihat urutan angkanya, sekarang di materi "Deret" kita akan **menjumlahkan** semua angka tersebut. Tandanya sangat khas, yaitu menggunakan notasi Sigma ($\sum$).

### **1. Konsep Dasar: Barisan Jumlah Parsial ($S_n$)**

Bagaimana cara kita menjumlahkan angka yang jumlahnya tak terhingga? Caranya adalah dengan menjumlahkannya sedikit demi sedikit (parsial), lalu kita limitkan sampai tak terhingga.

- $S_1 = a_1$ (Jumlah 1 suku pertama)
    
- $S_2 = a_1 + a_2$ (Jumlah 2 suku pertama)
    
- $S_n = a_1 + a_2 + \dots + a_n$ (Jumlah $n$ suku pertama)
    

**Aturan Mainnya:**

Sebuah deret tak hingga dikatakan **KONVERGEN** (punya hasil jumlah yang pasti) apabila nilai limit dari rumus Jumlah Parsialnya ($\lim_{n \to \infty} S_n$) menghasilkan angka riil. Jika limitnya menuju tak terhingga ($\infty$ atau $-\infty$), maka deret itu **DIVERGEN**.

Mari kita pelajari bentuk-bentuk deret yang wajib kalian kuasai untuk UTS:

---

### **2. Deret Geometri (Halaman 26)**

**Kapan kita tahu itu Deret Geometri?**

Ciri utamanya adalah setiap suku didapatkan dengan _mengalikan_ suku sebelumnya dengan angka atau pecahan yang persis sama. Angka pengali inilah yang disebut **Rasio ($r$)**.

**Cara mencari Rasio ($r$):**

Selalu bagi suku setelahnya dengan suku sebelumnya. Bebas pilih yang mana saja.

$$r = \frac{U_2}{U_1} \quad \text{atau} \quad r = \frac{U_3}{U_2}$$

**Aturan Kekonvergenan Deret Geometri (Sangat Penting):**

1. Jika rasionya berada di antara $-1$ dan $1$ ($-1 < r < 1$), maka deret dipastikan **KONVERGEN**. Rumus jumlah total sampai tak hingganya sangat mudah: $S_\infty = \frac{a}{1 - r}$ _(dengan $a$ adalah suku pertama)_.
    
2. Jika rasionya $r \geq 1$ atau $r \leq -1$, maka deret langsung divonis **DIVERGEN**.
    

**Contoh Soal:**

Selidiki kekonvergenannya: $\frac{1}{2} + \frac{1}{4} + \frac{1}{8} + \frac{1}{16} + \frac{1}{32} + \dots$

**Penyelesaian untuk UTS:**

Langkah 1: Tentukan suku pertama ($a$) dan rasionya ($r$).

- Suku pertama: $a = \frac{1}{2}$
    
- Rasio: $r = \frac{1/4}{1/2} = \frac{1}{4} \times \frac{2}{1} = \frac{2}{4} = \frac{1}{2}$
    

Langkah 2: Uji rasionya.

Karena nilai rasio adalah $\frac{1}{2}$, angka ini memenuhi syarat (berada di antara $-1$ dan $1$). Maka deret ini **KONVERGEN**.

Langkah 3: Hitung hasil jumlahnya (jika diminta).

$$S_\infty = \frac{a}{1 - r}$$

$$S_\infty = \frac{1/2}{1 - 1/2}$$

$$S_\infty = \frac{1/2}{1/2} = 1$$

Artinya, jika pecahan-pecahan ini terus ditambahkan sampai tak terhingga, total akhirnya akan menunjuk tepat di angka $1$.

---

### **3. Deret Kolapas / Telescoping (Halaman 27 Contoh 2)**

**Kapan kita tahu itu Deret Kolapas?**

Biasanya soalnya berbentuk pecahan, di mana penyebutnya (bawahnya) merupakan perkalian dua variabel yang berurutan, seperti $i(i+1)$ atau $(2n-1)(2n+1)$. Cara menyelesaikannya adalah dengan memecahnya (pecahan parsial) lalu menjabarkannya.

**Contoh Soal 2:**

Tentukan kekonvergenan deret: $\sum_{i=1}^{\infty} \frac{1}{i(i+1)}$

**Penyelesaian untuk UTS:**

Langkah 1: Pecah bentuk pecahannya (Pecahan Parsial).

Ingat trik menyamakan penyebut? Pecahan $\frac{1}{i(i+1)}$ jika dipecah bentuknya menjadi:

$$\frac{1}{i(i+1)} = \frac{1}{i} - \frac{1}{i+1}$$

Langkah 2: Jabarkan Jumlah Parsialnya ($S_n$).

Mari kita masukkan angka $i = 1$ secara berurutan sampai $i = n$:

- Jika $i=1 \implies \left(\frac{1}{1} - \frac{1}{2}\right)$
    
- Jika $i=2 \implies \left(\frac{1}{2} - \frac{1}{3}\right)$
    
- Jika $i=3 \implies \left(\frac{1}{3} - \frac{1}{4}\right)$
    
- ... dan seterusnya sampai $n$
    
- Jika $i=n \implies \left(\frac{1}{n} - \frac{1}{n+1}\right)$
    

Susun penjumlahannya memanjang:

$$S_n = \left(1 - \frac{1}{2}\right) + \left(\frac{1}{2} - \frac{1}{3}\right) + \left(\frac{1}{3} - \frac{1}{4}\right) + \dots + \left(\frac{1}{n} - \frac{1}{n+1}\right)$$

Langkah 3: Coret suku yang berlawanan!

Coba perhatikan baik-baik. Ada angka $-\frac{1}{2}$ bertemu $+\frac{1}{2}$ sehingga menjadi $0$ (habis). Ada $-\frac{1}{3}$ bertemu $+\frac{1}{3}$ (habis). Semua angka di tengah-tengah akan saling menghilangkan.

Yang tersisa **hanyalah angka yang paling depan dan angka yang paling belakang**:

$$S_n = 1 - \frac{1}{n+1}$$

Langkah 4: Hitung limit tak hingganya.

$$\lim_{n \to \infty} S_n = \lim_{n \to \infty} \left( 1 - \frac{1}{n+1} \right)$$

Substitusikan $n = \infty$. Ingat, $\frac{1}{\infty+1}$ nilainya adalah $0$.

$$= 1 - 0 = 1$$

**Kesimpulan:** Deret Kolapas ini terbukti **KONVERGEN** menuju $1$.

---

### **4. Uji Kekonvergenan Suku ke-n (Uji Awal yang Menjebak)**

Di halaman 27 bawah, ada alat uji yang bernama Uji Suku ke-n. Ini adalah alat _screening_ (penyaring) awal sebelum kalian mengerjakan soal deret yang lebih panjang.

**Aturan Mainnya:**

Jika kalian mencari limit menuju tak hingga dari rumus _suku_-nya saja ($\lim_{n \to \infty} a_n$):

1. Jika hasilnya **BUKAN NOL** (misalnya hasil limitnya $1, \frac{1}{2}, \infty$), maka deret tersebut mutlak langsung dipastikan **DIVERGEN**. Pekerjaan selesai.
    
2. Jika hasilnya **SAMA DENGAN NOL**, ujian ini dianggap **GAGAL**. Kalian **TIDAK BOLEH** langsung menyimpulkan bahwa deret itu konvergen. Kalian harus memakai alat uji lain (seperti uji integral atau uji banding yang akan kita bahas nanti).
    

**Mengapa hasil limit NOL belum tentu konvergen? Buktinya ada di Deret Harmonik (Contoh 3):**

$$\sum_{n=1}^{\infty} \frac{1}{n} = 1 + \frac{1}{2} + \frac{1}{3} + \frac{1}{4} + \dots$$

Mari kita tes menggunakan Uji Suku ke-n:

$$\lim_{n \to \infty} \frac{1}{n} = \frac{1}{\infty} = 0$$

Hasil limit sukunya memang nol. Logika sekilas kita mungkin berpikir: _"Oh, angkanya makin lama makin kecil menuju nol, pasti kalau dijumlahkan totalnya berhenti di satu angka (konvergen) dong?"_

**Itu adalah persepsi yang salah!** Secara matematis, Deret Harmonik ini penambahannya sangat lambat, tetapi angkanya akan **terus bertambah tanpa batas** menuju tak terhingga ($\infty$).

Oleh karena itu, wajib diingat sebagai fakta mutlak: **Deret Harmonik ($\sum \frac{1}{n}$) sifatnya adalah DIVERGEN.**

_(Tambahan: Jika saat ujian kalian melihat bentuk turunan dari deret harmonik seperti $\sum \frac{1}{3n}$, atau $\sum \frac{5}{n}$, kalian bisa langsung menyimpulkan bahwa deret tersebut juga DIVERGEN karena mereka hanyalah kelipatan dari deret harmonik)._

---

### **5. FAQ Penting: Kapan Boleh Pakai Rumus $S_n$ Geometri ($r$) dan Kapan Tidak Boleh?**

Banyak dari kalian yang mungkin bingung dan bertanya-tanya: _"Kak, kalau ada soal deretan angka ditambah-tambah, kenapa kita nggak langsung aja cari suku ke-n ($U_n$), cari rasio ($r$), terus dimasukin ke rumus $S_n$ kayak zaman SMA dulu? Kenapa di Contoh 2 dan 3 tadi cara itu nggak dipakai sama sekali?"_

Ini adalah jebakan klasik yang sering bikin mahasiswa salah total saat ujian. Mari kita luruskan!

**Hukum Mutlak Deret:**

Kalian **HANYA BOLEH** menggunakan rumus rasio ($r$) dan rumus jumlah tak hingga ($S_\infty = \frac{a}{1-r}$) jika dan hanya jika deret tersebut adalah **Deret Geometri Asli**.

Ciri utama Deret Geometri Asli adalah: **Rasio pengalinya harus selalu konstan (sama persis) dari ujung ke ujung.**

Mari kita bandingkan dua kasus agar kalian bisa melihat perbedaannya dengan jelas:

**Kasus A (Boleh Pakai Rumus $S_\infty$):**

$\frac{1}{2} + \frac{1}{4} + \frac{1}{8} + \frac{1}{16} + \dots$

Mari kita tes rasionya:

- Suku 2 dibagi Suku 1 $\implies \frac{1/4}{1/2} = \mathbf{\frac{1}{2}}$
    
- Suku 3 dibagi Suku 2 $\implies \frac{1/8}{1/4} = \mathbf{\frac{1}{2}}$
    
    Karena rasionya **SAMA**, maka ini sah disebut Deret Geometri. Silakan gunakan rumus $S_\infty = \frac{a}{1-r}$.
    

**Kasus B (HARAM Pakai Rumus Geometri):**

Bagaimana jika soalnya diubah menjadi Deret Harmonik seperti ini?

$1 + \frac{1}{2} + \frac{1}{3} + \frac{1}{4} + \dots$

Mari kita tes rasionya:

- Suku 2 dibagi Suku 1 $\implies \frac{1/2}{1} = \mathbf{\frac{1}{2}}$
    
- Suku 3 dibagi Suku 2 $\implies \frac{1/3}{1/2} = \frac{1}{3} \times \frac{2}{1} = \mathbf{\frac{2}{3}}$
    
    Perhatikan! $\frac{1}{2}$ tidak sama dengan $\frac{2}{3}$. Rasionya **BERUBAH-UBAH**.
    
    Karena rasionya tidak konstan, deret ini **BUKAN** deret geometri. Jika kalian memaksa mencari $r$ dan memasukkannya ke rumus $S_\infty$, jawaban kalian dipastikan salah total dan dicoret oleh dosen.
    

**Lalu, bagaimana cara tahu harus pakai alat uji yang mana?**

Gunakan insting detektif kalian saat melihat soal ujian nanti dengan urutan cara berpikir seperti ini:

1. **Cek Rasio Dulu:** Apakah suku-sukunya dikali dengan angka yang persis sama? Jika IYA $\implies$ Langsung hajar pakai rumus Deret Geometri ($S_\infty$).
    
2. **Cek Bentuk Pecahan Bawahnya:** Apakah penyebutnya berbentuk perkalian variabel yang berurutan (misal $\frac{1}{n(n+1)}$)? Jika IYA $\implies$ Gunakan metode Deret Kolapas (pecah pecahannya, coret bagian tengahnya, lalu limitkan ujungnya).
    
3. **Bukan Keduanya?** Jika bentuknya tidak beraturan, atau seperti Deret Harmonik ($\sum \frac{1}{n}$), maka **jangan pernah bermimpi** mencari nilai Jumlah Totalnya ($S_n$). Tugas kalian cukup menguji _sifatnya_ saja (apakah dia konvergen atau divergen) menggunakan alat uji seperti Uji Integral, Uji Deret-p, atau Uji Banding.
    

Intinya: Jangan memaksakan rumus Geometri ke deret yang bukan Geometri. Pahami bentuk fisiknya terlebih dahulu sebelum memilih senjata penyelesaiannya!