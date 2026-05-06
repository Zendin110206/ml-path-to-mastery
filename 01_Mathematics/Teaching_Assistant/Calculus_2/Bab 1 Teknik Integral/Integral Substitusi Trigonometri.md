**Catatan Responsi Kalkulus: Integral Substitusi Trigonometri**

Halo teman-teman, berikut adalah rangkuman catatan responsi untuk materi Integral Substitusi Trigonometri. Materi ini digunakan ketika kita menemui bentuk akar yang mengandung fungsi kuadrat (penjumlahan atau pengurangan) di mana substitusi aljabar biasa tidak lagi bisa menyelesaikan masalah.

### **Panduan Dasar (Cheat Code) Substitusi Trigonometri**

Untuk menyelesaikan bentuk akar kuadrat, kita akan mengubah variabel $x$ menjadi fungsi trigonometri agar akarnya dapat disederhanakan menggunakan identitas trigonometri dasar.

1. Jika bentuknya $\sqrt{a^2 - x^2} \implies$ Gunakan substitusi $x = a \sin t$
    
2. Jika bentuknya $\sqrt{x^2 + a^2} \implies$ Gunakan substitusi $x = a \tan t$
    
3. Jika bentuknya $\sqrt{x^2 - a^2} \implies$ Gunakan substitusi $x = a \sec t$
    

**Kunci Penting:** Setelah proses integral selesai, selalu gambar **Segitiga Siku-Siku** berdasarkan substitusi awal untuk mengembalikan variabel $t$ menjadi variabel $x$.

![[pasted_20260406110643.png#center]]

![[pasted_20260406111134.png#center]]

---

### **1. Tipe Substitusi Sinus**

**Soal:** Tentukan $\int \frac{x^2}{\sqrt{9-x^2}} \, dx$

**Penyelesaian:**

Bentuk akar pada soal adalah $\sqrt{9 - x^2}$, yang identik dengan bentuk $\sqrt{a^2 - x^2}$.

Maka $a^2 = 9 \implies a = 3$. Kita gunakan substitusi sinus.

Misalkan:

$$x = 3 \sin t \implies dx = 3 \cos t \, dt$$

Ubah bentuk akarnya terlebih dahulu agar lebih mudah:

$$\sqrt{9 - x^2} = \sqrt{9 - (3 \sin t)^2} = \sqrt{9 - 9 \sin^2 t} = \sqrt{9(1 - \sin^2 t)}$$

Ingat identitas $1 - \sin^2 t = \cos^2 t$, maka:

$$\sqrt{9 \cos^2 t} = 3 \cos t$$

Substitusikan semua elemen ke dalam integral:

$$\int \frac{(3 \sin t)^2}{3 \cos t} \cdot (3 \cos t \, dt)$$

$$\int \frac{9 \sin^2 t}{3 \cos t} \cdot 3 \cos t \, dt$$

Coret $3 \cos t$ pada pembilang dan penyebut:

$$= 9 \int \sin^2 t \, dt$$

Gunakan identitas sudut rangkap $\sin^2 t = \frac{1 - \cos 2t}{2}$:

$$= 9 \int \left(\frac{1 - \cos 2t}{2}\right) \, dt$$

$$= \frac{9}{2} \left( t - \frac{1}{2}\sin 2t \right) + C$$

Gunakan identitas $\sin 2t = 2 \sin t \cos t$:

$$= \frac{9}{2} t - \frac{9}{2} \sin t \cos t + C$$

**Mengembalikan ke variabel $x$:**

Dari awal kita memisalkan $x = 3 \sin t$, sehingga $\sin t = \frac{x}{3}$.

Gambarkan segitiga siku-siku dengan sudut $t$ (anggap gambar di bawah "Sudut theta" (**θ**) itu sudut t yaa, ganti (**θ**) dengan t yaa, karena aku enggak ada gamabr yang cocok, jadi pake ini ):

![[pasted_20260406110643.png#center]]

- Sisi Depan = $x$
    
- Sisi Miring = $3$
    
- Sisi Samping = $\sqrt{3^2 - x^2} = \sqrt{9 - x^2}$ (menggunakan teorema Pythagoras)
    

Maka, $\cos t = \frac{\text{Samping}}{\text{Miring}} = \frac{\sqrt{9-x^2}}{3}$.

Untuk mencari nilai $t$, kita gunakan invers sinus: $t = \arcsin\left(\frac{x}{3}\right)$.

Substitusikan kembali ke hasil integral:

$$= \frac{9}{2} \arcsin\left(\frac{x}{3}\right) - \frac{9}{2} \left(\frac{x}{3}\right) \left(\frac{\sqrt{9-x^2}}{3}\right) + C$$

**Hasil Akhir:**

$$= \frac{9}{2} \arcsin\left(\frac{x}{3}\right) - \frac{1}{2} x \sqrt{9-x^2} + C$$

---

### **2. Tipe Substitusi Tangen**

**Soal:** Tentukan $\int \frac{1}{x\sqrt{x^2+9}} \, dx$

**Penyelesaian:**

Bentuk akar pada soal adalah $\sqrt{x^2 + 9}$, yang identik dengan bentuk $\sqrt{x^2 + a^2}$.

Maka $a^2 = 9 \implies a = 3$. Kita gunakan substitusi tangen.

Misalkan:

$$x = 3 \tan t \implies dx = 3 \sec^2 t \, dt$$

Ubah bentuk akarnya:

$$\sqrt{x^2 + 9} = \sqrt{(3 \tan t)^2 + 9} = \sqrt{9 \tan^2 t + 9} = \sqrt{9(\tan^2 t + 1)}$$

Ingat identitas $\tan^2 t + 1 = \sec^2 t$, maka:

$$\sqrt{9 \sec^2 t} = 3 \sec t$$

Substitusikan ke dalam integral:

$$\int \frac{1}{(3 \tan t)(3 \sec t)} \cdot (3 \sec^2 t \, dt)$$

$$\int \frac{3 \sec^2 t}{9 \tan t \sec t} \, dt$$

Sederhanakan:

$$= \frac{1}{3} \int \frac{\sec t}{\tan t} \, dt$$

Ubah ke dalam bentuk sinus dan kosinus untuk mempermudah integrasi:

$$\frac{\sec t}{\tan t} = \frac{1/\cos t}{\sin t/\cos t} = \frac{1}{\sin t} = \csc t$$

Maka integralnya menjadi:

$$= \frac{1}{3} \int \csc t \, dt$$

$$= \frac{1}{3} \ln |\csc t - \cot t| + C$$

**Mengembalikan ke variabel $x$:**

Dari substitusi awal $x = 3 \tan t$, maka $\tan t = \frac{x}{3}$.

Gambarkan segitiga siku-siku dengan sudut $t$ (anggap gambar di bawah "Sudut theta" (**θ**) itu sudut t yaa, ganti (**θ**) dengan t yaa, karena aku enggak ada gamabr yang cocok, jadi pake ini ):

![[pasted_20260406110643.png#center]]


- Sisi Depan = $x$
    
- Sisi Samping = $3$
    
- Sisi Miring = $\sqrt{x^2 + 3^2} = \sqrt{x^2 + 9}$
    

Maka:

- $\csc t = \frac{\text{Miring}}{\text{Depan}} = \frac{\sqrt{x^2+9}}{x}$
    
- $\cot t = \frac{\text{Samping}}{\text{Depan}} = \frac{3}{x}$
    

Substitusikan kembali:

**Hasil Akhir:**

$$= \frac{1}{3} \ln \left| \frac{\sqrt{x^2+9}}{x} - \frac{3}{x} \right| + C = \frac{1}{3} \ln \left| \frac{\sqrt{x^2+9} - 3}{x} \right| + C$$

---

### **3. Tipe Modifikasi (Melengkapkan Kuadrat Sempurna)**

**Soal:** Tentukan $\int \frac{3x}{\sqrt{x^2+2x+5}} \, dx$

**Penyelesaian:**

Jika bentuk kuadrat di dalam akar tidak sederhana (memiliki suku $x$), kita harus merapikannya terlebih dahulu menggunakan metode **Melengkapkan Kuadrat Sempurna**.

Rapikan penyebut:

$$x^2 + 2x + 5 = (x^2 + 2x + 1) + 4 = (x + 1)^2 + 4$$

Sekarang lakukan substitusi aljabar awal:

Misalkan $u = x + 1 \implies du = dx$ dan $x = u - 1$.

Substitusikan ke dalam soal:

$$\int \frac{3(u-1)}{\sqrt{u^2+4}} \, du = \int \frac{3u - 3}{\sqrt{u^2+4}} \, du$$

Pisahkan pecahan tersebut menjadi dua integral agar mudah dikerjakan:

$$= \int \frac{3u}{\sqrt{u^2+4}} \, du - \int \frac{3}{\sqrt{u^2+4}} \, du$$

**Bagian 1: Integral Kiri**

Integral ini dapat diselesaikan dengan substitusi aljabar biasa.

Misal $w = u^2 + 4 \implies dw = 2u \, du \implies u \, du = \frac{dw}{2}$.

$$\int \frac{3}{\sqrt{w}} \cdot \frac{dw}{2} = \frac{3}{2} \int w^{-1/2} \, dw = \frac{3}{2} \left( 2w^{1/2} \right) = 3\sqrt{w} = 3\sqrt{u^2+4}$$

**Bagian 2: Integral Kanan**

$$\int \frac{3}{\sqrt{u^2+4}} \, du$$

Bentuk ini memerlukan substitusi trigonometri tipe tangen ($a = 2$).

Misal $u = 2 \tan t \implies du = 2 \sec^2 t \, dt$.

Akarnya menjadi: $\sqrt{u^2+4} = \sqrt{4 \tan^2 t + 4} = 2 \sec t$.

$$3 \int \frac{2 \sec^2 t}{2 \sec t} \, dt = 3 \int \sec t \, dt = 3 \ln |\sec t + \tan t|$$

Kembalikan dari $t$ ke $u$:

Diketahui $\tan t = \frac{u}{2}$. Sisi Miring = $\sqrt{u^2+4}$. Maka $\sec t = \frac{\sqrt{u^2+4}}{2}$.

Hasil Bagian 2 = $3 \ln \left| \frac{\sqrt{u^2+4}}{2} + \frac{u}{2} \right|$.

**Gabungkan dan Kembalikan ke $x$:**

Hasil Keseluruhan = (Bagian 1) - (Bagian 2)

$$= 3\sqrt{u^2+4} - 3 \ln \left| \frac{\sqrt{u^2+4}}{2} + \frac{u}{2} \right| + C$$

Ganti kembali $u = x + 1$:

**Hasil Akhir:**

$$= 3\sqrt{x^2+2x+5} - 3 \ln \left| \frac{\sqrt{x^2+2x+5} + x + 1}{2} \right| + C$$

---

Semoga rangkuman ini dapat membantu teman-teman memahami alur dan trik penyelesaian substitusi trigonometri. Selamat belajar!