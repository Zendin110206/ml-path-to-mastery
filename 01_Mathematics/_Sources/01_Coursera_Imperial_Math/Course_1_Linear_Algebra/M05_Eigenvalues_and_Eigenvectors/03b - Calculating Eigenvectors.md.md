Oke, bagian mencari **Eigenvector** ini memang sering bikin bingung karena tiba-tiba muncul huruf $t$ (parameter) dan solusi yang kelihatan aneh.

Mari kita bedah pelan-pelan pakai contoh konkret dari video tadi (Vertical Scaling 2x).

---

### Misi Kita: Cari Pasangan Vektor

Kita sudah tahu:

- **Matriks:** $A = \begin{bmatrix} 1 & 0 \\ 0 & 2 \end{bmatrix}$ (Matriks Diagonal Scaling).
    
- **Eigenvalue ($\lambda$):** Kita sudah nemu dua nilai, yaitu $\lambda_1 = 1$ dan $\lambda_2 = 2$.
    

Sekarang misinya: **"Siapa sih vektor pasangan untuk masing-masing nilai itu?"**

---

### KASUS 1: Untuk Eigenvalue $\lambda = 1$

Kita masukkan $\lambda = 1$ ke dalam rumus sakti:

$$(A - \lambda I) \mathbf{x} = 0$$

1. **Kurangi Matriks dengan 1:**
    
    $$\begin{bmatrix} 1-1 & 0 \\ 0 & 2-1 \end{bmatrix} \begin{bmatrix} x_1 \\ x_2 \end{bmatrix} = \begin{bmatrix} 0 \\ 0 \end{bmatrix}$$
    
    $$\begin{bmatrix} 0 & 0 \\ 0 & 1 \end{bmatrix} \begin{bmatrix} x_1 \\ x_2 \end{bmatrix} = \begin{bmatrix} 0 \\ 0 \end{bmatrix}$$
    
2. Terjemahkan ke Persamaan Biasa:
    
    Ingat perkalian baris kali kolom:
    
    - Baris 1: $(0 \cdot x_1) + (0 \cdot x_2) = 0 \rightarrow 0 = 0$. (Gak guna, ini cuma bilang "benar").
        
    - Baris 2: $(0 \cdot x_1) + (1 \cdot x_2) = 0 \rightarrow \mathbf{x_2 = 0}$.
        
3. **Analisis Hasilnya:**
    
    - Kita dapat fakta keras: **$x_2$ WAJIB NOL.**
        
    - Tapi kita **TIDAK DAPAT APA-APA** soal $x_1$. Persamaan Baris 1 hilang jadi nol.
        
    
    Artinya apa?
    
    Artinya $x_1$ itu BEBAS (Free Variable). Boleh angka berapa aja!
    
    - Boleh $x_1 = 5$ (Vektornya $[5, 0]$).
        
    - Boleh $x_1 = 100$ (Vektornya $[100, 0]$).
        
    - Boleh $x_1 = -3$ (Vektornya $[-3, 0]$).
        
    
    Semua vektor itu valid karena mereka semua ada di **Sumbu Horizontal**.
    
4. Cara Menulis Solusi Umum (Munculnya si $t$):
    
    Karena $x_1$ boleh berapa aja, kita ganti angkanya pakai huruf parameter, misalnya $t$.
    
    $$\mathbf{v}_1 = \begin{bmatrix} t \\ 0 \end{bmatrix} = t \begin{bmatrix} 1 \\ 0 \end{bmatrix}$$
    
    Biasanya kita ambil contoh paling gampang ($t=1$), jadi Eigenvector-nya adalah $\begin{bmatrix} 1 \\ 0 \end{bmatrix}$.
    

---

### KASUS 2: Untuk Eigenvalue $\lambda = 2$

Sekarang kita masukkan $\lambda = 2$.

1. **Kurangi Matriks dengan 2:**
    
    $$\begin{bmatrix} 1-2 & 0 \\ 0 & 2-2 \end{bmatrix} \begin{bmatrix} x_1 \\ x_2 \end{bmatrix} = \begin{bmatrix} 0 \\ 0 \end{bmatrix}$$
    
    $$\begin{bmatrix} -1 & 0 \\ 0 & 0 \end{bmatrix} \begin{bmatrix} x_1 \\ x_2 \end{bmatrix} = \begin{bmatrix} 0 \\ 0 \end{bmatrix}$$
    
2. **Terjemahkan ke Persamaan:**
    
    - Baris 1: $(-1 \cdot x_1) + (0 \cdot x_2) = 0 \rightarrow -x_1 = 0 \rightarrow \mathbf{x_1 = 0}$.
        
    - Baris 2: $(0 \cdot x_1) + (0 \cdot x_2) = 0 \rightarrow 0 = 0$. (Gak guna).
        
3. **Analisis Hasilnya:**
    
    - Fakta keras: **$x_1$ WAJIB NOL.**
        
    - Fakta $x_2$: Gak ada aturan. Bebas.
        
    
    **Artinya:** Vektor ini boleh punya tinggi berapa aja ($x_2$), asalkan dia gak punya lebar ($x_1=0$). Ini ciri khas **Sumbu Vertikal**.
    
4. Tulis Solusi:
    
    Kita misalkan $x_2 = t$.
    
    $$\mathbf{v}_2 = \begin{bmatrix} 0 \\ t \end{bmatrix} = t \begin{bmatrix} 0 \\ 1 \end{bmatrix}$$
    
    Ambil contoh simpel ($t=1$), Eigenvector-nya adalah $\begin{bmatrix} 0 \\ 1 \end{bmatrix}$.
    

---

### Kesimpulan

- **Eigenvector $\lambda=1$:** $\begin{bmatrix} 1 \\ 0 \end{bmatrix}$ (Sumbu X / Horizontal).
    
- **Eigenvector $\lambda=2$:** $\begin{bmatrix} 0 \\ 1 \end{bmatrix}$ (Sumbu Y / Vertikal).
    

Gimana? Lebih masuk akal kenapa ada yang jadi nol dan ada yang jadi huruf $t$ (bebas)? Itu karena matriksnya "kehilangan informasi" di salah satu barisnya (determinannya nol), jadi ada variabel yang bebas nilai.

--- 

> Pertanyaan dari aku : 
> nah berarti alau misalnya ada sebuah tranformasi kek gitu berarti dia punyaaaa eigenvektorrr di segalaaa sumbu x dan y yang eigen valuesnyaaa adalah 1 dan 2 gituu? 
>
> jadi misalkan aku punya vektor awal awalmnyaa adalah diaaa itu ada 3 lah di 2 dimensi, mislanya ada yang memang kek miring ke kanna atas dan ada yang di sumbu x dan y lurus gituu, nah kalau dikenai tranformasi diagonal miring tadi berarti dari itungan kita, tahu bahwa yang vektor miring itu bukannn eigen vektor dan yang eigen vektor ada sumbu x dan sumbu y gituu??


Jawaban: 
**100% BENAR! KAMU SUDAH PAHAM KONSEPINTYA!** 💯🔥

Analisis kamu soal "3 vektor" itu tepat banget. Mari kita validasi satu per satu biar makin mantap.

---

### 1. Soal "Segala Sumbu X dan Y"

Kamu bilang: _"Berarti dia punya eigenvector di segala sumbu x dan y?"_

Jawabannya: IYA.

Ingat konsep Span tadi?

- Ketika kita nemu jawaban $\begin{bmatrix} 1 \\ 0 \end{bmatrix}$, itu cuma **perwakilan**.
    
- Sebenarnya, **SEMUA VEKTOR** yang nempel di Sumbu X (misal $\begin{bmatrix} 5 \\ 0 \end{bmatrix}$, $\begin{bmatrix} -100 \\ 0 \end{bmatrix}$, dll) adalah Eigenvector dengan $\lambda=1$.
    
- Begitu juga dengan Sumbu Y. Semua vektor yang vertikal murni adalah Eigenvector dengan $\lambda=2$.
    

Jadi bayangkan **Garis Sumbu X** dan **Garis Sumbu Y** itu adalah "Jalur Keramat". Siapapun yang nongkrong di situ, arahnya aman.

---

### 2. Soal Vektor Miring (Yang Ketahuan Belangnya)

Kamu bilang: _"Kalau ada vektor miring ke kanan atas, berarti dia BUKAN eigenvector?"_

Jawabannya: TEPAT SEKALI!

Mari kita buktikan pakai hitungan sederhana.

Misalkan kita punya Vektor Miring $\mathbf{v} = \begin{bmatrix} 1 \\ 1 \end{bmatrix}$ (Serong 45 derajat).

Kita tabrakkan dengan matriks tadi $A = \begin{bmatrix} 1 & 0 \\ 0 & 2 \end{bmatrix}$.

$$\begin{bmatrix} 1 & 0 \\ 0 & 2 \end{bmatrix} \begin{bmatrix} 1 \\ 1 \end{bmatrix} = \begin{bmatrix} (1\cdot1 + 0\cdot1) \\ (0\cdot1 + 2\cdot1) \end{bmatrix} = \begin{bmatrix} 1 \\ 2 \end{bmatrix}$$

**Lihat hasilnya:**

- **Awal:** $\begin{bmatrix} 1 \\ 1 \end{bmatrix}$ (Miring santai).
    
- **Akhir:** $\begin{bmatrix} 1 \\ 2 \end{bmatrix}$ (Jadi curam/lebih tegak).
    

Karena arahnya berubah (dari miring 45 derajat jadi lebih curam), maka vektor miring ini **DIHUKUM DISKUALIFIKASI**. Dia **Bukan Eigenvector**.

---

### Kesimpulan Simulasi Kamu

Jadi skenario 3 vektor kamu tadi hasilnya begini:

1. **Vektor di Sumbu X:**
    
    - Arah tetap (Horizontal).
        
    - Panjang tetap (dikali 1).
        
    - **Status: EIGENVECTOR ($\lambda=1$).**
        
2. **Vektor di Sumbu Y:**
    
    - Arah tetap (Vertikal).
        
    - Panjang berubah (dikali 2).
        
    - **Status: EIGENVECTOR ($\lambda=2$).**
        
3. **Vektor Miring:**
    
    - Arah BERUBAH (jadi makin curam karena ditarik ke atas tapi tidak ditarik ke samping).
        
    - **Status: BUKAN EIGENVECTOR.**
        

Selamat! Kamu sudah lulus intuisi Eigenvector. 🎉



