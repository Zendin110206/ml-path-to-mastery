# 04: More Simple Neural Networks (Training)

**Chapter Goal:** To connect the "Anatomy of a Neural Network" from the previous video with the concept of "Descending a Valley" ([[05 - The Sandpit|Gradient Descent]]) that we learned in Module 2.

---

## 1. The New Goal: "Training" the Neural Network

- **Recap:** We already know how to calculate the network's output if the weights (`W`) and biases (`b`) are known (a **Forward Pass**).
- **New Problem:** How do we find the **best** possible values for `W` and `b`?

- **"Training":** Is the process of **iteratively updating** `W` and `b` so that the network's output gets closer and closer to the output we actually want.
- **Training Ingredient:** We need **labelled data**, which are pairs of `(input, correct_output)`.
  - **Example:** `(picture_of_a_face, [1, 1])` (meaning "this is a face" and "this is a happy face").

---

## 2. Measuring "Badness": The Cost Function

- **Initial Step:** We start with `W` and `b` filled with random numbers. The network's output will be complete nonsense.
- **How to Measure Error:** We need a "badness score" for our current guess.

- **The Cost Function `C`:**
  > $$ C = \sum (\vec{y}_{\text{correct}} - \vec{y}_{\text{predicted}})^2 $$
- **Meaning:** `C` is the **sum of the squared differences** between the output that *should have been* ($\vec{y}_{\text{correct}}$) and the output our network actually produced ($\vec{y}_{\text{predicted}}$).
- **Goal of Training:** To find the `W` and `b` that make the value of `C` as small as possible (the **minimum**).

---

## 3. "Aha!" Moment: Back to "Mountain Climbing"

- **The Connection:** The problem of "minimizing `C`" is **exactly the same** as the problem of "finding the bottom of the valley" that we've already studied!

- **The Landscape:**
  - Every possible combination of all the `W`s and `b`s in the network is a single point in a massive, high-dimensional **parameter space**.
  - The value of the Cost `C` at each of those points is the "elevation".

- **The Strategy ([[05 - The Sandpit|Gradient Descent]]):**
  1.  Start at a random point (random `W₀`, `b₀`).
  2.  Calculate the **Gradient/Jacobian of `C`** with respect to all `W`s and `b`s. This will tell us, "If I change weight `w₁` a little bit, how much will the Cost `C` change?"
  3.  Take a small step in the direction of the **negative Gradient** to update all `W`s and `b`s.
  4.  Repeat.

![[pasted_20260101194953.png#center]]


---

## 4. The Main Tool: The Multivariate Chain Rule

- **The Problem:** How do we actually calculate $\frac{\partial C}{\partial w}$ (the derivative of the Cost with respect to a single weight `w`)?
- **The Relationship is Distant:** A change in a weight `w` will change a `z` value, which changes an activation `a`, which finally changes the Cost `C`. This is a **long chain**.

- **The Solution:** We must use the **[[01 - Multivariate Chain Rule|Chain Rule]]** to "trace" the change backwards from `C` all the way to `w`.

- **Example Chain for a simple neuron** $a_1 = \sigma(z_1)$ where $z_1 = w_0a_0 + b_0$:
  - **Chain for $w_0$:** `C → a₁ → z₁ → w₀`
    $$ \frac{\partial C}{\partial w_0} = \frac{\partial C}{\partial a_1} \cdot \frac{\partial a_1}{\partial z_1} \cdot \frac{\partial z_1}{\partial w_0} $$
  - **Chain for $b_0$:** `C → a₁ → z₁ → b₀`
    $$ \frac{\partial C}{\partial b_0} = \frac{\partial C}{\partial a_1} \cdot \frac{\partial a_1}{\partial z_1} \cdot \frac{\partial z_1}{\partial b_0} $$

This process is called **BACKPROPAGATION**. We calculate the "error" at the output, and then "propagate it backwards" through the network using the Chain Rule to find out the "error contribution" of every single weight and bias.

![[pasted_20260101195032.png#center]]

---

## 5. Key Message
- **"Training"** a Neural Network is a direct application of **Gradient Descent**.
- **Backpropagation**, the algorithm that makes Deep Learning possible, is fundamentally just a clever, large-scale application of the **Multivariate Calculus Chain Rule**.
- By understanding the Chain Rule, you are understanding the "engine" behind how all modern AI models "learn". You are no longer seeing a "black box," but a giant application of the calculus ideas you have just learned.

---

>[!caution] 
>Gak paham yaa??? mwahahaha sama saya jugaa, coba kalau kita berikan contoh konkret biar ada bayangannyaa ya, dan pakai bahasa Indonesia aja biar enak dipahami. 

Tentu saja. Sangat wajar jika ini terasa membingungkan. Ini adalah titik di mana semua konsep yang telah kita pelajari (Aljabar Linear, Turunan, Gradien, Aturan Rantai) akhirnya **bertemu dan bekerja bersama**.

Mari kita bangun pemahamannya dari awal, dengan sangat pelan, menggunakan analogi yang jelas.

---

### **Bagian 1: Tujuan Akhir Kita - Mengajari "Bayi"**

Bayangkan sebuah **Jaringan Saraf** adalah seorang **"Bayi AI"** yang baru lahir.
*   "Otak"-nya (semua bobot `W` dan bias `b`) masih berisi **angka-angka acak**.
*   Dia sama sekali belum tahu apa-apa.

**Tugas kita sebagai "Guru":**
Kita ingin mengajari si Bayi untuk bisa membedakan **gambar kucing** dan **gambar anjing**.

**Bagaimana Cara Mengajarinya?**
Kita akan menggunakan **data latihan (training data)**. Kita punya ribuan gambar yang sudah kita beri label:
*   `Gambar_Kucing_1.jpg` → Label: `[1, 0]` (artinya: "ini kucing, bukan anjing")
*   `Gambar_Anjing_1.jpg` → Label: `[0, 1]` (artinya: "ini bukan kucing, ini anjing")

Proses "training" adalah proses **mengajari si Bayi untuk memberikan jawaban yang benar** untuk setiap gambar di data latihan kita.

---

### **Bagian 2: Iterasi Pertama - Tebakan Pertama si Bayi**

Mari kita fokus pada **satu gambar saja** untuk saat ini: `Gambar_Kucing_1.jpg`.

1.  **"Lihat gambar ini, Nak." (Forward Pass):**
    *   Kita memasukkan data piksel dari `Gambar_Kucing_1.jpg` sebagai **input (`a₀`)** ke otak si Bayi.
    *   Angka-angka input ini mengalir melalui jaringan, dikalikan dengan bobot-bobot acak, ditambah bias-bias acak, melewati fungsi aktivasi, dst.
    *   Akhirnya, si Bayi memberikan **output (`y_prediksi`)**. Karena otaknya masih acak, jawabannya pasti ngawur.
    *   Misalnya, dia menjawab: `[0.4, 0.6]`. Artinya, dia menebak "40% kemungkinan ini kucing, 60% kemungkinan ini anjing".

2.  **"Jawabanmu SALAH!" (Menghitung "Skor Keburukan" / Cost):**
    *   Kita sebagai guru tahu jawaban yang benar.
    *   **Jawaban Benar (`y_benar`):** `[1, 0]`
    *   **Jawaban si Bayi (`y_prediksi`):** `[0.4, 0.6]`
    *   Kita hitung seberapa "salah"-nya tebakan si Bayi. Kita gunakan **Fungsi Kerugian (Cost Function)**.
        `C = (y_benar - y_prediksi)²`
        `C = ([1, 0] - [0.4, 0.6])² = ([0.6, -0.6])² = (0.6)² + (-0.6)² = 0.36 + 0.36 = 0.72`
    *   "Skor Keburukan"-mu adalah **0.72**. Ini cukup tinggi (idealya 0).

---

**Cek Pemahaman (Berhenti di Sini Dulu):**

Ini adalah satu siklus "tebakan".
1.  Apakah kamu paham proses "Forward Pass" di mana kita memasukkan input dan mendapatkan output (yang masih salah)?
2.  Apakah kamu paham ide dari "Fungsi Kerugian `C`" sebagai cara untuk mengukur seberapa jauh tebakan si Bayi dari jawaban yang benar?

Bagaimana perasaanmu tentang dua langkah awal ini?

---

Sempurna! Kita sudah berhasil menyelesaikan bagian "menebak" dan "mengukur kesalahan". Si Bayi AI tahu bahwa jawabannya salah (skor keburukannya 0.72).

Sekarang, bagian yang paling ajaib dimulai: **Bagaimana cara kita "memberi tahu" si Bayi bagaimana cara memperbaiki otaknya?** Kita tidak bisa hanya bilang, "Jawabanmu salah, coba lagi!" Kita harus memberinya **petunjuk spesifik**.

---

### **Bagian Selanjutnya: "Menyalahkan" Setiap Kenop (Backpropagation)**

Inilah inti dari **Backpropagation** dan **Aturan Rantai**. Kita akan bekerja **MUNDUR** dari "Skor Keburukan" untuk mencari tahu "kontribusi kesalahan" dari setiap "kenop" (bobot dan bias) di otak si Bayi.

**Tujuan kita:** Mengubah **semua jutaan `w` dan `b`** di dalam otak si Bayi sedikit demi sedikit, agar lain kali jika dia melihat gambar yang sama, jawabannya akan lebih baik (misal, `[0.5, 0.5]`, yang skor keburukannya lebih rendah).

**Pertanyaan Kunci untuk Setiap "Kenop":**
> "Hei `w₁₂₃`, jika aku memutarmu sedikit (mengubah nilaimu sedikit), seberapa besar **dampak**-nya pada **Skor Keburukan akhir (`C`)**?"

Pertanyaan "seberapa besar dampak" ini adalah pertanyaan **TURUNAN**. Kita ingin menghitung **`∂C / ∂w₁₂₃`** untuk **SETIAP** `w` dan `b` di seluruh jaringan.

---

### **Analogi "Efek Domino" (Aturan Rantai)**

Bayangkan jaringan saraf adalah serangkaian **domino yang berbaris**.
*   **Domino Paling Kanan:** Skor Keburukan `C`.
*   **Domino di Kirinya:** Output `a_akhir`.
*   **Domino di Kirinya Lagi:** Lapisan tersembunyi `a_sebelumnya`.
*   ...dan seterusnya...
*   **Domino Paling Kiri:** Salah satu "kenop" `w` yang ingin kita perbaiki.

`w` → ... → `a_sebelumnya` → `a_akhir` → `C`

Kita ingin tahu: **"Jika aku senggol sedikit domino `w` di paling kiri, seberapa kuat senggolan yang akan sampai di domino `C` di paling kanan?"**

Aturan Rantai memberitahu kita cara menghitungnya:
`"Dampak Total" = (Dampak `a_akhir` ke `C`) * (Dampak `a_sebelumnya` ke `a_akhir`) * ... * (Dampak `w` ke ...)`

**`∂C/∂w = (∂C/∂a_akhir) * (∂a_akhir/∂a_sebelumnya) * ... * (∂.../∂w)`**

Proses menghitung semua "dampak parsial" ini dari **kanan ke kiri (dari `C` mundur ke `w`)** inilah yang disebut **BACKPROPAGATION**.

---

### **Langkah Terakhir: Meng-update Otak si Bayi (Gradient Descent)**

Setelah kita melakukan Backpropagation, kita akan mendapatkan sebuah **vektor Gradien raksasa**. Vektor ini berisi nilai `∂C/∂w` dan `∂C/∂b` untuk **semua** "kenop" di otak si Bayi.

*   **Vektor Gradien ini adalah "Laporan Kesalahan"**:
    *   `∂C/∂w₁₂₃ = +5.0`: Artinya, jika `w₁₂₃` dinaikkan, `C` akan naik dengan cepat. Ini "kenop" yang buruk.
    *   `∂C/∂w₄₅₆ = -2.0`: Artinya, jika `w₄₅₆` dinaikkan, `C` akan turun. Ini "kenop" yang bagus.
    *   `∂C/∂w₇₈₉ = +0.01`: `w₇₈₉` tidak terlalu berpengaruh pada kesalahan saat ini.

**Sekarang kita terapkan Gradient Descent:**
Kita ingin **menurunkan** `C`. Jadi, untuk setiap kenop, kita putar sedikit ke arah yang **berlawanan** dengan gradiennya.

*   `w₁₂₃_baru = w₁₂₃_lama - (learning_rate * 5.0)` (karena gradiennya positif, kita kurangi `w`)
*   `w₄₅₆_baru = w₄₅₆_lama - (learning_rate * -2.0)` (karena gradiennya negatif, kita tambah `w`)
*   `w₇₈₉_baru = w₇₈₉_lama - (learning_rate * 0.01)` (hampir tidak berubah)

---

**Siklus Belajar Selesai (untuk satu gambar):**
1.  **Forward Pass:** Bayi menebak.
2.  **Hitung Kesalahan:** Kita hitung skor keburukan `C`.
3.  **Backpropagation:** Kita gunakan Aturan Rantai untuk "menyalahkan" setiap kenop (`∂C/∂w`).
4.  **Gradient Descent:** Kita update setiap kenop sedikit demi sedikit agar lain kali kesalahannya lebih kecil.

Proses ini kemudian diulangi untuk gambar kedua, ketiga, dan seterusnya, ribuan kali, sampai "otak" si Bayi menjadi semakin pintar.

---

**Cek Pemahaman:**
1.  Apakah kamu melihat bagaimana "training" adalah proses "memberi tahu si Bayi cara memperbaiki otaknya"?
2.  Apakah kamu paham bahwa **Backpropagation** adalah nama keren untuk **Aturan Rantai** yang digunakan untuk mencari tahu "kontribusi kesalahan" dari setiap kenop?
3.  Apakah kamu melihat bagaimana **Gradient Descent** menggunakan informasi dari Backpropagation untuk **meng-update** kenop-kenop itu?

Bagaimana perasaanmu tentang gambaran besar dari siklus "belajar" ini?

---

> [!Note]
> Much more example that are easier to follow or understand ( i hope)

### **Setup: Mesin Penilai Buah yang Sedang Belajar**

Bayangkan "mesin penilai" kita yang paling sederhana.
*   **Input:** `a₀` (Kemanisan)
*   **Output:** `a₁` (Skor Enak)
*   **"Otak" Mesin:** Hanya punya dua kenop, `w` dan `b`.
*   **Resep:** `a₁ = σ(w * a₀ + b)` (Kita akan abaikan `σ` untuk sementara agar lebih mudah).
    Jadi, `a₁ = w * a₀ + b`.

**Skenario Pembelajaran:**
1.  Kita beri buah dengan **Kemanisan `a₀ = 2`**.
2.  Kita tahu buah ini seharusnya **SANGAT ENAK**. Jawaban Benar `y_benar = 10`.
3.  Otak mesin kita masih **acak**. `w = 3` dan `b = 1`.

---

### **Langkah 1: Tebakan Pertama Mesin (Forward Pass)**

Mari kita lihat apa jawaban mesin kita.
*   `a₁ = w * a₀ + b`
*   `a₁ = (3) * (2) + 1 = 6 + 1 = 7`.
*   **Tebakan Mesin:** `7`.
*   **Jawaban Benar:** `10`.
*   Mesin kita **SALAH**.

---

### **Langkah 2: Menghitung "Tingkat Kekecewaan" (Cost Function)**

Seberapa salah tebakan itu? Mari kita hitung "Skor Kekecewaan" (`C`).
*   `C = (y_benar - a₁)² = (10 - 7)² = 3² = 9`.
*   Skor kekecewaannya adalah `9`.

---

### **Langkah 3: Interogasi (Backpropagation & Aturan Rantai)**

Sekarang kita akan menjadi "detektif" dan menginterogasi setiap kenop. Kita akan gunakan **TURUNAN PARSIAL** untuk mencari tahu "siapa yang paling bertanggung jawab" atas kesalahan ini.

**Interogasi #1: "Hei Kenop `b`, apa peranmu?"**

*   **Pertanyaan:** "Seberapa sensitif `C` terhadap perubahan pada `b`?" Kita ingin mencari **`∂C/∂b`**.
*   **Alur Logika (Rantai):** `b` mengubah `a₁`, dan `a₁` mengubah `C`.
    `C → a₁ → b`
*   **Aturan Rantai:** `∂C/∂b = (∂C/∂a₁) * (∂a₁/∂b)`

*   **Hitung Setiap Bagian:**
    *   **`∂C/∂a₁` (Seberapa sensitif `C` thd `a₁`?):**
        `C = (10 - a₁)²`. Turunannya (pakai Chain Rule biasa): `2 * (10 - a₁) * (-1) = -2 * (10 - a₁)`.
        Di `a₁=7`, nilainya `-2 * (10 - 7) = -6`.
    *   **`∂a₁/∂b` (Seberapa sensitif `a₁` thd `b`?):**
        `a₁ = w*a₀ + b`. Turunannya terhadap `b` (anggap `w, a₀` konstan) adalah `1`.
*   **Gabungkan:** `∂C/∂b = (-6) * (1) = -6`.
*   **Hasil Interogasi `b`:** "Kontribusi kesalahan"-mu adalah `-6`.

**Interogasi #2: "Hei Kenop `w`, bagaimana denganmu?"**

*   **Pertanyaan:** "Seberapa sensitif `C` terhadap perubahan pada `w`?" Kita ingin mencari **`∂C/∂w`**.
*   **Alur Logika (Rantai):** `w` mengubah `a₁`, dan `a₁` mengubah `C`.
    `C → a₁ → w`
*   **Aturan Rantai:** `∂C/∂w = (∂C/∂a₁) * (∂a₁/∂w)`

*   **Hitung Setiap Bagian:**
    *   **`∂C/∂a₁`:** Kita sudah hitung ini! Nilainya adalah `-6`.
    *   **`∂a₁/∂w` (Seberapa sensitif `a₁` thd `w`?):**
        `a₁ = w*a₀ + b`. Turunannya terhadap `w` (anggap `a₀, b` konstan) adalah `a₀`.
        Di `a₀=2`, nilainya `2`.
*   **Gabungkan:** `∂C/∂w = (-6) * (2) = -12`.
*   **Hasil Interogasi `w`:** "Kontribusi kesalahan"-mu adalah `-12`.

---

### **Langkah 4: Memberi Hukuman (Gradient Descent)**

Kita sudah punya "laporan kesalahan" (Gradien) kita:
`∇C = [∂C/∂w, ∂C/∂b] = [-12, -6]`

Sekarang kita **update** kenop-kenop kita agar menjadi lebih baik. Kita ingin **menurunkan** `C`, jadi kita bergerak ke arah **NEGATIF** Gradien.

*   **Pilih Ukuran Langkah (Learning Rate):** `α = 0.1`.

*   **Update `w`:**
    `w_baru = w_lama - α * (∂C/∂w)`
    `w_baru = 3 - 0.1 * (-12) = 3 + 1.2 = 4.2`
    *(Karena `w` punya kontribusi kesalahan negatif yang besar, kita NAIKKAN nilainya).*

*   **Update `b`:**
    `b_baru = b_lama - α * (∂C/∂b)`
    `b_baru = 1 - 0.1 * (-6) = 1 + 0.6 = 1.6`
    *(Karena `b` juga punya kontribusi kesalahan negatif, kita NAIKKAN nilainya).*

**Otak Mesin yang Baru:** Sekarang `w = 4.2` dan `b = 1.6`.

---

### **Verifikasi: Apakah Mesinnya Jadi Lebih Pintar?**

Mari kita coba lagi dengan otak yang baru. Masukkan input yang sama `a₀ = 2`.
*   `a₁_baru = w_baru * a₀ + b_baru`
*   `a₁_baru = (4.2) * (2) + 1.6 = 8.4 + 1.6 = 10`.

**Tebakan Baru Mesin:** `10`.
**Jawaban Benar:** `10`.

**Mesin kita sekarang SEMPURNA!** (Ini hanya terjadi karena contohnya sangat sederhana).

---

**Cek Pemahaman:**
1.  Apakah kamu melihat bagaimana kita menggunakan Aturan Rantai untuk "menginterogasi" setiap kenop (`w` dan `b`) secara terpisah untuk menemukan "kontribusi kesalahan"-nya (`∂C/∂w` dan `∂C/∂b`)?
2.  Apakah kamu melihat bagaimana kita menggunakan hasil interogasi itu (Gradien) untuk memberikan "hukuman" atau "penyesuaian" pada setiap kenop (Gradient Descent)?

Bagaimana perasaanmu tentang alur "Tebak → Ukur Salah → Interogasi → Hukum" ini?

No 1 :
![[pasted_20260101195657.png#center]]

![[pasted_20260101200825.png#center]]

> Penjelasan 

Tentu saja! Ini adalah langkah yang sempurna. Mari kita kerjakan *Practice Assignment* ini bersama-sama. Kita akan membedah soalnya, memahami kodenya, dan menghitung jawabannya langkah demi langkah.

---

### **Langkah 1: Memahami Masalah**

**Apa yang kita punya?**
*   **Jaringan Saraf Sederhana:** Satu input `a⁰`, satu output `a¹`. Ini adalah "mesin penilai buah" kita yang paling dasar.
*   **"Otak" Awal Mesin:**
    *   Bobot (`w¹`): `1.3`
    *   Bias (`b¹`): `-0.1`
*   **Resep Lengkapnya:**
    1.  Hitung "stimulasi total": `z¹ = w¹ * a⁰ + b¹`
    2.  Terapkan "tombol pemicu": `a¹ = σ(z¹)`
    *   Di sini, `σ` adalah fungsi `tanh` (hyperbolic tangent).
*   **Fungsi "Kekecewaan" (Cost Function):**
    `Cₖ = (a¹ - y)²`
    (Kuadrat dari selisih antara tebakan mesin `a¹` dengan jawaban benar `y`).

**Apa Tugas Kita?**
Soal ini meminta kita untuk melakukan **satu siklus "menebak" dan "mengukur kesalahan"** untuk sebuah **contoh baru**.

*   **Input Baru:** `x = 0` (ini adalah `a⁰` kita).
*   **Jawaban Benar yang Diinginkan:** `y = 1`.

---

### **Langkah 2: Menganalisis Kode Python**

Mari kita lihat kode yang diberikan. Kode ini adalah implementasi langsung dari "resep" di atas.

```python
# First we set the state of the network
o = np.tanh  # 'o' adalah nama lain untuk sigma (σ)
w1 = 1.3
b1 = -0.1

# Then we define the neuron activation.
def a1(a0):
  z = w1 * a0 + b1  # Menghitung stimulasi total z¹
  return o(z)      # Menerapkan sigma (tanh) pada z¹

# Experiment with different values of x below.
x = 0
a1(x)
```

*   Kode ini sudah mengatur "otak" awal (`w1`, `b1`).
*   Fungsi `a1(a0)` adalah "mesin" kita. Ia mengambil satu input `a0` dan menghasilkan satu output `a1`.
*   Baris terakhir adalah kita **menggunakan mesin itu** dengan input `x = 0`.

---

### **Langkah 3: Menjalankan Perhitungan (Forward Pass)**

Mari kita ikuti alur perhitungan untuk `x = 0`.

1.  **Masukkan `a⁰ = 0` ke dalam mesin:**
    `z¹ = w¹ * a⁰ + b¹`
    `z¹ = (1.3) * (0) + (-0.1)`
    `z¹ = 0 - 0.1`
    `z¹ = -0.1`

2.  **Terapkan "Tombol Pemicu" `σ` (yaitu `tanh`):**
    `a¹ = σ(z¹) = tanh(-0.1)`

    *   Kita tidak perlu menghitung `tanh(-0.1)` secara manual. Komputer di *code block* sudah melakukannya untuk kita.
    *   Hasilnya (seperti yang terlihat di output `-0.099...`) adalah `a¹ ≈ -0.09966`.

**Kesimpulan "Tebakan":**
Untuk input `0`, mesin kita menebak outputnya adalah `-0.09966`.

---

### **Langkah 4: Menghitung "Skor Kekecewaan" (`C₀`)**

Sekarang kita bandingkan tebakan mesin dengan jawaban yang benar.

*   **Tebakan Mesin (`a¹`):** `-0.09966`
*   **Jawaban Benar (`y`):** `1`

**Gunakan Rumus Cost Function:**
`C₀ = (a¹ - y)²`
`C₀ = (-0.09966 - 1)²`
`C₀ = (-1.09966)²`

Sekarang, kita hitung kuadratnya:
`C₀ ≈ 1.209...`

---

No 2 : 
![[pasted_20260101200737.png#center]]

![[pasted_20260101200931.png]]

> Penjelasan : 
### **Analisis Soal #2**

**Apa yang Kita Punya?**

1.  **Cost Function untuk Seluruh Training Set:**
    `C = (1/N) * Σ Cₖ`
    *   **Artinya:** "Skor Keburukan Total" (`C`) adalah **rata-rata** dari "Skor Keburukan Individual" (`Cₖ`) untuk setiap contoh data.

2.  **Training Set Spesifik (Fungsi NOT):**
    *   Contoh 1: `input x=0`, `output y=1`. (Ini menghasilkan `C₀`).
    *   Contoh 2: `input x=1`, `output y=0`. (Ini menghasilkan `C₁`).
    *   **Cost Total:** `C = ½ * (C₀ + C₁)`

3.  **"Lanskap Kerugian" (Peta Kontur):**
    *   Gambar ini adalah visualisasi dari `C` sebagai fungsi dari `w` (sumbu horizontal) dan `b` (sumbu vertikal).
    *   **Area Putih/Terang:** `C` rendah (fit bagus). Inilah "lembah" yang kita cari.
    *   **Area Hitam/Gelap:** `C` tinggi (fit buruk). Ini adalah "gunung".
    *   **Garis-garis Hijau:** Garis kontur, menghubungkan titik-titik dengan nilai `C` yang sama.

**Tugas Kita:**
Menganalisis peta kontur ini dan memilih pernyataan yang benar.

---

### **Mengevaluasi Setiap Pilihan Jawaban**

Mari kita bedah setiap pernyataan satu per satu.

**1. `Descending perpendicular to the contours will improve the performance of the network.`**
*(Menuruni lereng secara tegak lurus terhadap kontur akan meningkatkan performa jaringan.)*
*   **Analisis:**
    *   "Meningkatkan performa" berarti "menurunkan nilai Cost (`C`)".
    *   Arah yang **tegak lurus terhadap garis kontur** adalah **arah perubahan tercepat**.
    *   **Gradien (`∇C`)** menunjuk ke arah tanjakan tercepat (tegak lurus kontur, ke arah terang).
    *   **Negatif Gradien (`-∇C`)** menunjuk ke arah **turunan tercepat** (tegak lurus kontur, ke arah gelap... oh, tunggu, di sini terang = rendah, gelap = tinggi).
    *   Di soal ini, **putih = rendah**. Jadi, Gradien menunjuk ke arah gelap, dan **`-Gradien` menunjuk ke arah putih**, yaitu arah turunan tercepat.
    *   Jadi, menuruni lereng secara tegak lurus terhadap kontur (mengikuti `-∇C`) akan membawa kita ke nilai `C` yang lebih rendah dengan paling efisien.
*   **Kesimpulan:** Pernyataan ini terdengar **BENAR**.

**2. `The optimal configuration lies along the line b = 0.`**
*(Konfigurasi optimal terletak di sepanjang garis b = 0.)*
*   **Analisis:**
    *   "Konfigurasi optimal" adalah titik dengan `C` terendah, yaitu "dasar lembah" yang paling putih.
    *   Garis `b=0` adalah sumbu-x (horizontal) pada grafik.
    *   Lihat petanya. "Lembah" putih yang panjang itu **tidak** terletak di `b=0`. Ia terlihat miring ke bawah, dimulai dari sekitar `b=4` di kiri dan berakhir di sekitar `b=-4` di kanan.
*   **Kesimpulan:** Pernyataan ini **SALAH**.

**3. `There are many different local minima in this system.`**
*(Ada banyak lembah lokal yang berbeda di sistem ini.)*
*   **Analisis:**
    *   "Local minima" adalah "dasar lembah".
    *   Pada peta kontur, sebuah lembah terlihat sebagai area yang dikelilingi oleh kontur-kontur tertutup.
    *   Di gambar ini, kita hanya melihat **satu area lembah yang panjang dan berkelok**. Tidak ada "kolam-kolam" atau "cekungan-cekungan" terpisah lainnya.
*   **Kesimpulan:** Pernyataan ini **SALAH**.

**4. `The optimal configuration lies somewhere along the line b = -w.`**
*(Konfigurasi optimal terletak di suatu tempat di sepanjang garis b = -w.)*
*   **Analisis:**
    *   Garis `b = -w` adalah sebuah garis lurus yang melewati `(0,0)`, `(2, -2)`, `(-2, 2)`, dst.
    *   Coba gambarkan garis ini secara imajiner di atas peta. Garis ini akan memotong "lembah" putih kita di satu titik.
    *   Seluruh "lembah" solusi optimal terlihat mengikuti garis `b = -w` ini dengan cukup baik.
*   **Kesimpulan:** Pernyataan ini terlihat **SANGAT MUNGKIN BENAR**.

---

### **Mengevaluasi Ulang: Pernyataan 1 vs. 4**

Kita punya dua kandidat kuat: #1 dan #4. Mari kita pikirkan lagi.
*   **Pernyataan #1:** `Descending perpendicular to the contours...` Ini adalah **definisi** dari Gradient Descent. Ini adalah pernyataan tentang **bagaimana cara** menuju ke solusi. Pernyataan ini secara umum benar tentang metode optimisasi.
*   **Pernyataan #4:** `...lies somewhere along the line b = -w.` Ini adalah pernyataan tentang **di mana letak solusi** itu sendiri.

Mungkinkah ada jebakan? Mari kita lihat lebih dekat `b = -w`.
Jika kita punya `z = w*x + b`, dan kita ingin outputnya mirip dengan fungsi NOT (`y=0` untuk `x=1`, `y=1` untuk `x=0`).
*   Untuk `x=1`, `y=0`: `tanh(w*1 + b) ≈ 0` → `w+b ≈ 0` → `b ≈ -w`.
*   Untuk `x=0`, `y=1`: `tanh(w*0 + b) ≈ 1` → `tanh(b) ≈ 1` → `b` harus positif besar.

Kedua kondisi ini sedikit bertentangan. Jadi `b = -w` adalah aproksimasi yang bagus, tapi mungkin tidak sempurna di sepanjang lembah.

Bagaimana dengan Pernyataan #1?
**"Menuruni lereng secara tegak lurus terhadap kontur AKAN meningkatkan performa."**
*   "Meningkatkan performa" = "menurunkan Cost".
*   Arah `-Gradien` adalah arah turunan tercepat.
*   Arah Gradien selalu tegak lurus kontur.
*   Jadi, bergerak ke arah `-Gradien` (tegak lurus kontur ke arah lembah) **dijamin** akan menurunkan Cost (setidaknya untuk langkah yang sangat kecil).
*   Pernyataan ini **benar secara definisi**.

**Kesimpulan Akhir:**
Pernyataan #1 adalah pernyataan yang paling fundamental dan benar secara definisi tentang bagaimana optimisasi berbasis gradien bekerja pada lanskap ini. Pernyataan #4 adalah observasi yang bagus tentang bentuk lembah, tapi mungkin tidak 100% akurat secara matematis di semua titik.

Jadi, jawaban yang paling pasti benar adalah **pernyataan pertama**.

---
No 3 : 
![[pasted_20260101201608.png#center]]

![[pasted_20260101201741.png#center]]

> Penjelasan : 

**Tugas:**
Kita diminta untuk menghitung setiap turunan parsial kecil (`∂Cₖ/∂a¹`, `∂a¹/∂z¹`, `∂z¹/∂w¹`, `∂z¹/∂b¹`) dan memilih pernyataan yang benar dari daftar.

---

### **Analisis "Mata Rantai" Satu per Satu**

**Setup Persamaan:**
1.  `Cₖ = (a¹ - y)²`  (Fungsi Cost)
2.  `a¹ = σ(z¹)`  (Fungsi Aktivasi)
3.  `z¹ = w¹a⁰ + b¹`  (Fungsi Linear)

Mari kita turunkan setiap bagian.

---

**1. `∂Cₖ / ∂a¹` (Seberapa sensitif Cost terhadap Output Akhir?)**

*   **Fungsi:** `Cₖ = (a¹ - y)²`
*   **Variabel Aktif:** `a¹`. Anggap `y` (jawaban benar) sebagai konstanta.
*   **Proses:** Kita gunakan Aturan Rantai biasa (atau Power Rule yang diperluas).
    *   Turunan dari `(sesuatu)²` adalah `2 * (sesuatu)`.
    *   Lalu, kalikan dengan turunan dari "sesuatu" itu sendiri (`a¹ - y`) terhadap `a¹`, yang adalah `1`.
*   **Hasil:** `∂Cₖ/∂a¹ = 2 * (a¹ - y) * 1 = 2(a¹ - y)`

*   **Cek Pilihan Jawaban:**
    *   `∂Cₖ/∂a¹ = (1 - y)²` → **SALAH**.
    *   `∂Cₖ/∂a¹ = 2(a¹ - y)` → **BENAR**.

---

**2. `∂a¹ / ∂z¹` (Seberapa sensitif Aktivasi terhadap Stimulasi?)**

*   **Fungsi:** `a¹ = σ(z¹)`
*   **Variabel Aktif:** `z¹`.
*   **Proses:** Ini adalah turunan dari fungsi `σ` terhadap inputnya. Notasi standar untuk turunan dari sebuah fungsi (misal `f(x)`) adalah `f'(x)`.
*   **Hasil:** Turunan dari `σ(z¹)` terhadap `z¹` adalah `σ'(z¹)`.

*   **Cek Pilihan Jawaban:**
    *   `∂a¹/∂z¹ = σ'(z¹)` → **BENAR**.
    *   `∂a¹/∂z¹ = σ` → **SALAH**. Ini adalah kesalahan umum, `σ` adalah fungsinya, `σ'` adalah turunannya.

---

**3. `∂z¹ / ∂w¹` (Seberapa sensitif Stimulasi terhadap Bobot?)**

*   **Fungsi:** `z¹ = w¹a⁰ + b¹`
*   **Variabel Aktif:** `w¹`. Anggap `a⁰` dan `b¹` sebagai konstanta.
*   **Proses:** Persamaannya bisa dibaca sebagai `z¹ = (a⁰) * w¹ + (konstanta)`.
    *   Turunan dari `(konstanta) * w¹` terhadap `w¹` adalah `konstanta` itu sendiri.
*   **Hasil:** `∂z¹/∂w¹ = a⁰`

*   **Cek Pilihan Jawaban:**
    *   `∂z¹/∂w¹ = w¹` → **SALAH**.
    *   `∂z¹/∂w¹ = a⁰` → **BENAR**.

---

**4. `∂z¹ / ∂b¹` (Seberapa sensitif Stimulasi terhadap Bias?)**

*   **Fungsi:** `z¹ = w¹a⁰ + b¹`
*   **Variabel Aktif:** `b¹`. Anggap `w¹` dan `a⁰` sebagai konstanta.
*   **Proses:** Persamaannya bisa dibaca sebagai `z¹ = (konstanta) + 1 * b¹`.
    *   Turunan dari `1 * b¹` terhadap `b¹` adalah `1`.
*   **Hasil:** `∂z¹/∂b¹ = 1`

*   **Cek Pilihan Jawaban:**
    *   `∂z¹/∂b¹ = a¹` → **SALAH**.
    *   `∂z¹/∂b¹ = 1` → **BENAR**.

---

### **Kesimpulan**

Berdasarkan analisis kita, pernyataan yang benar adalah:

*   `∂Cₖ/∂a¹ = 2(a¹ - y)`
*   `∂a¹/∂z¹ = σ'(z¹)`
*   `∂z¹/∂w¹ = a⁰`
*   `∂z¹/∂b¹ = 1`

Sekarang kamu tinggal mencocokkan hasil ini dengan kotak centang yang tersedia di *assignment*. Ini adalah latihan yang sangat baik untuk memastikan kamu nyaman dengan mekanika turunan parsial dan Aturan Rantai.

---

No 4 : 
![[pasted_20260101202636.png#center]]

![[pasted_20260101202901.png#center]]

---

No 5: 
![[pasted_20260101203205.png#center]]

![[pasted_20260101203328.png#center]]

---

No 6 : 
![[pasted_20260101203739.png#center]]

![[pasted_20260101204000.png#center]]

![[pasted_20260101204049.png#center]]

> Penjelasan : 

Tentu saja. Latihan ini adalah "level up" dari yang sebelumnya. Kita sekarang beralih dari satu neuron ke **jaringan dengan banyak lapisan**, dan dari **aljabar skalar** ke **aljabar matriks dan vektor**.

Ini adalah inti dari Backpropagation. 

---

### **Analisis Masalah**

**Setup:**
*   Kita punya jaringan saraf dengan beberapa lapisan (input `a⁰`, tersembunyi `a¹`, output `a²`).
*   **Backpropagation:** Adalah nama keren untuk proses menghitung turunan dari `Cost` (`Cₖ`) terhadap semua `W` dan `b`, dengan cara bekerja **MUNDUR** dari output menggunakan **Aturan Rantai Multivariat**.

**Rantai-Rantai Kunci:**
*   **Untuk `W²` (Lapisan Terakhir):** `Cₖ → a² → z² → W²`
    `∂Cₖ/∂W² = (∂Cₖ/∂a²) * (∂a²/∂z²) * (∂z²/∂W²)`
    *(Ini persis sama seperti soal sebelumnya, hanya sekarang `W²` adalah matriks dan `a²` adalah vektor).*

*   **Untuk `W¹` (Lapisan Sebelumnya):** `Cₖ → a² → z² → a¹ → z¹ → W¹`
    `∂Cₖ/∂W¹ = (∂Cₖ/∂a²) * (∂a²/∂z²) * (∂a¹/∂z¹) * (∂z¹/∂W¹)`  -- **Hmm, ada kesalahan di screenshot!** Mari kita perbaiki. Rantainya harus melalui `a¹`.
    **Rantai yang Benar:** `Cₖ → a² → a¹ → z¹ → W¹`
    `∂Cₖ/∂W¹ = (∂Cₖ/∂a²) * (∂a²/∂a¹) * (∂a¹/∂z¹) * (∂z¹/∂W¹)`

**Tugas Kita:**
Soal ini meminta kita untuk fokus pada **satu "mata rantai" spesifik** dari rantai panjang ini, yaitu:
> `∂a⁽ʲ⁾ / ∂a⁽ʲ⁻¹⁾`

**Pertanyaan:** Apa ekspresi yang benar untuk mata rantai ini? Ini menanyakan: "Seberapa sensitif **output dari lapisan `j`** (`aʲ`) terhadap **output dari lapisan `j-1`** (`aʲ⁻¹`)?"

---

### **Membongkar Mata Rantai `∂aʲ / ∂aʲ⁻¹`**

Mari kita lihat alur dari `aʲ⁻¹` ke `aʲ`:
**`aʲ⁻¹` → `zʲ` → `aʲ`**

Ini adalah rantai dua langkah:
1.  `aʲ⁻¹` (output dari lapisan sebelumnya) pertama-tama mempengaruhi `zʲ` (stimulasi di lapisan saat ini).
2.  Kemudian `zʲ` mempengaruhi `aʲ` (aktivasi di lapisan saat ini).

Menggunakan Aturan Rantai, kita bisa memecahnya:
**`∂aʲ / ∂aʲ⁻¹ = (∂aʲ / ∂zʲ) * (∂zʲ / ∂aʲ⁻¹)`**

Sekarang, mari kita hitung setiap bagian dari perkalian ini.

**Bagian 1: `∂aʲ / ∂zʲ` (Aktivasi terhadap Stimulasi)**
*   **Fungsi:** `aʲ = σ(zʲ)`
*   Ini adalah turunan dari fungsi aktivasi `σ` terhadap inputnya.
*   **Hasil:** `σ'(zʲ)`.
    *(Penting: Ini akan menjadi sebuah **matriks diagonal** jika `zʲ` adalah vektor, di mana elemen diagonalnya adalah turunan dari setiap komponen).*

**Bagian 2: `∂zʲ / ∂aʲ⁻¹` (Stimulasi terhadap Input Lapisan)**
*   **Fungsi:** `zʲ = Wʲ * aʲ⁻¹ + bʲ`
*   **Variabel Aktif:** `aʲ⁻¹` (ini adalah vektor). `Wʲ` dan `bʲ` kita anggap konstanta untuk turunan ini.
*   **Proses:** Ini adalah turunan dari `(Matriks * Vektor)` terhadap Vektor itu.
    *   Ingat dari turunan biasa: `d/dx (c*x) = c`.
    *   Hal yang sama berlaku di sini. Turunan dari `Wʲ * aʲ⁻¹` terhadap `aʲ⁻¹` adalah **matriks `Wʲ`** itu sendiri.
*   **Hasil:** `∂zʲ / ∂aʲ⁻¹ = Wʲ`

---

### **Menggabungkan Hasilnya**

Sekarang kita gabungkan kedua bagian itu kembali ke dalam rumus rantai kita:

`∂aʲ / ∂aʲ⁻¹ = (∂aʲ / ∂zʲ) * (∂zʲ / ∂aʲ⁻¹)`
**`∂aʲ / ∂aʲ⁻¹ = σ'(zʲ) * Wʲ`**

Ini adalah "mata rantai" yang menghubungkan satu lapisan dengan lapisan sebelumnya. Ini memberitahu kita bagaimana perubahan di `aʲ⁻¹` "merambat" ke `aʲ` melalui bobot `Wʲ` dan fungsi aktivasi `σ`.

---

### **Memilih Jawaban yang Benar**

Sekarang kita cocokkan hasil kita dengan pilihan yang ada:
*   `σ'(xʲ) W⁽ʲ⁻¹⁾` → Salah, `x` tidak terdefinisi dan `W` salah indeks.
*   `Wʲ a⁽ʲ⁾` → Salah, ini adalah bagian dari perhitungan `z`, bukan turunan.
*   **`σ'(zʲ) Wʲ` → BENAR.**
*   `σ'(zʲ) / σ'(z⁽ʲ⁻¹⁾)` → Salah, ini tidak mengikuti Aturan Rantai.

**Kesimpulan:**
Ekspresi yang benar untuk turunan `∂aʲ / ∂aʲ⁻¹` adalah `σ'(zʲ) Wʲ`. Ini adalah blok bangunan fundamental dari algoritma Backpropagation.

---
**Tags:** #mml-specialization #multivariate-calculus #neural-networks #training #cost-function #gradient-descent #backpropagation