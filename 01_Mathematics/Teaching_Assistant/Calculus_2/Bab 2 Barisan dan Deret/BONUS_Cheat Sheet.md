**Catatan Tambahan: "Cheat Sheet" Rumus Dasar & Intuisi Integral**

Halo teman-teman, sebagai pelengkap materi kita, ini adalah lembar catatan khusus (_Cheat Sheet_) yang merangkum rumus-rumus "wajib hafal" dari zaman sekolah menengah yang akan terus dipakai di bab Barisan dan Deret. Di bagian akhir, saya juga menambahkan sedikit _flashback_ tentang cara membangun intuisi saat mengerjakan integral, agar kalian tidak salah langkah saat ujian.

Silakan disimpan dan jadikan pegangan!

---

### **Bagian 1: Barisan dan Deret Aritmetika (Ciri: Ditambah/Dikurang)**

Aritmetika adalah barisan yang loncatannya selalu sama menggunakan operasi penjumlahan atau pengurangan. Loncatan ini disebut **Beda ($b$)**.

**Rumus Wajib:**

- **Mencari Beda ($b$):** Lakukan pengurangan suku setelahnya dengan suku sebelumnya.
    
    $$b = U_n - U_{n-1}$$
    
- **Mencari Suku ke-$n$ ($U_n$):**
    
    $$U_n = a + (n - 1)b$$
    
    _(Keterangan: $a$ adalah suku pertama atau $U_1$)_
    
- **Mencari Jumlah $n$ Suku Pertama ($S_n$):**
    
    $$S_n = \frac{n}{2} [2a + (n - 1)b]$$
    
    Atau jika suku terakhirnya ($U_n$) sudah diketahui, pakai jalan pintas ini:
    
    $$S_n = \frac{n}{2} (a + U_n)$$
    

**Contoh Kasus Sederhana:**

Ada barisan: **3, 7, 11, 15, ...**

1. **Cari $b$:** $7 - 3 = 4$. Jadi bedanya adalah 4. Suku pertamanya ($a$) adalah 3.
    
2. **Cari Suku ke-10 ($U_{10}$):** $U_{10} = 3 + (10 - 1)4 = 3 + (9)(4) = 3 + 36 = 39$.
    
3. **Cari Jumlah 10 Suku Pertama ($S_{10}$):** Karena $U_{10}$ sudah tahu (39), pakai rumus pintas:
    
    $S_{10} = \frac{10}{2} (3 + 39) = 5 (42) = 210$.
    

---

### **Bagian 2: Barisan dan Deret Geometri (Ciri: Dikali/Dibagi)**

Geometri adalah barisan yang loncatannya selalu sama menggunakan operasi perkalian atau pembagian. Loncatan ini disebut **Rasio ($r$)**.

**Rumus Wajib:**

- **Mencari Rasio ($r$):** Lakukan pembagian suku setelahnya dengan suku sebelumnya.
    
    $$r = \frac{U_n}{U_{n-1}}$$
    
- **Mencari Suku ke-$n$ ($U_n$):**
    
    $$U_n = ar^{n-1}$$
    
- **Mencari Jumlah $n$ Suku Pertama ($S_n$):**
    
    Ada dua rumus tergantung nilai rasionya (agar hasilnya tidak minus):
    
    - Jika rasionya besar ($r > 1$):
        
        $$S_n = \frac{a(r^n - 1)}{r - 1}$$
        
    - Jika rasionya pecahan ($r < 1$):
        
        $$S_n = \frac{a(1 - r^n)}{1 - r}$$
        
- **Suku Tengah ($U_t$):** Khusus jika jumlah sukunya ganjil.
    
    $$U_t = \sqrt{U_1 \times U_n}$$
    

**Contoh Kasus Sederhana:**

Ada barisan: **2, 6, 18, 54, ...**

1. **Cari $r$:** $6 \div 2 = 3$. Jadi rasionya adalah 3. Suku pertamanya ($a$) adalah 2.
    
2. **Cari Suku ke-4 ($U_4$):**
    
    $U_4 = 2 \times 3^{4-1} = 2 \times 3^3 = 2 \times 27 = 54$.
    
3. **Cari Jumlah 4 Suku Pertama ($S_4$):** Karena $r = 3$ (lebih besar dari 1), pakai rumus pertama:
    
    $S_4 = \frac{2(3^4 - 1)}{3 - 1} = \frac{2(81 - 1)}{2} = \frac{2(80)}{2} = 80$.
    

---

### **Bagian 3: Flashback - Intuisi Integral (Substitusi vs Parsial)**

Banyak mahasiswa yang kebingungan membedakan kapan harus memakai **Integral Substitusi Biasa** dan kapan harus memakai **Integral Parsial** ($\int u \, dv$, atau metode Tabel/Tanzalin).

Mari kita ambil contoh yang paling sering menjebak:

$$\int x e^{-x^2} \, dx$$

**Kesalahan Umum (Kenapa tidak pakai Parsial/Tabel?):**

Saat melihat ada variabel $x$ dikali fungsi eksponensial ($e$), insting pertama biasanya: _"Oh, kita jadikan $x$ sebagai $u$ biar kalau diturunkan terus-menerus lama-lama jadi nol!"_

Mari kita tes logika itu. Jika $u = x$, maka pasangannya adalah $dv = e^{-x^2} \, dx$.

Masalahnya muncul di sini: Untuk mencari $v$, kita harus mengintegralkan $e^{-x^2}$. Di dalam matematika, **fungsi $e^{-x^2}$ itu mustahil diintegralkan menggunakan metode dasar apapun** (hasilnya berupa fungsi error imajiner). Jadi, kalian akan _stuck_ alias mentok di tengah jalan.

**Membangun Intuisi: Metode "Tumbal" (Substitusi Biasa)**

Sebelum buru-buru memakai Parsial, selalu lakukan "Pemindaian Visual" pada soal:

1. Lihat pangkat yang ada di posisi rumit (misalnya di atas $e$, di dalam akar, atau di dalam kurung). Di soal ini, pangkatnya adalah $-x^2$.
    
2. Tanyakan pada diri kalian: **"Kalau $-x^2$ diturunkan, hasilnya apa?"** Jawabannya adalah $-2x$.
    
3. Sekarang, lihat di luar fungsi eksponensial tersebut. Apakah ada huruf $x$ yang sedang menganggur? **Ada!** Di depan $e$ terdapat huruf $x$.
    

**Inilah intuisinya:** Huruf $x$ yang menganggur di luar itu sengaja disiapkan oleh pembuat soal sebagai **"Tumbal"**. Tumbal ini tugasnya untuk dicoret (dihilangkan) oleh hasil turunan dari fungsi yang ada di dalam.

Karena ada "Tumbal" yang bentuk variabelnya sama (sama-sama $x$ pangkat 1), maka kita mutlak harus menggunakan **Substitusi Biasa**.

**Pembuktiannya:**

Misal $u = -x^2 \implies du = -2x \, dx$

Maka $dx = \frac{du}{-2x}$

Masukkan ke soal:

$$\int x e^u \left(\frac{du}{-2x}\right)$$

Lihat? Huruf $x$ di depan $e$ saling mencoret dengan huruf $x$ yang ada di bawah (si tumbal berhasil bekerja).

$$= \int \frac{e^u}{-2} \, du = -\frac{1}{2} \int e^u \, du$$

Dan integralnya berubah menjadi sangat sederhana!

**Kesimpulan Intuisi Integral:**

- Gunakan **Substitusi Biasa** jika variabel di luar merupakan "turunan satu tingkat lebih rendah" dari variabel yang ada di dalam (bisa dijadikan tumbal untuk dicoret).
    
- Gunakan **Integral Parsial ($udv$)** jika kedua fungsi saling tidak ada hubungannya (misalnya $\int x e^x \, dx$ atau $\int x \sin x \, dx$, di mana turunan $x$ tidak bisa mematikan fungsi sebelahnya).