**Catatan Responsi Kalkulus 2: Deret Taylor dan Deret Maclaurin (Halaman 43)**

Halo teman-teman, selamat datang di salah satu materi puncak dan paling elegan di Kalkulus! Sejauh ini, kita sudah belajar cara menguji deret angka. Sekarang, kita akan melakukan sebuah "sihir matematika": **Kita akan mengubah fungsi-fungsi rumit seperti trigonometri ($\sin x, \cos x$) dan eksponensial ($e^x$) menjadi bentuk suku banyak (polinomial) biasa yang hanya berisi $x, x^2, x^3$, dan seterusnya.**

Kenapa kita melakukan ini? Karena komputer dan kalkulator sebenarnya tidak mengerti apa itu $\sin(20^\circ)$. Komputer hanya tahu cara menambah, mengurang, mengali, dan membagi. Jadi, kalkulator menggunakan deret polinomial ini untuk menghitung nilai sinus atau eksponensial kalian!

*(Intermezzo Visual: Teman-teman, materi Deret Taylor ini secara visual itu sangat, sangat indah. Saya sangat menyarankan kalian untuk menonton video penjelasan dari channel YouTube **3Blue1Brown** tentang "Taylor Series". Selain itu, coba buka **GeoGebra** di laptop kalian. Ketik fungsi $f(x) = \sin(x)$. Lalu di baris bawahnya, ketik pelan-pelan $x$, lalu ubah jadi $x - x^3/3!$, lalu tambah lagi $+ x^5/5!$. Kalian akan melihat secara *real-time* bagaimana kurva polinomial tersebut pelan-pelan meliuk dan "memeluk" kurva sinus aslinya dengan sangat sempurna. Ini akan benar-benar membuka wawasan kalian tentang apa yang sebenarnya sedang kita hitung di bawah ini!)*

---

### **1. Memahami Rumus Dasarnya**

Ada dua nama deret di sini, tapi sebenarnya mereka adalah **benda yang sama**.

**Deret Taylor (Bentuk Umum):**
Deret ini digunakan untuk memproyeksikan fungsi di sekitar titik pusat tertentu, yaitu **$x = b$**.
Rumusnya:
$$f(x) = f(b) + f'(b)(x-b) + \frac{f''(b)}{2!}(x-b)^2 + \frac{f'''(b)}{3!}(x-b)^3 + \dots = \sum_{n=0}^{\infty} \frac{f^{(n)}(b)}{n!} (x-b)^n$$
*Cara bacanya:* Cari nilai fungsi di titik $b$, ditambah turunan pertama di titik $b$ dikali $(x-b)$, ditambah turunan kedua di titik $b$ dibagi $2!$ dikali $(x-b)^2$, dan seterusnya.

**Deret Maclaurin (Deret Taylor Spesial):**
Deret Maclaurin hanyalah Deret Taylor yang titik pusatnya **selalu di $x = 0$** (alias $b=0$). Karena $x-0 = x$, maka rumusnya menjadi jauh lebih sederhana:
$$f(x) = f(0) + f'(0)x + \frac{f''(0)}{2!}x^2 + \frac{f'''(0)}{3!}x^3 + \dots = \sum_{n=0}^{\infty} \frac{f^{(n)}(0)}{n!} x^n$$

*(Catatan: Di modul halaman 43, ada tabel "Important Maclaurin Series". Itu adalah "Cheat Sheet" atau contekan resmi dari fungsi-fungsi terkenal yang sudah dihitung deretnya. Di saat ujian, kalau dosen mengizinkan, kalian bisa langsung pakai rumus di tabel itu. Tapi untuk sekarang, kita akan belajar cara menemukan rumus tersebut dari nol).*

---

### **2. Pembahasan Contoh Soal 1: Deret Maclaurin $f(x) = \sin x$**

**Penyelesaian untuk UTS:**
*Intuisi:* Karena diminta Deret Maclaurin, berarti pusatnya mutlak di $x = 0$. Tugas utama kita adalah menurunkan fungsi $\sin x$ berkali-kali, lalu memasukkan angka $0$ ke dalam setiap hasil turunannya.

**Langkah 1: Buat Daftar Turunan dan Substitusi $x=0$**
Mari kita urutkan secara rapi di kertas ujian:
* Suku Awal ($n=0$): $f(x) = \sin x \implies f(0) = \sin(0) = 0$
* Turunan 1 ($n=1$): $f'(x) = \cos x \implies f'(0) = \cos(0) = 1$
* Turunan 2 ($n=2$): $f''(x) = -\sin x \implies f''(0) = -\sin(0) = 0$
* Turunan 3 ($n=3$): $f'''(x) = -\cos x \implies f'''(0) = -\cos(0) = -1$
* Turunan 4 ($n=4$): $f^{(4)}(x) = \sin x \implies f^{(4)}(0) = \sin(0) = 0$
* Turunan 5 ($n=5$): $f^{(5)}(x) = \cos x \implies f^{(5)}(0) = \cos(0) = 1$

*Perhatikan polanya:* Angkanya akan terus berulang secara konstan yaitu: **$0, 1, 0, -1, 0, 1, 0, -1, \dots$**

**Langkah 2: Masukkan ke Rumus Maclaurin**
Ingat rumusnya: $f(0) + \frac{f'(0)}{1!}x + \frac{f''(0)}{2!}x^2 + \frac{f'''(0)}{3!}x^3 + \dots$
Substitusikan deretan angka yang kita dapat di atas:
$$= 0 + \frac{1}{1!}x + \frac{0}{2!}x^2 + \frac{-1}{3!}x^3 + \frac{0}{4!}x^4 + \frac{1}{5!}x^5 + \dots$$

**Langkah 3: Sederhanakan (Buang Semua Suku Bernilai Nol)**
Semua suku yang memiliki angka $0$ akan habis. Kita coret suku ke-0, ke-2, ke-4, dan seterusnya.
Tersisalah suku-suku ganjil saja:
$$= x - \frac{x^3}{3!} + \frac{x^5}{5!} - \frac{x^7}{7!} + \dots$$

*(Coba kalian cek ke tabel "Important Maclaurin Series" No. 5 di modul, hasilnya sama persis kan? Itulah asal-usul rumusnya!).*

---

### **3. Pembahasan Contoh Soal 2: Deret Maclaurin $f(x) = e^x$**

**Penyelesaian untuk UTS:**
*Intuisi:* Ini adalah soal favorit mahasiswa karena fungsi eksponensial $e^x$ adalah fungsi yang kebal terhadap turunan. Mau diturunkan sampai kiamat pun, hasilnya akan tetap $e^x$.

**Langkah 1: Daftar Turunan**
Pusatnya di $x=0$.
* $f(x) = e^x \implies f(0) = e^0 = 1$
* $f'(x) = e^x \implies f'(0) = e^0 = 1$
* $f''(x) = e^x \implies f''(0) = e^0 = 1$
* dan seterusnya... semua turunannya bernilai $1$.

**Langkah 2: Masukkan ke Rumus Maclaurin**
$$e^x = 1 + \frac{1}{1!}x + \frac{1}{2!}x^2 + \frac{1}{3!}x^3 + \frac{1}{4!}x^4 + \dots$$
Disusun lebih rapi:
$$e^x = 1 + x + \frac{x^2}{2!} + \frac{x^3}{3!} + \frac{x^4}{4!} + \dots$$

Jika diminta menuliskan bentuk Notasi Sigmanya ($\sum$), polanya sangat mudah dibaca:
$$e^x = \sum_{n=0}^{\infty} \frac{x^n}{n!}$$
*(Ini ada di tabel modul No. 4).*

---

### **4. Pembahasan Contoh Soal 3: Deret Taylor $f(x) = e^x$ dengan pusat di $x=1$**

**Penyelesaian untuk UTS:**
*Intuisi:* Hati-hati! Soal ini dengan tegas meminta **Deret Taylor dengan pusat $x=1$**. Berarti kita bukan lagi memasukkan angka 0 ke dalam turunan, melainkan angka **1**. Dan di rumusnya nanti, kita tidak menulis $x^n$, melainkan **$(x-1)^n$**.

**Langkah 1: Daftar Turunan di $x=1$**
Fungsinya masih sama, yaitu $e^x$.
* $f(x) = e^x \implies f(1) = e^1 = e$
* $f'(x) = e^x \implies f'(1) = e^1 = e$
* $f''(x) = e^x \implies f''(1) = e^1 = e$
* Semua nilai turunannya adalah konstanta $e$ (ingat, $e$ itu angka nyata, sekitar 2.718).

**Langkah 2: Masukkan ke Rumus Deret Taylor Umum**
Rumus pusat $b=1$:
$$f(x) = f(1) + f'(1)(x-1) + \frac{f''(1)}{2!}(x-1)^2 + \frac{f'''(1)}{3!}(x-1)^3 + \dots$$
Masukkan angka-angka yang sudah kita hitung:
$$e^x = e + e(x-1) + \frac{e}{2!}(x-1)^2 + \frac{e}{3!}(x-1)^3 + \dots$$

**Langkah 3: Notasi Sigmanya**
Jika kita lihat polanya, semuanya punya pengali $e$, punya faktorial $n!$ di bawah, dan punya bentuk $(x-1)^n$. Maka deret utuhnya ditulis:
$$e^x = \sum_{n=0}^{\infty} \frac{e}{n!} (x-1)^n$$

*Kenapa hasilnya beda dengan Contoh 2? Karena fungsi yang sama jika "dipotret" atau dipusatkan di titik yang berbeda ($0$ vs $1$), maka bentuk polinomial pelukisnya pun harus disesuaikan agar akurat di titik tersebut.*