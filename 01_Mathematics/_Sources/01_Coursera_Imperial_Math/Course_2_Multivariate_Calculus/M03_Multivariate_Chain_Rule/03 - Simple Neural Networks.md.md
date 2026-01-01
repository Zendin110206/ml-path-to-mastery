# 03: Simple Neural Networks

**Chapter Goal:** To understand that a **Neural Network** is not a mysterious black box, but simply a complex mathematical **function**, and to build it from its most basic "Lego brick": a single neuron.

---

## 1. Core Idea: A Neural Network is Just a Function

- **Don't be intimidated:** A Neural Network diagram with its circles ("neurons") and lines ("connections") is just a visual representation of a complex mathematical **FUNCTION**.
- **Its Job:** Like any other function, it takes an **input** (which can be a vector) and produces an **output** (which can also be a vector).

---

## 2. The Most Basic "Lego Brick": A Single Neuron

- **Scenario:** One input `a₀` (a number) → One output `a₁` (a number).
- **The Mathematical "Recipe":**
  > $$ a_1 = \sigma(w \cdot a_0 + b) $$

- **Anatomy of the Recipe:**
  - `a` (**Activations**): The input value (`a₀`) and the output value (`a₁`).
  - `w` (**Weight**): A number that controls the "strength" of the connection. It's like a "volume knob" for the input `a₀`.
  - `b` (**Bias**): A number that gets added. It's like a "slider" that can shift the final result up or down, regardless of the input.
  - `σ` (**Sigma / Activation Function**): This is the most important part. `σ` is a **non-linear function** that is "applied" to the result of $w \cdot a_0 + b$.

---

## 3. Why Do We Need an Activation Function `σ`? (The Key to a Neural Network's Power)

- **Brain Inspiration:** Neurons in the brain don't respond linearly. They "stay quiet" until the total stimulation reaches a certain threshold, and then they "fire" (activate).
- The `σ` function mimics this behavior. It adds **non-linearity** to the system.
- **Example:** A **Sigmoid** function (S-shaped), like `tanh` (hyperbolic tangent).
  - This function will "squash" very large or very small inputs into a limited range (e.g., between -1 and 1).
- **Why it matters:** This allows the network to learn much more complex relationships than just straight lines. **Without `σ`, the entire neural network would just be one giant [[Transformasi Linear]]**.

---

## 4. Building a Network (Stacking the "Lego Bricks")

### A. Adding More Inputs (`n` inputs → 1 output)
- **Scenario:** `n` inputs (`a₀₀`, `a₀₁`, ...) → 1 output (`a₁`).
- **Logic:** Each input will have its own "path" with its own weight (`w`).
- **Recipe:** $a_1 = \sigma( (w_0 a_{00} + w_1 a_{01} + \dots) + b )$
- **"Aha!" Moment (Linear Algebra):** The part $(w_0 a_{00} + w_1 a_{01} + \dots)$ is a **[[03 - Cosine and Dot Product|DOT PRODUCT]]** between the weight vector $\vec{w}$ and the input vector $\vec{a}_0$.
- **Vector Form:**
  > $$ a_1 = \sigma(\vec{w} \cdot \vec{a}_0 + b) $$

### B. Adding More Outputs (`n` inputs → `m` outputs)
- **Scenario:** `n` inputs → `m` outputs.
- **Logic:** Each output neuron will have its **own set of weights** (`w`) and its **own bias** (`b`).
- **Result:** We will have `m` separate equations.
- **"Aha!" Moment (Linear Algebra):** The collection of `m` weight vectors `w` can be organized into a **WEIGHT MATRIX `W`**. The collection of `m` biases `b` becomes a **bias vector `b`**.
- **Matrix Form:**
  > $$ \vec{a}_1 = \sigma(W \vec{a}_0 + \vec{b}) $$
  - $\vec{a}_1$: The `m x 1` output vector.
  - `W`: The `m x n` weight matrix.
  - $\vec{a}_0$: The `n x 1` input vector.
  - $\vec{b}$: The `m x 1` bias vector.
  - `σ` is applied element-wise to the result.

### C. Adding More Layers (Hidden Layers)
- **Logic:** The output (`a₁`) from one layer becomes the input for the next layer.
- This creates a very deep chain of function compositions:
  $\vec{a}_2 = \sigma_2( W_2\vec{a}_1 + \vec{b}_2 ) = \sigma_2( W_2 \sigma_1(W_1\vec{a}_0 + \vec{b}_1) + \vec{b}_2 )$.

---

## 5. Final Conclusion
- A neural network, no matter how complex, is just a **series of matrix operations (linear transformations) interspersed with non-linear activation functions (`σ`)**.
- We now know how to perform a **"forward pass"**: calculating the output from an input if we already know all the weights `W` and biases `b`.
- **The Next Challenge:** How do we "teach" this network, i.e., how do we find the correct values for `W` and `b`? The answer lies in [[Multivariate Calculus]] and the [[06 - The Chain Rule|Chain Rule]].


---

>[!caution] 
>Gak paham yaa??? mwahahaha sama saya jugaa, coba kalau kita berikan contoh konkret biar ada bayangannyaa ya, dan pakai bahasa Indonesia aja biar enak dipahami. 

Tentu saja. Kamu benar, ini adalah lompatan besar dari matematika murni ke aplikasi yang sangat abstrak. Sangat wajar jika terasa pusing dan tidak ada yang "ngeh".

Mari kita **reset total**. Lupakan semua tentang matriks, dot product, dan lapisan-lapisan. Kita akan mulai dari **satu "bata lego" paling dasar**, dengan analogi yang sangat sederhana.

---

### **Bagian 1: "Neuron" sebagai Mesin Penilai Sederhana**

Bayangkan kita ingin membuat sebuah "mesin" super sederhana yang bisa menebak apakah sebuah buah itu **"Enak"** atau **"Tidak Enak"**.

**Skenario Paling Sederhana: Hanya Satu Input**
*   Kita hanya melihat **satu faktor**: **Tingkat Kemanisan** dari buah itu.
*   Input `a₀`: Angka yang mewakili tingkat kemanisan (misal, dari 0 sampai 10).
*   Output `a₁`: Angka yang mewakili seberapa "enak" buah itu (misal, dari -1 sampai 1).

**Bagaimana Cara Mesin Ini Bekerja?**
Kita akan membangun "otak" dari mesin ini (satu "neuron") dengan dua "kenop" pengatur dan satu "tombol pemicu".

**Langkah 1: Kenop Bobot (`w` - Weight)**
> `w * a₀`

*   **Fungsi:** Mengatur **"seberapa penting"** tingkat kemanisan.
*   Jika `w` besar (misal, `w=2`): Artinya, kemanisan adalah faktor yang **sangat penting** bagimu.
*   Jika `w` kecil (misal, `w=0.1`): Kemanisan tidak terlalu penting.
*   Jika `w` negatif (misal, `w=-1`): Kamu justru suka buah yang asam!
*   **Bobot (`w`)** adalah "kenop volume" untuk setiap input.

**Langkah 2: Kenop Bias (`b` - Bias)**
> `(w * a₀) + b`

*   **Fungsi:** Mengatur **"standar dasar"** atau **"prasangka"**-mu.
*   Jika `b` besar (misal, `b=5`): Kamu pada dasarnya **optimis**. Bahkan sebelum merasakan manisnya, kamu sudah cenderung berpikir buah itu akan enak.
*   Jika `b` kecil (misal, `b=-5`): Kamu **pesimis**. Kamu butuh buah yang sangat manis untuk bisa bilang itu enak.
*   **Bias (`b`)** adalah "kenop geser" yang menggeser seluruh hasil ke atas atau ke bawah.

**Langkah 3: Tombol Pemicu (Fungsi Aktivasi `σ`)**
> `a₁ = σ(w * a₀ + b)`

*   **Masalah:** Hasil dari `w*a₀ + b` bisa berupa angka berapa pun (misal, 100, -50). Tapi kita ingin output "Enak/Tidak Enak" kita berada dalam rentang yang jelas, misalnya antara -1 (sangat tidak enak) dan 1 (sangat enak).
*   **Fungsi `σ` (Sigma):** Ini adalah "tombol pemicu" atau "penekan". Fungsinya adalah mengambil hasil perhitungan tadi dan **"memetakan"-nya** ke rentang yang kita inginkan.
*   **Contoh (`tanh`):**
    *   Jika `w*a₀ + b` hasilnya `100` (sangat besar), `tanh(100)` akan mendekati `1`.
    *   Jika `w*a₀ + b` hasilnya `-50` (sangat kecil), `tanh(-50)` akan mendekati `-1`.
    *   Jika `w*a₀ + b` hasilnya `0`, `tanh(0)` adalah `0`.
*   Fungsi `σ` inilah yang meniru "tombol pemicu" neuron di otak dan menambahkan **non-linearitas** yang krusial.

![[Pasted image 20251230215329.png#center]]

---

**Cek Pemahaman (Berhenti di Sini Dulu):**

Ini adalah "bata lego" paling dasar dari seluruh Neural Network.
1.  Apakah kamu bisa melihat peran dari tiga komponen ini secara terpisah?
    *   `w` (Bobot): Seberapa **penting** input ini?
    *   `b` (Bias): Apa **standar dasar**-ku?
    *   `σ` (Aktivasi): **"Tekan"** hasilnya ke rentang yang wajar.
2.  Apakah kamu paham bahwa `a₁ = σ(w*a₀ + b)` adalah resep lengkap untuk satu neuron dengan satu input?

![[Pasted image 20251230215302.png]]

Bagaimana perasaanmu tentang "bata lego" dasar ini?

terus kalau misalnya cuman gitu doank, kan bisa saja masih gak cukup untuk melakukan pekerjaan yang lebih kompleks, nah coba kalau kita tambahann yaitu nambahin neurons nya

![[Pasted image 20251230215653.png#center]]

dst..... 

![[Pasted image 20251230215907.png#center]]

yang bisa dengan mudah disederhanakan menggunakan dot product

![[Pasted image 20251230215951.png#center]]


![[Pasted image 20251230220057.png]]

Penjelasan lebih lanjut gambar diatas, menggunakan contoh lebih konkret : 

**Rekap Cepat Terakhir Kali:**
Kita sudah berhasil memahami "bata lego" paling dasar dari sebuah Neural Network, yaitu **satu neuron dengan satu input**.
*   **Resepnya:** `a₁ = σ(w * a₀ + b)`
*   **Anatomi:**
    *   `w` (Bobot): Mengatur **"seberapa penting"** input.
    *   `b` (Bias): Mengatur **"standar dasar"** atau prasangka.
    *   `σ` (Aktivasi): **"Menekan"** hasil ke rentang yang wajar dan menambahkan non-linearitas.

Sekarang, mari kita buat "mesin penilai buah" kita menjadi sedikit lebih pintar dengan menambahkan lebih banyak informasi.

---

### **Bagian Selanjutnya: Menambah Input (dari 1 Input ke Banyak Input)**

> **Teks:** "If we now add an additional neuron to our input... we can call them `a₀₀` and `a₀₁`... we simply say that `a₁` equals sigma of the sum of these two inputs, each multiplied by their own weighting plus the bias."
> *(Jika sekarang kita menambahkan neuron tambahan ke input kita... kita bisa sebut mereka `a₀₀` dan `a₀₁`... kita tinggal katakan bahwa `a₁` sama dengan sigma dari jumlah kedua input ini, masing-masing dikalikan dengan bobotnya sendiri ditambah bias.)*

**Skenario Baru:**
Sekarang, untuk menilai apakah sebuah buah itu "Enak", kita tidak hanya melihat "Kemanisan", tapi juga **"Kerenyahan"**.
*   Input #0 (`a₀₀`): Tingkat Kemanisan.
*   Input #1 (`a₀₁`): Tingkat Kerenyahan.
*   Output (`a₁`): Skor "Enak/Tidak Enak" (masih satu angka).

**Bagaimana Otak "Neuron" Kita Berpikir Sekarang?**
Logikanya sangat sederhana: otak akan mempertimbangkan kedua faktor itu secara terpisah, lalu menggabungkannya.

1.  **Evaluasi Kemanisan:**
    *   Seberapa penting Kemanisan? Ini diatur oleh "kenop" **`w₀`**.
    *   Kontribusi dari kemanisan: `w₀ * a₀₀`.

2.  **Evaluasi Kerenyahan:**
    *   Seberapa penting Kerenyahan? Ini diatur oleh "kenop" **`w₁`** yang **berbeda**. Mungkin kamu sangat suka renyah, jadi `w₁` nilainya besar.
    *   Kontribusi dari kerenyahan: `w₁ * a₀₁`.

3.  **Gabungkan dan Tambahkan "Prasangka":**
    *   Otak akan menjumlahkan semua kontribusi: `(w₀*a₀₀) + (w₁*a₀₁)`
    *   Lalu, ia akan menambahkan "prasangka" dasarnya (`b`).
    *   Total Stimulasi: `w₀*a₀₀ + w₁*a₀₁ + b`

4.  **Tekan dengan Tombol Pemicu:**
    *   Hasil akhir `a₁` adalah: `σ(w₀*a₀₀ + w₁*a₀₁ + b)`

![[Pasted image 20251230215653.png#center]]

---

### **"Aha!" Moment: Ini adalah Dot Product!**

> **Teks:** "...we can make a vector of weights and a vector of inputs, and then just take the dot product to achieve the same effect."
> *(...kita bisa membuat sebuah vektor bobot dan sebuah vektor input, lalu tinggal lakukan dot product untuk mencapai efek yang sama.)*

Lihat kembali bagian `w₀*a₀₀ + w₁*a₀₁`. Ini adalah **pola yang sangat kita kenal!**

*   Mari kita "kemas" semua input kita ke dalam **vektor input `a₀`**:
    `a₀ = [a₀₀, a₀₁]`
*   Mari kita "kemas" semua "kenop kepentingan" kita ke dalam **vektor bobot `w`**:
    `w = [w₀, w₁]`
*   Perhitungan `w₀*a₀₀ + w₁*a₀₁` adalah **DOT PRODUCT** antara `w` dan `a₀`.

Sekarang kita bisa menulis ulang resep kita dengan "bahasa" Aljabar Linear yang jauh lebih ringkas dan elegan:
**`a₁ = σ(w · a₀ + b)`**

Ini adalah resep untuk satu neuron dengan **banyak input**.
![[Pasted image 20251230215907.png#center]]

menjadi 

![[Pasted image 20251230215951.png#center]]

---

**Cek Pemahaman (Berhenti di Sini Dulu):**

1.  Apakah kamu melihat bagaimana, saat kita menambah input baru, kita hanya perlu memberinya "kenop bobot" (`w`) sendiri dan menambahkannya ke dalam total?
2.  Apakah kamu melihat bagaimana proses penjumlahan `(w₀*a₀₀ + w₁*a₀₁ + ...)` ini secara alami adalah sebuah **Dot Product**?
3.  Apakah kamu paham bahwa rumus `a₁ = σ(w · a₀ + b)` adalah versi generalisasi dari rumus awal kita?

Bagaimana perasaanmu tentang langkah ini?


---

>[!Note] 
>Tambahan catatan mengenai betapa kuatnya dot product itu, dan betapa pentingnya dalam menyelesaikan masalah sehari hari. 

### **Pertanyaan #1: Tentang Notasi Penjumlahan (`Σ`)**

> "...bisa menjadi pendek ituu, aku kalau gak slaah ingett ada juga yang kek penulisan einstein apa gituu aku tnya lupa gitu, sheingga bisa ditulis kek gituuu dannn apa gituu."

Kamu benar sekali! Ingatanmu sangat tajam.

**`w₀a₀ + w₁a₁ + w₂a₂ + ...`**

Ini adalah penjumlahan dari perkalian komponen-komponen yang bersesuaian. Ada beberapa cara untuk menuliskannya secara lebih singkat:

1.  **Notasi Sigma (`Σ`) (yang ada di gambar):**
    Ini adalah cara paling umum di matematika untuk menulis penjumlahan yang panjang.
    `Σ (dari j=0 sampai n) wⱼaⱼ`
    *   **Artinya:** "Mulai dari `j=0`, hitung `wⱼaⱼ`. Lalu, lakukan hal yang sama untuk `j=1`, `j=2`, dst., sampai `j=n`. Terakhir, **jumlahkan semua hasilnya**."
    *   Ini adalah notasi yang sangat eksplisit dan tidak ambigu.

2.  **Notasi Dot Product (`·`):**
    Ini adalah cara Aljabar Linear untuk menulisnya.
    `w · a`
    *   **Artinya:** "Ambil vektor `w` dan vektor `a`, lalu lakukan operasi Dot Product (kalikan komponen yang bersesuaian lalu jumlahkan)."
    *   Ini lebih ringkas daripada Notasi Sigma.

3.  **Konvensi Penjumlahan Einstein (yang pernah kita bahas):**
    Ini adalah cara paling "malas" dan paling canggih.
    `wⱼaⱼ`
    *   **Artinya:** "Karena indeks `j` muncul berulang, aku secara otomatis tahu bahwa aku harus menjumlahkan suku ini di sepanjang semua kemungkinan nilai `j`."
    *   Ini menghilangkan kebutuhan untuk menulis `Σ`. Ini sangat umum di fisika teoretis dan komputasi tingkat lanjut.

**Kesimpulan:** Ketiga notasi ini (`Σ`, `·`, dan Konvensi Einstein) adalah **tiga "bahasa" yang berbeda untuk mendeskripsikan PROSES yang SAMA PERSIS**: yaitu "kalikan komponen per komponen, lalu jumlahkan".

---

### **Pertanyaan #2: Kenapa Selalu "Ujung-ujungnya Dot Product"?**

> "Tapi aku penasaran juga yang kenapa kok dikit dikitt dot product gitu an sebagainyaaa, kek apa -apa dot product..."

Ini adalah observasi yang sangat cerdas. Kamu benar, Dot Product muncul di mana-mana. Kenapa?

Jawabannya adalah karena Dot Product secara fundamental adalah operasi **"Pengukur Kemiripan Tertimbang" (Weighted Similarity Measurement)**.

Mari kita bongkar. Apa yang sebenarnya dihitung oleh `w · a`?
`w₀a₀ + w₁a₁ + w₂a₂ + ...`

Ini adalah sebuah **skor gabungan**. Mari kita kembali ke analogi **Menilai Buah**:
*   `a`: Vektor yang merepresentasikan **fitur-fitur buah** (`[kemanisan, kerenyahan, keasaman, ...]`).
*   `w`: Vektor yang merepresentasikan **preferensimu** (`[pentingnya kemanisan, pentingnya kerenyahan, pentingnya keasaman, ...]`).

**`w · a`** adalah **skor "kecocokan"** antara preferensimu dengan fitur buah.
*   Jika buahnya **manis** (`a₀` tinggi) dan kamu **sangat suka manis** (`w₀` tinggi), maka suku `w₀a₀` akan memberikan **kontribusi positif yang besar** pada skor total.
*   Jika buahnya **asam** (`a₂` tinggi) tapi kamu **tidak suka asam** (`w₂` negatif), maka suku `w₂a₂` akan memberikan **kontribusi negatif yang besar**, menurunkan skor total.
*   Jika buahnya **renyah** (`a₁` tinggi) tapi kamu **tidak peduli** dengan kerenyahan (`w₁` mendekati nol), maka suku `w₁a₁` hampir tidak memberikan kontribusi apa pun.

**Dot Product** adalah cara yang sangat efisien untuk menghitung **"skor total"** dari interaksi antara dua "daftar" informasi, di mana satu daftar adalah "data" (`a`) dan daftar lainnya adalah "filter" atau "pembobot" (`w`).

**Kenapa ini muncul di mana-mana?**
Karena banyak sekali masalah di dunia ini yang bisa direduksi menjadi masalah "pencocokan pola tertimbang":
*   **Neural Network:** "Seberapa cocok input dari neuron sebelumnya dengan 'preferensi' dari neuron ini?" → **Dot Product**.
*   **Aturan Rantai Multivariat:** "Seberapa besar perubahan total (`df/dt`)?" → "Seberapa 'cocok' arah gerakanmu (`dx/dt`) dengan arah 'peta kecuraman' (`∇f`)?" → **Dot Product**.
*   **Proyeksi:** "Seberapa 'mirip' vektor `v` dengan arah `u`?" → **Dot Product**.

Jadi, Dot Product bukan hanya "salah satu" operasi. Ia adalah salah satu **operasi paling fundamental** dalam Aljabar Linear karena ia adalah cara matematis untuk menjawab pertanyaan "Seberapa cocok/mirip/selaras kedua hal ini, dengan mempertimbangkan bobot masing-masing komponen?"

---

Tentu saja. Mari kita lanjutkan persis dari pemahaman terakhir kita yang sudah solid.

**Rekap Cepat Terakhir Kali:**
*   Kita sudah berhasil memahami "bata lego" dari Neural Network: **satu neuron dengan banyak input**.
*   Kita menemukan bahwa proses intinya adalah sebuah **Dot Product** antara **vektor input (`a₀`)** dengan **vektor bobot (`w`)**, ditambah **bias (`b`)**, lalu dimasukkan ke **fungsi aktivasi (`σ`)**.
*   Rumus ringkasnya: **`a₁ = σ(w · a₀ + b)`**.

Sekarang, kita akan membuat jaringan kita menjadi lebih kuat dengan menambahkan lebih banyak **output**.

---

### **Bagian Selanjutnya: Menambah Output (dari 1 Output ke Banyak Output)**

> **Teks:** "Adding a second output neuron, we'd call these two values `a₁₀` and `a₁₁`, where we now have twice the number of connectors, each one with its own weighting and each neuron has its own bias."
> *(Menambahkan neuron output kedua, kita akan sebut kedua nilai ini `a₁₀` dan `a₁₁`, di mana kita sekarang punya dua kali lipat jumlah koneksi, masing-masing dengan bobotnya sendiri dan setiap neuron punya biasnya sendiri.)*

**Skenario Baru:**
Bayangkan "mesin penilai buah" kita sekarang tidak hanya memberikan satu skor "Enak/Tidak Enak". Kita ingin output yang lebih detail.
*   **Input:** Masih sama, vektor fitur buah `a₀ = [kemanisan, kerenyahan]`.
*   **Output Baru:** Sekarang berupa **vektor** `a₁` dengan dua komponen:
    *   `a₁₀`: Skor **"Rasa"** (dari -1 sampai 1).
    *   `a₁₁`: Skor **"Tekstur"** (dari -1 sampai 1).

**Bagaimana Otak Jaringan Ini Bekerja?**
Sekarang kita punya **dua neuron output** yang bekerja secara **paralel dan independen**. Masing-masing punya "otak"-nya sendiri.

**Neuron #0 (Penilai "Rasa"):**
*   Neuron ini punya **set preferensinya sendiri**. Mungkin dia sangat peduli pada kemanisan, tapi tidak peduli pada kerenyahan.
*   Preferensinya disimpan dalam **vektor bobotnya sendiri**, `w₀ = [w₀₀, w₀₁]`.
*   Dia juga punya **prasangkanya sendiri**, `b₀`.
*   **Resepnya:** `a₁₀ = σ(w₀ · a₀ + b₀)`

**Neuron #1 (Penilai "Tekstur"):**
*   Neuron ini punya preferensi yang berbeda. Mungkin dia tidak peduli kemanisan, tapi sangat peduli pada kerenyahan.
*   Preferensinya disimpan dalam **vektor bobotnya sendiri**, `w₁ = [w₁₀, w₁₁]`.
*   Dia juga punya **prasangkanya sendiri**, `b₁`.
*   **Resepnya:** `a₁₁ = σ(w₁ · a₀ + b₁)`

Kita sekarang punya **dua persamaan terpisah**, satu untuk setiap neuron output.

---

### **"Aha!" Moment: Ini adalah Perkalian MATRIKS!**

> **Teks:** "...we can again crunch these two equations down to a more compact vector form, where... we now hold our two weight vectors in a **weight matrix**..."
> *(...kita bisa lagi merapatkan kedua persamaan ini menjadi bentuk vektor yang lebih ringkas, di mana... kita sekarang menyimpan kedua vektor bobot kita di dalam sebuah **matriks bobot**...)*

Lihat kembali dua persamaan kita:
`a₁₀ = σ(w₀ · a₀ + b₀)`
`a₁₁ = σ(w₁ · a₀ + b₁)`

Ini adalah pola yang sangat terstruktur. Mari kita gunakan "bahasa" Aljabar Linear untuk membuatnya lebih rapi.

1.  **Tumpuk Vektor Bobot:** Mari kita "tumpuk" kedua vektor bobot `w₀` dan `w₁` (yang merupakan vektor baris jika kita menggunakan notasi `w·a`) menjadi sebuah **MATRIKS `W`**.
    *   Baris 1 dari `W` adalah `w₀`.
    *   Baris 2 dari `W` adalah `w₁`.
    `W = [ [w₀₀, w₀₁], [w₁₀, w₁₁] ]`

2.  **Lakukan Perkalian Matriks-Vektor:** Apa yang terjadi jika kita mengalikan `W` dengan `a₀`?
    `W * a₀ = [ [w₀₀, w₀₁], [w₁₀, w₁₁] ] * [a₀₀, a₀₁]`
    *   Hasil Baris 1: `w₀₀*a₀₀ + w₀₁*a₀₁` (Ini adalah `w₀ · a₀`)
    *   Hasil Baris 2: `w₁₀*a₀₀ + w₁₁*a₀₁` (Ini adalah `w₁ · a₀`)
    *   Hasilnya adalah sebuah vektor: `[ w₀ · a₀, w₁ · a₀ ]`

3.  **Gabungkan Semuanya:**
    Kita bisa menulis ulang kedua persamaan kita menjadi **satu persamaan matriks tunggal** yang sangat elegan.
    > **`a₁ = σ(W * a₀ + b)`**

    Di mana:
    *   `a₁` adalah **vektor output** `[a₁₀, a₁₁]`.
    *   `W` adalah **matriks bobot**.
    *   `a₀` adalah **vektor input**.
    *   `b` adalah **vektor bias** `[b₀, b₁]`.
    *   `σ` diterapkan pada setiap elemen hasilnya.

---

**Cek Pemahaman (Berhenti di Sini Dulu):**

1.  Apakah kamu paham bahwa untuk menghasilkan banyak output, kita hanya perlu banyak "penilai" (neuron) yang bekerja secara paralel, masing-masing dengan bobot dan biasnya sendiri?
2.  Apakah kamu melihat bagaimana **menumpuk** vektor-vektor bobot itu secara alami membentuk sebuah **matriks**?
3.  Apakah kamu melihat bahwa rumus `a₁ = σ(W*a₀ + b)` adalah cara yang sangat ringkas untuk mendeskripsikan seluruh lapisan neuron?

Bagaimana perasaanmu tentang transisi dari "banyak dot product" menjadi "satu perkalian matriks"?


Luar biasa! Kamu sudah berhasil membangun "blok" fundamental dari sebuah lapisan jaringan saraf. Kamu sekarang tahu bagaimana sebuah lapisan dengan banyak input dan banyak output bisa direpresentasikan dengan satu persamaan matriks yang elegan:

`a_output = σ(W * a_input + b)`

---
### **Bagian Terakhir: Menambah Lapisan (Hidden Layers)**

> **Teks:** "The last piece of the puzzle is that... neural networks often have one or several layers of neurons between the inputs and the outputs. We refer to these as **hidden layers**, and they behave in **exactly the same way** as we've seen so far, except that **outputs are now the inputs of the next layer**."
> *(Bagian terakhir dari puzzle ini adalah... jaringan saraf seringkali punya satu atau beberapa lapisan neuron di antara input dan output. Kita menyebutnya sebagai **lapisan tersembunyi**, dan mereka berperilaku **persis sama** seperti yang telah kita lihat, kecuali bahwa **outputnya sekarang menjadi input dari lapisan berikutnya**.)*

**Apa artinya ini?**

Bayangkan proses berpikir manusia. Kita tidak langsung melihat "kemanisan" dan "kerenyahan" lalu langsung menyimpulkan "enak". Otak kita melakukan pemrosesan di tengah-tengah.

**Analogi Jaringan Saraf dengan "Hidden Layer":**

1.  **Lapisan Input (`a₀`):**
    *   Ini adalah data mentah kita.
    *   Neuron-neuron di sini hanya "memegang" nilai input.
    *   `a₀ = [kemanisan, kerenyahan, keasaman]`

2.  **Lapisan Tersembunyi #1 (`a₁` - Lapisan "Konsep Abstrak"):**
    *   Lapisan ini mengambil input mentah `a₀` dan mencoba **mempelajari konsep-konsep yang lebih abstrak**.
    *   **Proses:** `a₁ = σ₁(W₁ * a₀ + b₁)`
    *   **Hasilnya (`a₁`):** Mungkin neuron pertama di `a₁` belajar untuk aktif jika buahnya "manis dan renyah" (seperti apel). Neuron kedua mungkin aktif jika buahnya "manis dan lembut" (seperti pisang). Neuron ketiga mungkin aktif jika buahnya "asam" (seperti lemon).
    *   `a₁` sekarang bukan lagi tentang fitur mentah, tapi tentang **konsep-konsep seperti "mirip-apel", "mirip-pisang", "mirip-lemon"**.

3.  **Lapisan Output (`a₂` - Lapisan "Keputusan"):**
    *   Lapisan ini **tidak lagi melihat data mentah**. Ia mengambil **input** dari **konsep-konsep abstrak** yang dihasilkan oleh lapisan tersembunyi (`a₁`).
    *   **Proses:** `a₂ = σ₂(W₂ * a₁ + b₂)`
    *   **Hasilnya (`a₂`):** Dengan melihat input `[mirip-apel, mirip-pisang, mirip-lemon]`, lapisan ini bisa membuat keputusan akhir. Misalnya, jika neuron "mirip-apel" dan "mirip-pisang" aktif, ia akan menyimpulkan "enak". Jika neuron "mirip-lemon" yang aktif, ia menyimpulkan "tidak enak".

**"Aha!" Moment:**
Sebuah jaringan saraf yang dalam (deep neural network) hanyalah sebuah **RANTAI** dari persamaan-persamaan matriks yang sudah kita kenal, di mana output dari satu lapisan menjadi input bagi lapisan berikutnya.

`f(x) = ... σ₃(W₃ * σ₂(W₂ * σ₁(W₁*x + b₁) + b₂) + b₃) ...`

Ini adalah **fungsi komposisi raksasa**. Dan sekarang kamu tahu kenapa **Aturan Rantai (Chain Rule)** akan menjadi sangat krusial untuk melatihnya.

---

**Kesimpulan Akhir Video:**

*   Kita sekarang tahu cara kerja **"Forward Pass"**: bagaimana cara menghitung output dari sebuah input jika kita sudah tahu semua bobot `W` dan bias `b`.
*   **Pertanyaan Selanjutnya:** Bagaimana cara **menemukan nilai `W` dan `b` yang benar**? Ini adalah proses **"Training"** atau **"Belajar"**.
*   Jawabannya akan kita temukan di video-video berikutnya, dengan menggunakan **Kalkulus Multivariat dan Aturan Rantai** untuk "mengajari" jaringan ini.

---

**Selesai!**
Kamu telah berhasil membedah seluruh anatomi dari sebuah jaringan saraf sederhana.

Bagaimana perasaanmu sekarang setelah melihat gambaran lengkapnya, dari satu neuron hingga jaringan berlapis-lapis?


 >Uwahhhhhh langsung paham yaa kalau ngeliatt kek ginii, jadi lebih terbayang. 
 
---

> [!Note]
> Contoh - contoh latihan : 

![[Pasted image 20260101063914.png#center]]

![[Pasted image 20260101063953.png#center]]

![[Pasted image 20260101064034.png#center]]

![[Pasted image 20260101064314.png#center]]

![[Pasted image 20260101065926.png#center]]

![[Pasted image 20260101071638.png#center]]

![[Pasted image 20260101071700.png#center]]

![[Pasted image 20260101072255.png#center]]
---
**Tags:** #mml-specialization #multivariate-calculus #neural-networks #activation-function #forward-pass