# M02: Vector Operations - Formula Summary

This document contains a summary of the fundamental formulas discussed in Module 2, focusing on vector operations.

---

## 1. Vector Representation
- A vector $\vec{v}$ with `n` components.
$$ \vec{v} = \begin{bmatrix} v_1 \\ v_2 \\ \vdots \\ v_n \end{bmatrix} $$

---

## 2. Vector Length (Modulus / Magnitude)
- Calculates the length of a vector $\vec{v}$.
$$ |\vec{v}| = \sqrt{v_1^2 + v_2^2 + \dots + v_n^2} $$

---

## 3. The Dot Product (Inner Product)

### 3.1. Computational Definition
- Calculated by summing the products of corresponding components.
$$ \vec{r} \cdot \vec{s} = r_1s_1 + r_2s_2 + \dots + r_ns_n $$

### 3.2. Geometric Definition
- Relates the dot product to the vector lengths and the angle ($\theta$) between them.
$$ \vec{r} \cdot \vec{s} = |\vec{r}| |\vec{s}| \cos(\theta) $$

---

## 4. Key Relationships & Applications

### 4.1. Length from Dot Product
- The square of a vector's length is the dot product of the vector with itself.
$$ |\vec{v}|^2 = \vec{v} \cdot \vec{v} \implies |\vec{v}| = \sqrt{\vec{v} \cdot \vec{v}} $$

### 4.2. Angle Between Vectors
- Used to find the angle between two vectors.
$$ \cos(\theta) = \frac{\vec{r} \cdot \vec{s}}{|\vec{r}| |\vec{s}|} $$

### 4.3. Orthogonality Check
- Two non-zero vectors are mutually orthogonal if and only if their dot product is zero.
$$ \vec{r} \cdot \vec{s} = 0 \iff \vec{r} \perp \vec{s} $$

---

## 5. Projections

### 5.1. Scalar Projection
- The **length** of the "shadow" of vector $\vec{s}$ onto vector $\vec{r}$.
$$ \text{Scalar Projection} = \frac{\vec{r} \cdot \vec{s}}{|\vec{r}|} $$

### 5.2. Vector Projection
- The **vector** that represents the "shadow" of $\vec{s}$ onto $\vec{r}$.
$$ \text{proj}_{\vec{r}}(\vec{s}) = \left( \frac{\vec{r} \cdot \vec{s}}{\vec{r} \cdot \vec{r}} \right) \vec{r} $$

---
> [!NOTE]
> Perhatikan soal dibawah !
### Contoh soal sederhana : 

![[Pasted image 20251203190953.png#center]]
### Gambar: Scalar Projection (Ukuran Bayangan)

Di soal ini, pertanyaannya simpel: **"Berapa PANJANG bayangan hijau itu?"** (Ingat, hasilnya harus angka/skalar).

Mari kita hitung pakai logika "Seberapa Ngefek":

1. Hitung Total Interaksi (Dot Product):
    
    Kita kalikan komponen yang bersesuaian lalu jumlahkan.
    
    $$\mathbf{r} = [3, -4, 0]$$
    
    $$\mathbf{s} = [10, 5, -6]$$
    
    $$\mathbf{r} \cdot \mathbf{s} = (3)(10) + (-4)(5) + (0)(-6)$$
    
    $$\mathbf{r} \cdot \mathbf{s} = 30 - 20 + 0 = \mathbf{10}$$
    
    (Ternyata interaksi totalnya positif, berarti searah/mendukung).
    
2. Cari Panjang Landasan (Panjang Vektor r):
    
    Kita butuh tahu panjang si $\mathbf{r}$ sebagai pembagi.
    
    $$|\mathbf{r}| = \sqrt{3^2 + (-4)^2 + 0^2} = \sqrt{9+16} = \sqrt{25} = \mathbf{5}$$
    
3. Scalar Projection (Bayangan):
    
    "Total interaksi dibagi panjang landasan."
    
    $$\frac{10}{5} = \mathbf{2}$$
    

**Artinya:** Panjang bayangan hijau di gambar itu adalah **2 satuan**.

---
![[Pasted image 20251203191040.png#center]]
### Vector Projection (Bentuk Bayangan)

Sekarang soalnya nanya: **"Tuliskan bayangan hijau itu sebagai VEKTOR lengkap (ada arahnya)."**

Logikanya begini:

Kita sudah tahu panjang bayangannya adalah 2 (dari soal sebelumnya). Kita tinggal "meminjam" arah dari vektor $\mathbf{r}$.

1. Ambil Arah $\mathbf{r}$ (Unit Vector):
    
    Vektor $\mathbf{r}$ aslinya $[3, -4, 0]$ panjangnya 5.
    
    Supaya kita dapat "murni arah" tanpa panjang, kita bagi 5.
    
    $$\text{Arah } \mathbf{r} = [\frac{3}{5}, \frac{-4}{5}, \frac{0}{5}]$$
    
2. Kalikan dengan Panjang Bayangan (Scalar tadi):
    
    Kita mau bikin panah baru yang arahnya sama kayak $\mathbf{r}$, tapi panjangnya cuma 2.
    
    $$\text{Vector Proj} = 2 \times [\frac{3}{5}, \frac{-4}{5}, 0]$$
    
    $$\text{Vector Proj} = [\frac{6}{5}, \frac{-8}{5}, 0]$$
    

**Artinya:** Panah hijau itu secara koordinat ada di posisi $\mathbf{[1.2, -1.6, 0]}$. (Jawabanmu yang dilingkari biru itu benar!).

**Tags:** #mml-specialization #linear-algebra #formula-sheet #cheatsheet 
