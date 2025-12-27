# 04: Orthogonal Matrices

**Chapter Goal:** To introduce a special class of "superhero" matrices in linear algebra and data science: **Orthogonal Matrices**.

---

## 1. A New Tool: The Matrix Transpose ($A^T$)

- **Definition:** The **transpose** of a matrix `A` (denoted $A^T$) is a "mirrored" version of `A` where the rows become columns and the columns become rows.
- **How to do it:** "Flip" the elements of the matrix across its main diagonal.
- The entry `(i, j)` in $A^T$ is the entry `(j, i)` from `A`.

- **Example:**
  $$ A = \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix} \implies A^T = \begin{bmatrix} 1 & 3 \\ 2 & 4 \end{bmatrix} $$
  *(The element `2` in row 1, col 2 moves to row 2, col 1).*

---

## 2. Our "Superhero": The Orthogonal Matrix

- **Definition:** A square matrix `A` is called **orthogonal** if all of its column vectors have two special properties:
  1.  **Ortho- (Orthogonal):** Every column is perpendicular to every other column.
      - $\vec{a}_i \cdot \vec{a}_j = 0$ if $i \neq j$.
  2.  **-normal (Normal):** Every column has a length of 1 (it's a unit vector).
      - $\vec{a}_i \cdot \vec{a}_i = 1$.

- **Combined:** The columns of an orthogonal matrix form an **[[07 - Basis, Vector Space, and Applications#3. Properties of a Basis (It Doesn't Have to Be Perfect)|orthonormal basis]]**.
- **Example:** Rotation matrices are perfect examples of orthogonal matrices.

---

## 3. Superpower #1: The Inverse is Incredibly Easy to Find

This is the main "Aha!" Moment of the video.

- Let's calculate $A^T A$ for an orthogonal matrix `A`.
- **"Row-times-Column" Logic:**
  - The `i`-th row of $A^T$ is actually the `i`-th column of `A` ($\vec{a}_i$) "laid down".
  - The `j`-th column of `A` is $\vec{a}_j$.
  - Therefore, the `(i, j)` entry of the product $A^T A$ is the [[Dot Product]] $\vec{a}_i \cdot \vec{a}_j$.

- **Calculation Result:**
  - If $i \neq j$ (off-diagonal entries), $\vec{a}_i \cdot \vec{a}_j = 0$ (from the orthogonal property).
  - If $i = j$ (on-diagonal entries), $\vec{a}_i \cdot \vec{a}_i = 1$ (from the normal property).

- The resulting matrix is:
  $$ \begin{bmatrix} 1 & 0 & 0 & \dots \\ 0 & 1 & 0 & \dots \\ 0 & 0 & 1 & \dots \\ \vdots & \vdots & \vdots & \ddots \end{bmatrix} $$
  This is the **IDENTITY MATRIX (`I`)**!

- **Magical Conclusion:**
  We found that $A^T A = I$. Recalling that the definition of an inverse is $A^{-1}A = I$, it must be that:
  > For an orthogonal matrix, its **Inverse IS its Transpose!**
  > $$ A^{-1} = A^T $$

- **Why this is awesome:** Calculating a transpose (just flipping rows/columns) is computationally much faster and easier than calculating an inverse (with Gauss-Jordan Elimination).

---

## 4. Other Superpowers

- **Determinant of ±1:** Because orthogonal matrices only "rotate" space without stretching or squishing it, their area/volume scaling factor ([[Determinan]]) must be `1` (if orientation is preserved) or `-1` (if orientation is flipped, e.g., a reflection).
- **Invertible Transformation:** Since $\det(A) \neq 0$, the transformation never "squishes" space. All information is preserved.
- **Change of Basis becomes the Dot Product:** As seen before, if a new basis (the columns of `A`) is orthonormal, the change of basis from the standard world to the new world can be calculated with simple dot products, not a complicated matrix inverse multiplication.

---

## 5. Key Message for Data Science

- Whenever possible, we want to work with **orthonormal bases**.
- If we can transform our data into a basis where the "features" are mutually orthogonal, many calculations become incredibly simple and stable.
- This is one of the reasons why methods like **PCA (Principal Component Analysis)** are so powerful, because they specifically search for a new, optimal orthonormal basis for the data.

---
## 6. Concrete Example: The 90° Rotation Matrix

Let's take our "superhero," the 90° counter-clockwise rotation matrix (`R`), and prove its superpowers.

**Matrix `R`:**
- $\hat{i}$ becomes `[0, 1]`, and $\hat{j}$ becomes `[-1, 0]`.
$$ R = \begin{bmatrix} 0 & -1 \\ 1 & 0 \end{bmatrix} $$

### Step 1: Verify if `R` is Truly a "Superhero" (Orthogonal)

We must check the two conditions for its columns, $\vec{c}_1 = \begin{bmatrix}0\\1\end{bmatrix}$ and $\vec{c}_2 = \begin{bmatrix}-1\\0\end{bmatrix}$.

**1. Are they Unit Length (Normal)?**
- $|\vec{c}_1| = \sqrt{0^2 + 1^2} = \sqrt{1} = 1$. (OK ✔️)
- $|\vec{c}_2| = \sqrt{(-1)^2 + 0^2} = \sqrt{1} = 1$. (OK ✔️)

**2. Are they Perpendicular (Ortho)?**
- We calculate their dot product: $\vec{c}_1 \cdot \vec{c}_2$.
- $[0, 1] \cdot [-1, 0] = (0 \cdot -1) + (1 \cdot 0) = 0 + 0 = 0$.
- Since the result is 0, they are mutually orthogonal. (OK ✔️)

**Conclusion:** Matrix `R` is proven to be an orthogonal matrix.

---
### Step 2: Find its Inverse the "Hard Way" (Standard Method)

Now, let's find $R^{-1}$ using the standard 2x2 inverse formula:
$$ R^{-1} = \frac{1}{\det(R)} \begin{bmatrix} d & -b \\ -c & a \end{bmatrix} $$

- **Calculate the Determinant of `R`:**
  $\det(R) = (0 \cdot 0) - (-1 \cdot 1) = 0 - (-1) = 1$.
  *(As we expected, the determinant is 1!)*

- **Apply the Inverse Formula:**
  $R^{-1} = \frac{1}{1} \begin{bmatrix} 0 & -(-1) \\ -1 & 0 \end{bmatrix}$
  $$ R^{-1} = \begin{bmatrix} 0 & 1 \\ -1 & 0 \end{bmatrix} $$
So, the inverse of our 90° rotation matrix is $\begin{bmatrix} 0 & 1 \\ -1 & 0 \end{bmatrix}$.

---
### Step 3: Find its Inverse with the "Superpower" (Transpose)

Now, let's try the "superpower" of an orthogonal matrix. The theory says $A^{-1} = A^T$. Let's prove it.

- **Take the Original Matrix `R`:**
  $$ R = \begin{bmatrix} 0 & -1 \\ 1 & 0 \end{bmatrix} $$

- **Calculate its Transpose ($R^T$):**
  We "flip" the matrix along its diagonal. Rows become columns, columns become rows.
  - The first row `[0, -1]` becomes the first column.
  - The second row `[1, 0]` becomes the second column.
  $$ R^T = \begin{bmatrix} 0 & 1 \\ -1 & 0 \end{bmatrix} $$

---
### "Aha!" Moment: Compare the Results!

Look at what we just found:
- **Inverse from the Hard Way ($R^{-1}$):** $\begin{bmatrix} 0 & 1 \\ -1 & 0 \end{bmatrix}$
- **The Transpose ($R^T$):** $\begin{bmatrix} 0 & 1 \\ -1 & 0 \end{bmatrix}$

**They are EXACTLY the same!**

We have proven with a concrete example that for a rotation matrix (which is orthogonal), calculating its inverse is as simple as calculating its transpose.

#### Additional Geometric Intuition
- `R` is a **90° counter-clockwise** rotation.
- $R^{-1}$ (its inverse) should be the "undo" action, which is a **90° clockwise** rotation.
- What does the matrix $R^T = \begin{bmatrix} 0 & 1 \\ -1 & 0 \end{bmatrix}$ do?
  - $\hat{i}$ becomes `[0, -1]` (points down).
  - $\hat{j}$ becomes `[1, 0]` (points right).
- This is precisely a 90° clockwise rotation! Everything connects beautifully.

---

>[!NOTE]
>Ini contoh bahasa indonesia, yang menurut aku lebih mudah dipahami dan lebih intuitive dengan contoh yang lebih konkret dan pengerjaan yang lebih runut

Kita akan bedah prosesnya pakai **CONTOH NYATA** dengan angka. Kita akan membuat sebuah matriks, mengecek apakah dia Orthogonal, dan membuktikan "keajaibannya".

Mari kita pakai angka dari segitiga siku-siku (3, 4, 5) biar gampang hitungnya. Kita bagi 5 biar panjangnya jadi 1 (0.6 dan 0.8).

---

### Langkah 1: Mari Kita "Ciptakan" Matriks $A$

Kita buat matriks $2 \times 2$. Anggap ini Matriks Transformasi.

Kolom-kolomnya adalah vektor basis kita.

$$A = \begin{bmatrix} 0.6 & -0.8 \\ 0.8 & 0.6 \end{bmatrix}$$

Mari kita lihat isinya:

- **Kolom 1 (Vektor $\mathbf{a}_1$):** $\begin{bmatrix} 0.6 \\ 0.8 \end{bmatrix}$
    
- **Kolom 2 (Vektor $\mathbf{a}_2$):** $\begin{bmatrix} -0.8 \\ 0.6 \end{bmatrix}$
    

---

### Langkah 2: Audisi Masuk Klub (Cek Syarat)

Apakah matriks $A$ ini layak disebut **Orthogonal**? Dia harus lolos 2 tes ketat.

Tes A: Apakah mereka Tegak Lurus? (Dot Product harus 0)

Mari kita dot-kan Kolom 1 dengan Kolom 2.

$$\mathbf{a}_1 \cdot \mathbf{a}_2 = (0.6 \times -0.8) + (0.8 \times 0.6)$$

$$= -0.48 + 0.48 = \mathbf{0}$$

✅ **Lolos!** Mereka tegak lurus ($90^\circ$).

Tes B: Apakah Panjangnya Satu? (Unit Length)

Mari kita cek panjang Kolom 1 ($\mathbf{a}_1 \cdot \mathbf{a}_1$).

$$|\mathbf{a}_1|^2 = (0.6 \times 0.6) + (0.8 \times 0.8)$$

$$= 0.36 + 0.64 = \mathbf{1}$$

✅ **Lolos!** Panjangnya 1. (Berlaku juga untuk Kolom 2, coba cek: $(-0.8)^2 + 0.6^2 = 1$).

**Kesimpulan:** Matriks $A$ adalah **Matriks Orthogonal**.

---

### Langkah 3: Operasi Transpose ($A^T$)

Sekarang kita cari $A^T$ (Transpose).

Caranya: Baris jadi Kolom.

Matriks Awal:

$$A = \begin{bmatrix} \color{blue}{0.6} & \color{blue}{-0.8} \\ \color{red}{0.8} & \color{red}{0.6} \end{bmatrix}$$

_(Baris 1 warna biru, Baris 2 warna merah)_

Matriks Transpose (Diputar):

$$A^T = \begin{bmatrix} \color{blue}{0.6} & \color{red}{0.8} \\ \color{blue}{-0.8} & \color{red}{0.6} \end{bmatrix}$$

Lihat? Yang tadinya mendatar (biru), sekarang jadi tegak.

---

### Langkah 4: Keajaiban ($A^T \times A$)

Ini momen "Simsalabim"-nya. Mari kita kalikan Transpose dengan Aslinya.

$$A^T A = \begin{bmatrix} 0.6 & 0.8 \\ -0.8 & 0.6 \end{bmatrix} \times \begin{bmatrix} 0.6 & -0.8 \\ 0.8 & 0.6 \end{bmatrix}$$

Mari kita hitung satu per satu elemennya (Baris Kiri $\times$ Kolom Kanan):

1. Kiri Atas: (Baris 1 $A^T$ $\times$ Kolom 1 $A$)
    
    $(0.6)(0.6) + (0.8)(0.8) = 0.36 + 0.64 = \mathbf{1}$
    
    (Ini sebenarnya $\mathbf{a}_1 \cdot \mathbf{a}_1$, makanya hasilnya 1)
    
2. Kanan Atas: (Baris 1 $A^T$ $\times$ Kolom 2 $A$)
    
    $(0.6)(-0.8) + (0.8)(0.6) = -0.48 + 0.48 = \mathbf{0}$
    
    (Ini sebenarnya $\mathbf{a}_1 \cdot \mathbf{a}_2$, makanya hasilnya 0)
    
3. Kiri Bawah: (Baris 2 $A^T$ $\times$ Kolom 1 $A$)
    
    $(-0.8)(0.6) + (0.6)(0.8) = -0.48 + 0.48 = \mathbf{0}$
    
4. Kanan Bawah: (Baris 2 $A^T$ $\times$ Kolom 2 $A$)
    
    $(-0.8)(-0.8) + (0.6)(0.6) = 0.64 + 0.36 = \mathbf{1}$


### Kenapa Matrix Multiplication = Dot Product?

Ini inti kebingunganmu:

> _"Kenapa (Baris Kiri x Kolom Kanan) itu kamu sebut $\mathbf{a}_1 \cdot \mathbf{a}_1$?"_

Mari kita lihat secara visual "Bedah Mayat" matriksnya.

**Matriks Asli $A$ (Kolomnya adalah vektor $\mathbf{a}_1$ dan $\mathbf{a}_2$):**

$$A = \begin{bmatrix} | & | \\ \mathbf{a}_1 & \mathbf{a}_2 \\ | & | \end{bmatrix}$$

_(Bayangkan $\mathbf{a}_1$ dan $\mathbf{a}_2$ itu tiang berdiri)_.

**Matriks Transpose $A^T$ (Barisnya adalah vektor $\mathbf{a}_1$ dan $\mathbf{a}_2$):**

$$A^T = \begin{bmatrix} — & \mathbf{a}_1 & — \\ — & \mathbf{a}_2 & — \end{bmatrix}$$

_(Karena di-transpose, tiangnya jadi tidur)._

---

**Sekarang Kita Kalikan ($A^T \times A$):**

Aturan Matriks kan **"Baris dikali Kolom"**.

1. Elemen Kiri Atas:
    
    Kita ambil Baris 1 dari $A^T$ dikali Kolom 1 dari $A$.
    
    - Baris 1 dari $A^T$ itu siapa? **Vektor $\mathbf{a}_1$**.
        
    - Kolom 1 dari $A$ itu siapa? **Vektor $\mathbf{a}_1$**.
        
    
    Jadi operasinya adalah: $\mathbf{a}_1$ dikali $\mathbf{a}_1$.
    
    Karena cara ngalinya "elemen per elemen lalu dijumlah", itu sama persis dengan definisi Dot Product ($\mathbf{a}_1 \cdot \mathbf{a}_1$).
    
2. Elemen Kanan Atas:
    
    Kita ambil Baris 1 dari $A^T$ dikali Kolom 2 dari $A$.
    
    - Baris 1: $\mathbf{a}_1$.
        
    - Kolom 2: $\mathbf{a}_2$.
        
    - Operasinya: **$\mathbf{a}_1 \cdot \mathbf{a}_2$**.
        

**Visualisasinya:**

$$\begin{bmatrix} — \mathbf{a}_1 — \\ — \mathbf{a}_2 — \end{bmatrix} \times \begin{bmatrix} | & | \\ \mathbf{a}_1 & \mathbf{a}_2 \\ | & | \end{bmatrix} = \begin{bmatrix} (\mathbf{a}_1 \cdot \mathbf{a}_1) & (\mathbf{a}_1 \cdot \mathbf{a}_2) \\ (\mathbf{a}_2 \cdot \mathbf{a}_1) & (\mathbf{a}_2 \cdot \mathbf{a}_2) \end{bmatrix}$$

**Hasilnya (Sesuai sifat Orthogonal):**

- $\mathbf{a}_1 \cdot \mathbf{a}_1 = 1$ (Panjangnya 1).
    
- $\mathbf{a}_1 \cdot \mathbf{a}_2 = 0$ (Tegak lurus).
    

$$= \begin{bmatrix} 1 & 0 \\ 0 & 1 \end{bmatrix}$$

---

### Langkah 5: Hasil Akhir

Hasil perkalian tadi adalah:

$$\begin{bmatrix} 1 & 0 \\ 0 & 1 \end{bmatrix}$$

Ini adalah **Matriks Identitas ($I$)**!

Apa artinya?

Dalam matematika, jika $X \times Y = I$, maka $X$ adalah Invers dari $Y$.

Karena kita barusan membuktikan $A^T \times A = I$, maka:

> **$A^T$ adalah Invers dari $A$.**

Kenapa ini bikin hidup indah?

Bayangkan kamu punya matriks raksasa $1000 \times 1000$.

- Kalau matriks biasa: Nyari inversnya butuh superkomputer berjam-jam.
    
- Kalau matriks orthogonal: Cukup "balik" baris jadi kolom (Transpose). Selesai dalam 1 detik.
    

Gimana? Dengan angka 0.6 dan 0.8 ini, apakah alurnya lebih kelihatan nyata?

![[Pasted image 20251214130921.png#center]]

---
**Tags:** #mml-special-ization #linear-algebra #orthogonal-matrix #transpose #inverse-matrix #pca