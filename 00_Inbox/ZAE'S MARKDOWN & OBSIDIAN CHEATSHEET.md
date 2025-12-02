# ZAE'S MARKDOWN & OBSIDIAN CHEATSHEET
# (copy–paste note ini ke Obsidian sebagai contekan)


==================================================
1. HEADING / JUDUL
==================================================

# Heading 1
## Heading 2
### Heading 3
#### Heading 4
##### Heading 5
###### Heading 6

Tinggal tambah tanda # di depan.
Disarankan maksimal sampai ### atau #### biar gak kebanyakan level.


==================================================
2. TEKS DASAR: BOLD, ITALIC, STRIKE, HIGHLIGHT
==================================================

Ini *italic* pakai satu bintang atau underscore  
Ini _italic_ juga sama

Ini **bold** pakai dua bintang  
Ini __bold__ juga sama

Ini ***bold dan italic*** kalau mau dramatis dikit

Ini ~~strikethrough~~ (coret) pakai dua tilde

Ini ==highlight== (khusus Obsidian, bakal kuning kaya stabilo)


==================================================
3. GARIS PEMISAH (HORIZONTAL RULE)
==================================================

Pakai tiga atau lebih tanda: --- atau *** atau ___

---

***

___


==================================================
4. LIST / BULLET DAN LIST BERNOMOR
==================================================

4.1. Bullet list biasa

- Item pertama
- Item kedua
    - Sub-item (indent 4 spasi atau 1 tab)
    - Sub-item lagi
- Item ketiga

Atau pakai tanda plus (+) atau bintang (*):

* Item
* Item

+ Item
+ Item


4.2. List bernomor

1. Langkah pertama
2. Langkah kedua
3. Langkah ketiga

Bahkan kalau di source kamu tulis:
1. A
2. B
3. C

Obsidan / Markdown tetap otomatis jadi 1, 2, 3.


4.3. Checklist (task list)

- [ ] Belum dikerjakan
- [x] Sudah dikerjakan
- [ ] Nugas Math for ML
    - [ ] Nonton 1 video
    - [ ] Baca catatan lagi


==================================================
5. QUOTE DAN CALLOUT (KHUSUS OBSIDIAN)
==================================================

5.1. Blockquote

> Ini adalah quote sederhana.
> Bisa dipakai untuk highlight kalimat penting.


5.2. Callout (Obsidian-style)

Format umum:

> [!TYPE] Judul opsional
> Isi callout...

Contoh:

> [!note] Catatan
> Ini catatan biasa.

> [!tip] Tip
> Ini tips penting.

> [!warning] Warning
> Hati-hati di bagian ini.

> [!quote]
> "Sometimes showing up is already a victory."


Beberapa tipe yang umum:
- note
- info
- tip
- success
- question
- warning
- failure
- bug
- example
- quote


==================================================
6. LINK: INTERNAL, EKSTERNAL, DAN AUTOLINK
==================================================

6.1. Link eksternal (ke web)

[Text yang muncul](https://example.com)

Contoh:
[Channel 3Blue1Brown](https://www.youtube.com/@3blue1brown)

6.2. Link internal (wikilink Obsidian)

[[Nama Note Lain]]

Contoh:
[[Essence of Linear Algebra - Summary]]

Kalau mau link ke heading di dalam note:

[[Nama Note#Heading Tertentu]]

Contoh:
[[Math for ML - Notes#Linear Algebra]]

6.3. Link + alias (tampilan beda dari nama file)

[[Nama Note Sebenarnya|teks yang muncul]]

Contoh:
[[Essence of Calculus - Notes|my calculus notes]]


==================================================
7. GAMBAR: SINGLE, VERTIKAL, DAN SAMPING-SAMPINGAN
==================================================

7.1. Menyisipkan gambar sederhana

![Alt text gambar](path/ke/gambar.png)

Kalau gambar ada di folder yang sama:

![Diagram gradient descent](gradient_descent.png)

Kalau gambar berada di folder `assets/img`:

![Loss curve](assets/img/loss-curve.png)


7.2. Gambar yang di-embed pakai syntax Obsidian

![[nama-file-gambar.png]] 

Contoh (kalau gambar ada di vault):

![[gradient-descent.png]]


7.3. Beberapa gambar VERTIKAL (atas–bawah)

Cukup tulis satu per baris:

![[plot-loss.png]]
![[plot-accuracy.png]]
![[plot-weights.png]]


7.4. Beberapa gambar HORISONTAL (samping-sampingan)

Cara 1 – pakai tabel:

| Loss               | Accuracy               |
| ------------------ | ---------------------- |
| ![[plot-loss.png]] | ![[plot-accuracy.png]] |

Cara 2 – pakai HTML (kadang perlu tweak CSS):

<div style="display: flex; gap: 8px;">
  <img src="plot-loss.png" width="250">
  <img src="plot-accuracy.png" width="250">
</div>

Kalau pakai Obsidian embed:

<div style="display: flex; gap: 8px;">
  ![[plot-loss.png|250]]
  ![[plot-accuracy.png|250]]
</div>

Catatan:
- `|250` setelah nama file = set lebar 250px
- `display:flex` bikin mereka sejajar horizontal


==================================================
8. TABEL
==================================================

Tabel standar Markdown:

| Kolom 1 | Kolom 2 | Kolom 3 |
| ------- | ------- | ------- |
| data 1  | data 2  | data 3  |
| a       | b       | c       |

Rapiin pakai garis `|` dan `-`.

Format align:

| Left align | Center align | Right align |
|:-----------|:------------:|------------:|
| kiri       | tengah       | kanan       |
| kiri2      | tengah2      | kanan2      |


==================================================
9. TAG / HASHTAG (UNTUK PENGORGANISASIAN)
==================================================

Gunakan #tag di mana saja di note:

#math #ml #linear-algebra

Contoh pemakaian di kalimat:

Hari ini belajar eigenvalues dan eigenvectors #math #linear-algebra

Obsidian akan meng-index tag untuk browsing cepat.


==================================================
10. EMBED NOTE / BLOCK DI OBSIDIAN
==================================================

10.1. Embed satu note di note lain

![[Nama Note]]

Contoh:

![[Essence of Linear Algebra - Summary]]


10.2. Embed heading tertentu dari note lain

![[Nama Note#Nama Heading]]

Contoh:

![[Math for ML - Notes#Gradient Descent]]


10.3. Embed block tertentu (pakai block ID ^)

1) Di note target, tandai block:

Ini paragraf penting tentang gradient descent.^gd-expl1

2) Di note lain, embed block itu:

![[Math for ML - Notes#^gd-expl1]]


==================================================
11. INLINE CODE & CODE BLOCK (PENDEK SAJA)
==================================================

Untuk potongan kode pendek (inline):

`np.dot(A, x)`

Untuk code block (misalnya contoh pseudo):

```python
# Example
for epoch in range(10):
    loss = compute_loss(...)
```

# ==================================================  
12. KOMENTAR (HANYA MUNCUL DI SOURCE, BUKAN DI PREVIEW)

Gunakan komentar HTML:

<!-- Ini komentar. Di editor kelihatan, di mode preview tidak muncul. -->

Untuk komentar gaya Obsidian:

%% Ini komentar juga, gaya Obsidian.  
Akan disembunyikan di Reading View. %%

# ==================================================  
13. LINE BREAK / BARIS BARU

Dalam Markdown:

Ini baris pertama  
Ini baris kedua

Perhatikan ada dua spasi di akhir `baris pertama` untuk pindah ke baris baru.  
Atau sisakan satu baris kosong:

Ini paragraf pertama.

Ini paragraf kedua.

# ==================================================  
14. STRUKTUR NOTE HARIAN / STUDI (CONTOH TEMPLATE)

# Day 22 – Essence of Calculus Wrap-up

## Mood / State

- lonely but moving
    
- a bit tired, but still trying
    

## What I studied

- Finished 3Blue1Brown – Essence of Calculus (Chapter 8–10)
    
- Started Taylor series intuition (Chapter 11)
    

## Key ideas

- Derivatives as rate of change, gradients in R^n
    
- Integral as area / accumulation
    
- Taylor series: approximate complex functions with polynomials
    

## Questions

- Why does Taylor series converge for some functions but not others?
    
- How does this connect to optimization for ML?
    

## Tiny win

- I showed up and studied 2 hours today, even after a bad mood.
    

#math #calculus #ml

# ==================================================  
END OF CHEATSHEET


---

Kamu bisa:

1. Buka Obsidian → buat note baru → paste isi code block di atas.  
2. Simpan sebagai `00-markdown-cheatsheet` atau `Markdown Guide`.  
3. Setiap kali lupa format, tinggal buka note itu dan **copy bagian yang kamu mau**.

Kalau nanti kamu mau bikin **template khusus** (misal template “Math Note”, template “Project Note”, template “Daily Log”), kita bisa buat 2–3 file contoh lagi yang siap pakai 🧠✨
