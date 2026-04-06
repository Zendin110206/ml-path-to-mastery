**Catatan Responsi Kalkulus: Integral Substitusi Bentuk Akar**

Halo teman-teman, berikut adalah rangkuman catatan responsi untuk materi Integral dengan Substitusi Bentuk Akar. Silakan dipelajari kembali langkah-langkahnya.

### **Aturan Main Substitusi Akar Linear**

Jika di dalam integral terdapat bentuk akar linear seperti $\sqrt[n]{ax + b}$, insting pertama kita mungkin memisalkan bagian dalamnya saja ($u = ax+b$). Namun, cara ini akan menghasilkan bentuk pangkat pecahan yang rawan menimbulkan kesalahan hitung.

Untuk menghindarinya, gunakan trik ini: **Misalkan seluruh bentuk akarnya**.

1. Misalkan $u = \sqrt[n]{ax + b}$
    
2. Pangkatkan kedua ruas agar bentuk akarnya hilang: $u^n = ax + b$
    
3. Turunkan kedua ruas untuk mencari $dx$.
    

Mari kita terapkan pada dua tipe soal berikut.

---

### **1. Tipe Dasar**

**Soal:** Tentukan $\int x \sqrt{x+1} \, dx$

**Penyelesaian:**

Kita terapkan aturan utama dengan memisalkan seluruh akarnya:

Misal: $u = \sqrt{x+1}$

Kuadratkan kedua ruas: $u^2 = x + 1$

Dari persamaan ini, kita dapatkan nilai $x$: $x = u^2 - 1$

Turunkan ruas kiri terhadap $u$, dan ruas kanan terhadap $x$:

$$2u \, du = dx$$

Sekarang, substitusikan semua informasi ini ke dalam integral awal:

$$\int (u^2 - 1) \cdot u \cdot (2u \, du)$$

$$\int (u^2 - 1) \cdot 2u^2 \, du$$

Kalikan ke dalam:

$$2 \int (u^4 - u^2) \, du$$

Bentuknya sekarang menjadi polinomial biasa yang sangat mudah diintegralkan tanpa perlu pusing dengan pangkat pecahan.

$$2 \left( \frac{1}{5}u^5 - \frac{1}{3}u^3 \right) + C$$

Terakhir, kembalikan nilai $u$ ke bentuk asalnya yaitu $\sqrt{x+1}$ atau $(x+1)^{1/2}$:

$$2 \left( \frac{1}{5}(\sqrt{x+1})^5 - \frac{1}{3}(\sqrt{x+1})^3 \right) + C$$

$$\frac{2}{5}(x+1)^{5/2} - \frac{2}{3}(x+1)^{3/2} + C$$

---

### **2. Tipe Pecahan (Bentuk Lanjut)**

**Soal:** Tentukan $\int \frac{x^2 + 2x}{\sqrt{x+1}} \, dx$

**Penyelesaian:**

Meskipun terlihat lebih rumit karena berbentuk pecahan dan mengandung fungsi kuadrat, aturan mainnya tetap sama.

Misal: $u = \sqrt{x+1}$

Kuadratkan: $u^2 = x + 1 \implies x = u^2 - 1$

Turunkan: $2u \, du = dx$

_Trik Aljabar untuk pembilang ($x^2 + 2x$):_

Daripada mensubstitusi $(u^2 - 1)$ secara langsung lalu mengkuadratkannya (yang akan sangat panjang), kita bisa memfaktorkan pembilangnya terlebih dahulu:

$$x^2 + 2x = x(x + 2)$$

Lalu, ganti $x$ dengan $(u^2 - 1)$:

$$= (u^2 - 1)(u^2 - 1 + 2)$$

$$= (u^2 - 1)(u^2 + 1)$$

Ingat sifat selisih kuadrat $(a-b)(a+b) = a^2 - b^2$, maka pembilangnya menjadi:

$$= u^4 - 1$$

Sekarang, substitusikan kembali ke integral awal:

$$\int \frac{u^4 - 1}{u} \cdot (2u \, du)$$

Variabel $u$ di pembilang dan penyebut bisa saling dicoret, sehingga pecahannya hilang:

$$\int (u^4 - 1) \cdot 2 \, du$$

$$2 \int (u^4 - 1) \, du$$

Integralkan:

$$2 \left( \frac{1}{5}u^5 - u \right) + C$$

Kembalikan nilai $u$ ke bentuk awal:

$$2 \left( \frac{1}{5}(\sqrt{x+1})^5 - \sqrt{x+1} \right) + C$$

$$\frac{2}{5}(x+1)^{5/2} - 2(x+1)^{1/2} + C$$

---

### **Pengantar: Kapan Substitusi Akar Berlaku?**

Dari dua contoh di atas, metode memisalkan seluruh akar ini sangat ampuh selama bentuk di dalam akar adalah fungsi linear (pangkat 1), seperti $ax+b$.

Namun, bagaimana jika di dalam akar terdapat bentuk kuadrat, misalnya $\sqrt{4 - x^2}$ atau $\sqrt{x^2 + 9}$?

Jika kita memaksakan cara yang sama ($u^2 = 4 - x^2$), saat diturunkan akan muncul variabel $x$ tambahan di ruas kanan ($2u \, du = -2x \, dx$). Hal ini justru akan menambah kerumitan.

Untuk mengatasi bentuk akar yang mengandung kuadrat (penjumlahan atau pengurangan), kita memerlukan metode penyelesaian yang berbeda, yaitu **Substitusi Trigonometri**. Kita akan memanfaatkan identitas trigonometri dasar (seperti $\sin^2 t + \cos^2 t = 1$ atau $\tan^2 t + 1 = \sec^2 t$) untuk 'memecahkan' bentuk akar tersebut. Materi ini akan kita bahas pada latihan soal berikutnya.

Semangat belajarnya! Jika ada bagian yang masih membingungkan, silakan ditanyakan.

---