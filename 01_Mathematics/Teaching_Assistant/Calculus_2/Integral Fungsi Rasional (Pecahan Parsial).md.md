**Catatan Responsi Kalkulus: Integral Fungsi Rasional (Pecahan Parsial)**

Halo teman-teman, berikut adalah kelanjutan rangkuman catatan responsi untuk materi Integral Fungsi Rasional. Metode ini (Pecahan Parsial) sangat berguna untuk menyelesaikan integral berbentuk pecahan di mana pembilang dan penyebutnya adalah polinomial (suku banyak), dan penyebutnya dapat difaktorkan.

Langkah pertama yang **wajib** selalu dilakukan sebelum mengintegralkan bentuk rasional adalah: **Faktorkan penyebutnya!**

Berdasarkan bentuk faktor penyebutnya, kita akan membagi materi ini ke dalam beberapa kasus.


---

**Panduan Dasar (Cheat Code) Integral Fungsi Rasional (Pecahan Parsial)**

Inti dari metode ini adalah memecah bentuk pecahan yang rumit menjadi pecahan-pecahan kecil yang sangat mudah diintegralkan (biasanya hasilnya menjadi $\ln$ atau $\arctan$). Aturan pemecahannya sangat bergantung pada **bentuk faktor dari penyebutnya**.

Berikut adalah 4 aturan utama (Cheat Code) pemecahannya:

1. **Faktor Linear Tidak Berulang:** Misal $(x-a)(x-b) \implies$ Pembilangnya cukup konstanta tunggal.
    
    $$\text{Bentuknya: } \frac{A}{x-a} + \frac{B}{x-b}$$
    
2. **Faktor Linear Berulang:** Misal $(x-a)^2 \implies$ Bikin "anak tangga" pangkatnya dari 1 sampai pangkat tertinggi.
    
    $$\text{Bentuknya: } \frac{A}{x-a} + \frac{B}{(x-a)^2}$$
    
3. **Faktor Kuadratik Tidak Berulang:** Misal $(x^2+a)$ (tidak bisa difaktorkan lagi) $\implies$ Pembilangnya **wajib** berbentuk linear.
    
    $$\text{Bentuknya: } \frac{Ax+B}{x^2+a}$$
    
4. **Faktor Kuadratik Berulang:** Misal $(x^2+a)^2 \implies$ Gabungan aturan kuadratik dan anak tangga.
    
    $$\text{Bentuknya: } \frac{Ax+B}{x^2+a} + \frac{Cx+D}{(x^2+a)^2}$$
    

**Kunci Penting:**

- Selalu gunakan **Metode Pembuat Nol** untuk mencari nilai huruf ($A, B, C$) dengan cepat jika penyebutnya berbentuk linear.
    
- Gunakan **Metode Menyamakan Koefisien** jika penyebutnya berbentuk kuadratik atau berulang.
    
- _Syarat Utama:_ Pangkat tertinggi pembilang (atas) **harus lebih kecil** dari pangkat tertinggi penyebut (bawah). Jika lebih besar atau sama, lakukan pembagian bersusun (porogapit) terlebih dahulu.
    

---

### **Kasus 1: Faktor Penyebut Linear Tidak Berulang**

Kasus ini terjadi jika penyebut dapat difaktorkan menjadi bentuk linear (pangkat satu) yang semuanya berbeda (tidak ada yang kembar).

**Soal:** Tentukan $\int \frac{x+1}{x^2 - 9} \, dx$

**Penyelesaian:**

**Langkah 1: Faktorkan Penyebut**

Kita faktorkan penyebut $x^2 - 9$ menggunakan sifat selisih kuadrat $a^2 - b^2 = (a-b)(a+b)$.

$$x^2 - 9 = (x - 3)(x + 3)$$

**Langkah 2: Dekomposisi Pecahan Parsial**

Karena penyebutnya terdiri dari dua faktor linear yang berbeda, yaitu $(x-3)$ dan $(x+3)$, kita pecah fungsi rasional tersebut menjadi dua pecahan menggunakan konstanta $A$ dan $B$.

$$\frac{x+1}{(x-3)(x+3)} = \frac{A}{x-3} + \frac{B}{x+3}$$

**Langkah 3: Menyamakan Pembilang (Mencari Nilai A dan B)**

Samakan penyebut di ruas kanan, sehingga kita bisa fokus membandingkan pembilangnya saja:

$$x + 1 = A(x+3) + B(x-3)$$

Untuk mencari nilai $A$ dan $B$, cara paling cepat dan efektif adalah menggunakan **Metode Pembuat Nol**. Kita akan mensubstitusikan nilai $x$ tertentu agar salah satu konstanta lenyap (menjadi nol).

- **Mencari nilai A (lenyapkan B):**
    
    Pilih $x = 3$ agar bentuk $(x-3)$ menjadi nol. Substitusikan $x = 3$ ke seluruh persamaan:
    
    $$(3) + 1 = A(3+3) + B(3-3)$$
    
    $$4 = 6A + B(0)$$
    
    $$4 = 6A$$
    
    $$A = \frac{4}{6} = \frac{2}{3}$$
    
- **Mencari nilai B (lenyapkan A):**
    
    Pilih $x = -3$ agar bentuk $(x+3)$ menjadi nol. Substitusikan $x = -3$ ke seluruh persamaan:
    
    $$(-3) + 1 = A(-3+3) + B(-3-3)$$
    
    $$-2 = A(0) + -6B$$
    
    $$-2 = -6B$$
    
    $$B = \frac{-2}{-6} = \frac{1}{3}$$
    

**Langkah 4: Masukkan ke Integral dan Selesaikan**

Setelah nilai $A$ dan $B$ ditemukan, kembalikan ke dalam bentuk integral.

$$\int \frac{x+1}{x^2-9} \, dx = \int \left( \frac{2/3}{x-3} + \frac{1/3}{x+3} \right) \, dx$$

Pisahkan menjadi dua integral:

$$= \frac{2}{3} \int \frac{1}{x-3} \, dx + \frac{1}{3} \int \frac{1}{x+3} \, dx$$

Ingat kembali aturan dasar integral logaritma natural: $\int \frac{1}{u} \, du = \ln|u| + C$.

Karena penyebutnya hanya fungsi linear pangkat satu, kita bisa langsung mengintegralkannya menjadi bentuk $\ln$.

**Hasil Akhir:**

$$= \frac{2}{3} \ln|x-3| + \frac{1}{3} \ln|x+3| + C$$

### **2. Kasus 2 (Linear Berulang) - AWAS JEBAKAN!**

**Contoh Soal Modul:** $\int \frac{1}{(x+2)^2(x-1)} \, dx$

**Cara biar kalian nih paham aku coba kek ngomong yaa (Ngasih Peringatan):**

> "Sekarang kita naik level ke Kasus 2. Coba perhatikan penyebutnya: $(x+2)^2(x-1)$.
> 
> Di situ ada $(x+2)$ yang dikuadratkan. Ini yang namanya **Linear Berulang**.
> 
> _Warning_ ya teman-teman! Jangan pernah memecahnya cuma jadi $\frac{A}{x+2} + \frac{B}{x-1}$. Itu SALAH TOTAL! Ingat aturan kedua kita: kalau ada pangkat berulang, kita harus bikin **anak tangga** dari pangkat 1 sampai pangkat tertingginya!"

**Action di Papan Tulis (Oret-oretan Pecahan):**

$$\frac{1}{(x+2)^2(x-1)} = \frac{A}{x+2} + \frac{B}{(x+2)^2} + \frac{C}{x-1}$$

_(Tunjuk bagian $A$ dan $B$ di papan: "Lihat, untuk $(x+2)^2$, kita bikin anak tangga. Mulai dari pangkat 1 (punyanya si A), naik ke pangkat 2 (punyanya si B).")_

**Adu Pembilang (Samakan penyebutnya jadi $(x+2)^2(x-1)$):**

$$1 = A(x+2)(x-1) + B(x-1) + C(x+2)^2$$

**Cara Mencari A, B, C (Trik Campuran):**

> "Sama kayak tadi, kita pakai **Trik Pembuat Nol** dulu."

- Misal $x = 1$ (Biar $A$ dan $B$ nol):
    
    $$1 = A(0) + B(0) + C(1+2)^2$$
    
    $$1 = 9C \implies \mathbf{C = \frac{1}{9}}$$
    
- Misal $x = -2$ (Biar $A$ dan $C$ nol):
    
    $$1 = A(0) + B(-2-1) + C(0)$$
    
    $$1 = -3B \implies \mathbf{B = -\frac{1}{3}}$$
    

> "Wah Kak, pembuat nolnya udah habis! Gimana cara nyari $A$? Tenang, kita bisa pilih $x$ angka berapa aja sembarang. Biar gampang ngitungnya, kita pilih aja $x = 0$."

- Misal $x = 0$:
    
    $$1 = A(2)(-1) + B(-1) + C(2)^2$$
    
    $$1 = -2A - B + 4C$$
    
    _(Masukin nilai $B$ dan $C$ yang udah ketemu)_
    
    $$1 = -2A - \left(-\frac{1}{3}\right) + 4\left(\frac{1}{9}\right)$$
    
    $$1 = -2A + \frac{1}{3} + \frac{4}{9}$$
    
    $$1 = -2A + \frac{7}{9}$$
    
    $$2A = \frac{7}{9} - 1 \implies 2A = -\frac{2}{9} \implies \mathbf{A = -\frac{1}{9}}$$
    

**Masuk ke Integral (INI BAGIAN PALING KRUSIAL, AWAS JEBAKAN!):**

_("Oke, semua bahan udah lengkap. Kita masukin ke integral. Tapi PERHATIKAN BAIK-BAIK yang bagian si B ya!")_

$$\int \left( \frac{-1/9}{x+2} + \frac{-1/3}{(x+2)^2} + \frac{1/9}{x-1} \right) \, dx$$

_(Tulis di papan pakai tinta warna beda buat bagian tengah)_

$$= -\frac{1}{9} \int \frac{1}{x+2} \, dx \quad - \frac{1}{3} \int (x+2)^{-2} \, dx \quad + \frac{1}{9} \int \frac{1}{x-1} \, dx$$

**Cara Kamu Menjelaskan:**

> "Banyak banget mahasiswa yang kejebak di sini! Bagian A dan C itu bawahnya pangkat 1, jadi hasil integralnya PASTI jadi $\ln$.
> 
> TAPI, bagian B itu pangkat 2! Jangan ikut-ikutan dijadiin $\ln$ ya! Dia harus diangkat ke atas jadi pangkat minus dua ($^{-2}$), lalu diintegralin pakai aturan pangkat biasa (ditambah 1 pangkatnya)."

**Hasil Akhir:**

$$= -\frac{1}{9}\ln|x+2| - \frac{1}{3} \left[ \frac{1}{-1} (x+2)^{-1} \right] + \frac{1}{9}\ln|x-1| + C$$

$$= -\frac{1}{9}\ln|x+2| + \frac{1}{3(x+2)} + \frac{1}{9}\ln|x-1| + C$$

---

### **Kasus 3: Faktor Penyebut Kuadratik Tidak Berulang**

Kasus ini terjadi ketika penyebut memiliki faktor bentuk kuadrat ($x^2 + a$) yang sudah tidak bisa difaktorkan lagi menjadi bentuk linear.

**Aturan Emas:** Jika faktor penyebutnya berupa fungsi kuadratik, maka pembilang di atasnya **wajib** berbentuk fungsi linear ($Ax + B$), bukan hanya konstanta tunggal.

**Soal:** Tentukan $\int \frac{1}{x(x^2+1)} \, dx$

**Penyelesaian:**

**Langkah 1: Dekomposisi Pecahan Parsial**

Penyebut terdiri dari faktor linear $x$ dan faktor kuadratik $x^2+1$. Kita pecah menjadi:

$$\frac{1}{x(x^2+1)} = \frac{A}{x} + \frac{Bx + C}{x^2+1}$$

_(Perhatikan bahwa di atas $x^2+1$ kita menggunakan $Bx+C$)_

**Langkah 2: Menyamakan Pembilang (Mencari Nilai A, B, dan C)**

Samakan penyebut di ruas kanan:

$$1 = A(x^2+1) + (Bx + C)x$$

$$1 = Ax^2 + A + Bx^2 + Cx$$

Kelompokkan berdasarkan variabel dengan pangkat yang sama:

$$1 = (A+B)x^2 + Cx + A$$

Karena kita tidak bisa menggunakan "Metode Pembuat Nol" untuk $x^2+1$, kita gunakan metode **Menyamakan Koefisien** antara ruas kiri dan ruas kanan:

- **Konstanta (tanpa variabel $x$):** Di ruas kiri ada angka 1, di ruas kanan ada $A$. Maka didapat **$A = 1$**.
    
- **Koefisien $x$:** Di ruas kiri tidak ada variabel $x$ (berarti 0), di ruas kanan ada $C$. Maka didapat **$C = 0$**.
    
- **Koefisien $x^2$:** Di ruas kiri tidak ada $x^2$ (berarti 0), di ruas kanan ada $A+B$.
    
    $$0 = A + B$$
    
    $$0 = 1 + B \implies \mathbf{B = -1}$$
    

**Langkah 3: Masukkan ke Integral dan Selesaikan**

Substitusikan nilai $A$, $B$, dan $C$ ke dalam pemisahan awal:

$$\int \left( \frac{1}{x} + \frac{-1x + 0}{x^2+1} \right) \, dx = \int \frac{1}{x} \, dx - \int \frac{x}{x^2+1} \, dx$$

- Bagian kiri dapat diintegralkan langsung menjadi $\ln|x|$.
    
- Bagian kanan diselesaikan dengan metode substitusi: misal $u = x^2+1 \implies du = 2x \, dx$, sehingga hasilnya menjadi $\frac{1}{2}\ln(x^2+1)$.
    

**Hasil Akhir:**

$$= \ln|x| - \frac{1}{2}\ln(x^2+1) + C$$

---

### **Kasus 4: Faktor Penyebut Kuadratik Berulang**

Ini adalah bentuk paling kompleks, di mana terdapat faktor kuadratik yang memiliki pangkat (berulang). Penyelesaiannya menggabungkan aturan dari Kasus 2 (membuat tingkatan pangkat) dan Kasus 3 (pembilang bentuk linear).

**Soal:** Tentukan $\int \frac{6x^2 - 15x + 22}{(x+3)(x^2+2)^2} \, dx$

**Penyelesaian:**

**Langkah 1: Dekomposisi Pecahan Parsial**

Karena $(x^2+2)$ berulang sebanyak dua kali, kita harus membuat tingkatannya.

$$\frac{6x^2 - 15x + 22}{(x+3)(x^2+2)^2} = \frac{A}{x+3} + \frac{Bx+C}{(x^2+2)^1} + \frac{Dx+E}{(x^2+2)^2}$$

**Langkah 2: Menyamakan Pembilang**

Kalikan semua ruas dengan penyebut utama $(x+3)(x^2+2)^2$:

$$6x^2 - 15x + 22 = A(x^2+2)^2 + (Bx+C)(x+3)(x^2+2) + (Dx+E)(x+3)$$

**Langkah 3: Mencari Nilai A, B, C, D, dan E**

- **Mencari A (Metode Pembuat Nol):**
    
    Pilih $x = -3$ agar faktor $(x+3)$ menjadi nol.
    
    $$6(-3)^2 - 15(-3) + 22 = A((-3)^2 + 2)^2$$
    
    $$54 + 45 + 22 = A(9 + 2)^2$$
    
    $$121 = 121A \implies \mathbf{A = 1}$$
    
- **Mencari B, C, D, E (Metode Menyamakan Koefisien):**
    
    Substitusikan $A=1$, lalu jabarkan semua perkalian di ruas kanan:
    
    Ruas Kanan $= 1(x^4 + 4x^2 + 4) + (Bx+C)(x^3 + 3x^2 + 2x + 6) + Dx^2 + 3Dx + Ex + 3E$
    
    Ruas Kanan $= x^4 + 4x^2 + 4 + Bx^4 + 3Bx^3 + 2Bx^2 + 6Bx + Cx^3 + 3Cx^2 + 2Cx + 6C + Dx^2 + (3D+E)x + 3E$
    
    Samakan koefisiennya dengan ruas kiri ($6x^2 - 15x + 22$):
    
    - **Pangkat $x^4$:** $0 = 1 + B \implies \mathbf{B = -1}$
        
    - **Pangkat $x^3$:** $0 = 3B + C \implies 0 = 3(-1) + C \implies \mathbf{C = 3}$
        
    - **Pangkat $x^2$:** $6 = 4 + 2B + 3C + D \implies 6 = 4 - 2 + 9 + D \implies 6 = 11 + D \implies \mathbf{D = -5}$
        
    - **Pangkat $x$:** $-15 = 6B + 2C + 3D + E \implies -15 = -6 + 6 - 15 + E \implies -15 = -15 + E \implies \mathbf{E = 0}$
        

**Langkah 4: Masukkan ke Integral dan Selesaikan**

Berdasarkan nilai yang ditemukan, integralnya menjadi:

$$\int \left( \frac{1}{x+3} + \frac{-1x + 3}{x^2+2} + \frac{-5x + 0}{(x^2+2)^2} \right) \, dx$$

Kita pecah menjadi 3 bagian agar lebih mudah diselesaikan:

- **Bagian 1:**
    
    $$\int \frac{1}{x+3} \, dx = \mathbf{\ln|x+3|}$$
    
- **Bagian 2:**
    
    $$\int \frac{-x + 3}{x^2+2} \, dx$$
    
    Pecah lagi menjadi dua: $\int \frac{-x}{x^2+2} \, dx + \int \frac{3}{x^2+2} \, dx$.
    
    Suku pertama diselesaikan dengan substitusi $u = x^2+2$, sedangkan suku kedua menggunakan rumus invers tangen ($\int \frac{1}{x^2+a^2} = \frac{1}{a}\arctan\left(\frac{x}{a}\right)$).
    
    Hasilnya: $\mathbf{-\frac{1}{2}\ln(x^2+2) + \frac{3}{\sqrt{2}}\arctan\left(\frac{x}{\sqrt{2}}\right)}$
    
- **Bagian 3:**
    
    $$\int \frac{-5x}{(x^2+2)^2} \, dx$$
    
    Gunakan substitusi $u = x^2+2 \implies du = 2x \, dx$. Persamaan ini sama dengan $-5 \int x (x^2+2)^{-2} \, dx$.
    
    Hasilnya: $\mathbf{\frac{5}{2(x^2+2)}}$
    

**Hasil Akhir Keseluruhan:**

Gabungkan semua bagian yang telah diintegralkan:

$$= \ln|x+3| - \frac{1}{2}\ln(x^2+2) + \frac{3}{\sqrt{2}}\arctan\left(\frac{x}{\sqrt{2}}\right) + \frac{5}{2(x^2+2)} + C$$

---
Semoga rangkuman ini dapat membantu teman-teman memahami alur dan trik penyelesaian integral fungsi rasional. Selamat belajar!