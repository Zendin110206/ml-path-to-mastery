


> [!summary] One-sentence summary
> Satu kalimat: konsep ini tentang apa dan dipakai untuk apa.

**Goal of this note:**  
Tuliskan apa yang ingin kamu pahami setelah membaca / nulis note ini.
Misal: “Memahami vektor sebagai objek geometri *dan* objek abstrak di ruang parameter.”

---

## 1. Trigger Problem / Motivation

- **Context:**  
  Jelaskan konteks sederhana (data apa? kasus apa?).
- **Goal / Question:**  
  Apa yang ingin diselesaikan? (misal: “mencari parameter terbaik”, “memodelkan data bising”, dll).
- **Key Idea:**  
  1–3 bullet yang menjelaskan *inti ceritanya*.

> [!example] Example scenario  
> Singkatkan cerita real-nya (histogram tinggi badan, fitting Gaussian, dll).

---

## 2. Formal Setup (Mathematical View)

- **Objects involved:**  
  - Apa saja objek matematika di sini? (vektor, matriks, fungsi, parameter, dsb).
- **Notation:**  
  - Misal:  
    - \( \mu \): mean  
    - \( \sigma \): standard deviation  
    - \( \theta \): parameter vector

- **Main formula(s):**  
  Tulis rumus utama di sini (kalau ada):

  $$ \text{Badness}(\mu, \sigma) = \sum (data\_asli - prediksi\_model)^2 $$

  Atau:
  
  $$ f(x) = \frac{1}{\sigma\sqrt{2\pi}} \exp\left(-\frac{(x-\mu)^2}{2\sigma^2}\right) $$

---

## 3. Geometric / Visual Intuition

- Jelaskan gambar mentalnya:
  - Ruang parameter seperti apa? (contoh: peta 2D dengan sumbu \( \mu \) dan \( \sigma \)).
  - Permukaan “badness” (lanskap 3D, lembah, puncak).
  - Hubungan konsep dengan “panah” / perpindahan (vektor).

> [!note] Visualization hint  
> Bayangkan mangkok / lembah. Titik terbawah = solusi.  
> Garis kontur = garis dengan nilai “badness” sama.

---

## 4. Main Concept Reframed

> [!important] Key idea
> Tulis dalam 2–4 kalimat: “Apa sebenarnya konsep ini?”

Contoh struktur:

- **Dulu**: vektor = panah di ruang 2D / 3D.  
- **Sekarang**: vektor = “posisi” atau “langkah” di *ruang apa pun* (termasuk ruang parameter).  
- Vektor \([ \Delta \mu, \Delta \sigma ]\) = satu langkah kecil di peta \( \mu-\sigma \).

---

## 5. Connections to Other Concepts

- **Terkait dengan:**
  - [[Vektor]]
  - [[Gradien dan Turunan]]
  - [[Optimisasi (Gradient Descent)]]
- **Peran di Machine Learning:**
  - di mana konsep ini muncul? (training, loss, parameter update, dsb)

> [!tip] Mental map  
> Konsep ini paling gampang diingat kalau kamu menghubungkannya dengan:  
> - (contoh) “turun lembah”,  
> - “ruang parameter”,  
> - “langkah kecil = vektor”.

---

## 6. Mini Example (dengan angka)

- Setup contoh kecil:
  - Misal: data 3 titik, model sederhana, 1–2 parameter.
- Tunjukkan:
  - Bagaimana parameter diubah.
  - Apa artinya “langkah vektor” di sini.

Kalau malas detail angka:
- Cukup jelaskan contoh verbal singkat.

---

## 7. Common Pitfalls / Misconceptions

- ❌ Vektor cuma di ruang fisik (x, y, z).  
- ❌ Vektor = hanya “arah”, bukan “posisi”.  
- ❌ Parameter space dianggap abstrak “ga penting”.

> [!warning] Watch out  
> Catat hal-hal yang sering bikin bingung kamu sendiri.

---

## 8. TL;DR – In My Own Words

Tulis 3–5 bullet:

- Vektor = ...
- Di sini, vektor dipakai untuk ...
- Inti “aha moment” aku: ...

---

**Tags:** #course-name #topic #math #ml #intuition
**Linked concepts:** [[Vektor]] [[Aljabar Linear]] [[Kalkulus]] [[Optimisasi]]


