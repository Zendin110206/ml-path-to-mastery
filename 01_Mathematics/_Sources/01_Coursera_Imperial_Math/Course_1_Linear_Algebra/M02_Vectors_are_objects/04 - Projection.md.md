# 04: Projection

**Chapter Goal:** To use the geometric definition of the [[Dot Product]] to formally understand and calculate the **projection** of one vector onto another.

---

## 1. Core Idea: The "Shadow" of One Vector onto Another

- **Setup:** We have two vectors, $\vec{r}$ and $\vec{s}$, with an angle $\theta$ between them.
- **Projection:** Imagine a light source directly above, casting a shadow from vector $\vec{s}$ perpendicularly onto the line of vector $\vec{r}$. This shadow is the projection.
- **Geometrically:** This is the **adjacent** side of a right-angled triangle where $\vec{s}$ is the **hypotenuse**.

- **Visualization:**
  Picture vectors $\vec{r}$ and $\vec{s}$ starting from the same origin. From the tip of $\vec{s}$, draw a dashed line that is perpendicular to the line of $\vec{r}$. The "shadow" that forms along the line of $\vec{r}$ is the "Projection".

![[Pasted image 20251203185608.png#center]]

---

## 2. Connecting the Dot Product with Projection

- **Geometric Definition of the Dot Product:**
  $$ \vec{r} \cdot \vec{s} = |\vec{r}| |\vec{s}| \cos(\theta) $$

- **Focus on the $|\vec{s}| \cos(\theta)$ part:**
  - From basic trigonometry (SOH CAH TOA), we know $\cos(\theta) = \frac{\text{Adjacent}}{\text{Hypotenuse}}$.
  - So, $\text{Adjacent} = \text{Hypotenuse} \cdot \cos(\theta)$.
  - In our triangle, $\text{Hypotenuse} = |\vec{s}|$, and the `Adjacent` side is the length of the "shadow" or projection.
  - Therefore, **$|\vec{s}| \cos(\theta)$ is the length of the shadow of $\vec{s}$ onto $\vec{r}$**.

- **"Aha!" Moment:**
  If we substitute this back into the dot product formula:
  > $\vec{r} \cdot \vec{s} = |\vec{r}| \cdot (\text{Length of the Projection of } \vec{s} \text{ onto } \vec{r})$

- **New Interpretation:** The dot product $\vec{r} \cdot \vec{s}$ tells us the length of $\vec{r}$ multiplied by the length of $\vec{s}$'s shadow on $\vec{r}$. This is why the dot product is sometimes called a "Projection Product".

---

## 3. Two Types of Projection

We can rearrange the equation above to formally define two types of projection.

### A. Scalar Projection
- **Goal:** To find the **LENGTH** of the shadow (a single number/scalar).
- **How to Calculate:** From the equation above, we just divide by $|\vec{r}|$.
  $$ \text{Scalar Projection of } \vec{s} \text{ onto } \vec{r} = \frac{\vec{r} \cdot \vec{s}}{|\vec{r}|} $$
- This is a number that tells us "how far $\vec{s}$ goes in the direction of $\vec{r}$".

### B. Vector Projection
- **Goal:** To find the **VECTOR** of the shadow itself (an arrow with both length AND direction).
- **Logic:**
  1.  We already have the **length**: $\frac{\vec{r} \cdot \vec{s}}{|\vec{r}|}$.
  2.  We need its **direction**: The direction must be the same as $\vec{r}$'s direction.
  3.  The unit vector in the direction of $\vec{r}$ is $\frac{\vec{r}}{|\vec{r}|}$.
- **Combine the two:** `Vector Projection = (Length) * (Unit Direction Vector)`

- **Formula:**
  $$ \text{proj}_{\vec{r}}(\vec{s}) = \left( \frac{\vec{r} \cdot \vec{s}}{|\vec{r}|} \right) \frac{\vec{r}}{|\vec{r}|} = \left( \frac{\vec{r} \cdot \vec{s}}{|\vec{r}|^2} \right) \vec{r} = \left( \frac{\vec{r} \cdot \vec{s}}{\vec{r} \cdot \vec{r}} \right) \vec{r} $$
- This is a new vector that represents the "shadow" of $\vec{s}$ onto $\vec{r}$.

---

## 4. Summary of the Dot Product's Uses

The [[Dot Product]] is a very versatile tool. It can tell us:

- The **length** of a vector: $|\vec{r}| = \sqrt{\vec{r} \cdot \vec{r}}$.
- The **angle** between two vectors (through $\cos(\theta)$).
- If two vectors are **perpendicular** ($\vec{r} \cdot \vec{s} = 0$).
- The **projection** of one vector onto another (both its length and the vector itself).

---

## Catatan Tambahan : 

> [!warning] SECARA INTUITIF  
> Menggunakan bahasa, agar lebih mudah dipahami
### 1. The Big Picture: Apa Bedanya?

![[Pasted image 20251203182625.png#center]]

Bayangkan lagi contoh **Menarik Koper** tadi.

1. **Dot Product:** Sebuah **Angka Skor**. (Misal: 50 Joule).
    
    - _Masalahnya:_ Angka ini tercampur antara "Kuatnya tarikanmu" dan "Panjangnya jarak tempuh". Susah dibedakan mana yang mana.
        
2. **Scalar Projection:** Sebuah **Angka Panjang**. (Misal: 5 Newton).
    
    - _Artinya:_ Ini murni "Kuatnya tarikanmu yang searah gerak". Kita membuang faktor jarak tempuh.
        
3. **Vector Projection:** Sebuah **Panah Baru**. (Misal: Panah 5 Newton ke arah kanan).
    
    - _Artinya:_ Ini adalah "Bayangan"-nya itu sendiri yang digambar ulang sebagai panah.


### 2. Scalar Projection (Panjang Bayangan)

Istilah kerennya: _"Component of $\mathbf{a}$ along $\mathbf{b}$"_.

Intuisinya:

Kita ingin tahu panjang bayangan $\mathbf{a}$ yang jatuh ke $\mathbf{b}$, TAPI kita tidak peduli seberapa panjang $\mathbf{b}$ itu sendiri. Kita cuma mau tahu seberapa efektif si $\mathbf{a}$.

Dari mana rumusnya?

Ingat rumus Dot Product:

$$\mathbf{a} \cdot \mathbf{b} = |\mathbf{a}| \, \underbrace{|\mathbf{b}|}_{\text{Pengganggu}} \, \cos \theta$$

Kita mau mencari panjang bayangannya saja, yaitu $|\mathbf{a}| \cos \theta$.

Jadi, kita harus "membuang" si $|\mathbf{b}|$ (panjang vektor B). Caranya? Bagi saja dengan $|\mathbf{b}|$.

Rumus Scalar Projection:

$$\text{Scalar Proj} = |\mathbf{a}| \cos \theta = \frac{\mathbf{a} \cdot \mathbf{b}}{|\mathbf{b}|}$$

> Contoh Koper:
> 
> Kamu tarik koper (Vektor A) sekuat 10 Newton dengan sudut $60^\circ$.
> 
> - Dot Product mungkin angkanya besar karena dikali jarak.
>     
> - Scalar Projection cuma peduli tenagamu: $10 \cdot \cos(60^\circ) = \mathbf{5 \text{ Newton}}$.
>     
> - Hasilnya cuma angka **5**.
>

### 3. Vector Projection (Wujud Bayangan)

Istilah kerennya: _"Projecting $\mathbf{a}$ onto $\mathbf{b}$"_.

Intuisinya:

Kalau Scalar Projection itu cuma ngasih tau "Panjang bayangannya 5 cm", Vector Projection itu bilang: "Nih, aku gambarin panah baru yang panjangnya 5 cm dan arahnya sama persis dengan B."

Jadi hasilnya bukan angka, tapi **Vektor (Panah)**.

Cara Meraciknya:

Untuk membuat vektor, kita butuh dua bahan:

1. **Ukuran (Size):** Kita ambil dari _Scalar Projection_ tadi.
    
2. **Arah (Direction):** Kita pinjam arahnya si $\mathbf{b}$.
    

Tapi tunggu, kita tidak boleh ambil panjangnya $\mathbf{b}$, kita cuma butuh arahnya. Di matematika, "Arah Murni" itu disebut **Unit Vector** ($\frac{\mathbf{b}}{|\mathbf{b}|}$).

Rumus Vector Projection:

$$\text{Vector Proj} = (\underbrace{\text{Scalar Proj}}_{\text{Ukuran}}) \times (\underbrace{\frac{\mathbf{b}}{|\mathbf{b}|}}_{\text{Arah}})$$

Kalau disederhanakan rumusnya jadi terlihat rumit (padahal konsepnya simpel):

$$\text{Vector Proj} = \left( \frac{\mathbf{a} \cdot \mathbf{b}}{|\mathbf{b}|^2} \right) \mathbf{b}$$

> **Contoh Koper:**
> 
> - Scalar Projection bilang: "Kekuatannya 5 Newton."
>     
> - Vector Projection bilang: "Kekuatannya **5 Newton**, arahnya **Mendatar ke Kanan**." (Dia menggambar panah hantu di lantai).



### Ringkasan Visual

Biar gampang diingat:

1. **Dot Product ($\mathbf{a} \cdot \mathbf{b}$):**
    
    - _Output:_ Angka Besar (Skalar).
        
    - _Arti:_ Total interaksi A dan B (panjang A $\times$ panjang B $\times$ kemiringan).
        
2. **Scalar Projection ($\frac{\mathbf{a} \cdot \mathbf{b}}{|\mathbf{b}|}$):**
    
    - _Output:_ Angka Kecil (Skalar).
        
    - _Arti:_ Panjangnya bayangan A doang (panjang A $\times$ kemiringan). Panjang B dibuang.
        
3. **Vector Projection:**
    
    - _Output:_ Gambar Panah (Vektor).
        
    - _Arti:_ Panah bayangan A yang ditempel di atas garis B.
        

Jadi, urutannya biasanya:

Hitung Dot Product dulu $\rightarrow$ Bagi panjang B buat dapet Scalar Proj $\rightarrow$ Kasih arah B buat dapet Vector Proj.

---
**Tags:** #mml-specialization #linear-algebra #dot-product #projection #scalar-projection #vector-projection