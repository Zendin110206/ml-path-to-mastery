# Ch 07: Limit, Aturan L'Hôpital, dan Definisi Epsilon-Delta

**Tujuan Bab:** Meresmikan intuisi tentang "pendekatan" (`dx → 0`) dengan konsep **[[Limit]]**, dan memperkenalkan alat-alat yang terkait.

---

## 1. Definisi Formal Turunan

- **Intuisi Kita Sejauh Ini:** `Turunan ≈ df / dx` untuk `dx` yang sangat kecil.
- **Definisi Formal:** [[Turunan]] adalah **nilai yang dituju (limit)** oleh rasio ini saat `dx` **mendekati nol**.
- **Notasi Formal:**
  $$ \frac{df}{dx} = \lim_{h\to0} \frac{f(x+h) - f(x)}{h} $$
- **Penjelasan Notasi:**
  - `lim`: Singkatan dari **Limit**.
  - `h`: Nama lain untuk `dx` (untuk menekankan bahwa ini adalah angka biasa yang kecil, bukan "infinitesimal").
  - `f(x+h) - f(x)`: Ini adalah `df`, perubahan pada output.
- **Intinya:** Intuisi `df/dx` kita adalah "shorthand" yang sangat bagus untuk definisi formal ini. Keduanya adalah cara berpikir yang valid.

---

## 2. Definisi Epsilon-Delta (Arti "Mendekati")

- **Masalah:** Apa artinya "mendekati" secara matematis yang presisi dan anti-bocor?
- **Ide Intuitif:** Saat input `x` semakin dekat ke `c`, output `f(x)` semakin dekat ke nilai limit `L`.
- **Definisi sebagai "Permainan Tantangan":**
  - **Penantang (skeptis):** "Aku mau outputnya berada dalam jarak **`ε`** (epsilon) dari `L`. `ε` ini bisa sekecil apa pun yang aku mau."
  - **Kamu (pembukti):** "Oke. Aku bisa menemukan sebuah rentang input di sekitar `c` (selebar **`δ`** delta) di mana **semua** input di dalam rentang itu akan menghasilkan output yang memenuhi tantanganmu."
- **Kesimpulan:** Sebuah limit `L` **ada** jika kamu bisa **selalu memenangkan permainan ini**, tidak peduli seberapa kecil `ε` yang diberikan oleh si penantang.

- **Kapan Limit Tidak Ada?**
  Jika ada "lompatan" pada grafik. Si penantang bisa memilih `ε` yang lebih kecil dari ukuran lompatan, dan kamu tidak akan pernah bisa menemukan `δ` yang berhasil. Ini karena input dari sisi kiri dan kanan menuju ke nilai `L` yang berbeda.

---

## 3. Aturan L'Hôpital (Trik Menghitung Limit `0/0`)

- **Masalah:** Bagaimana cara menghitung limit dari sebuah fungsi `f(x)/g(x)` di titik `a` di mana `f(a)=0` dan `g(a)=0`? Kita tidak bisa langsung memasukkan angkanya karena akan menjadi `0/0` (bentuk tak tentu).

- **Ide Intuitif (Zoom In):**
  - Jika kita "zoom in" sangat dekat ke titik `a` pada sebuah grafik, kurva itu akan terlihat seperti **garis lurus** (garis singgungnya). Kemiringan garis itu adalah **turunan**.
  - Jadi, di dekat `a`, perilaku `f(x)` bisa diaproksimasi oleh `f'(a) * (x-a)`.
  - Demikian pula, `g(x)` bisa diaproksimasi oleh `g'(a) * (x-a)`.

- **"Aha!" Moment:**
  $$ \frac{f(x)}{g(x)} \approx \frac{f'(a) \cdot (x-a)}{g'(a) \cdot (x-a)} $$
  Suku `(x-a)` bisa dicoret!
  
- **Aturan L'Hôpital:**
  > Jika `lim f(x)/g(x)` menghasilkan bentuk `0/0`, maka limitnya **SAMA DENGAN** `lim f'(x)/g'(x)`.

- **Cara Pakai:**
  1.  Pastikan limitnya berbentuk `0/0`.
  2.  **Turunkan bagian atas** dan **turunkan bagian bawah** secara terpisah.
  3.  Hitung limit dari rasio turunan yang baru.

---
**Tags:** #calculus #limits #derivatives #epsilon-delta #lhopitals-rule #3b1b-essence-of-calculus