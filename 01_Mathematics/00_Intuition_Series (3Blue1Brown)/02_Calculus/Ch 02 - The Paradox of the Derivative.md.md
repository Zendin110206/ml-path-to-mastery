# Ch 02: Paradoks Turunan

**Tujuan Bab:** Menggali lebih dalam tentang **[[Turunan]]**, menghadapi paradoks "laju perubahan sesaat", dan membangun definisi yang kokoh dan intuitif menggunakan konsep **[[Limit]]**.

---

## 1. Paradoks Inti: "Laju Perubahan Sesaat"

- **Masalah:** Frasa "laju perubahan sesaat" (instantaneous rate of change) sebenarnya adalah sebuah **oksimoron** (kontradiksi logis).
  - **"Perubahan"** membutuhkan perbandingan antara **dua titik** waktu/posisi yang berbeda.
  - **"Sesaat"** berarti kita hanya melihat pada **satu titik** tunggal.

- **Pertanyaan Paradoks:** Bagaimana kita bisa mengukur "perubahan" jika kita hanya melihat "satu momen"? Ini seperti mencoba mengetahui kecepatan mobil hanya dari satu foto statis.

---

## 2. Solusi Praktis (Aproksimasi Dunia Nyata)

- **Bagaimana Speedometer Bekerja:** Speedometer tidak melakukan hal yang mustahil. Ia "curang" dengan cara yang cerdas.
- Ia mengukur perubahan jarak yang **sangat kecil (`ds`)** dalam interval waktu yang **sangat singkat (`dt`)**, misalnya 0.01 detik.
- Lalu ia menghitung rasio: **`Kecepatan ≈ ds / dt`**.
- Ini adalah **aproksimasi** dari kecepatan sesaat.

- **Visualisasi:**
  - `dt` adalah "langkah maju" (run) yang sangat kecil di sumbu horizontal.
  - `ds` adalah "langkah naik" (rise) yang dihasilkan di sumbu vertikal.
  - Rasio `ds / dt` adalah **kemiringan (slope) dari sebuah garis lurus (garis sekan)** yang menghubungkan dua titik yang sangat berdekatan di grafik.

---

## 3. Solusi Matematis (Jawaban yang Eksak)

- **Masalah dengan Aproksimasi:** Jawabannya bergantung pada seberapa kecil `dt` yang kita pilih. Ini tidak presisi.
- **Ide Jenius Kalkulus (LIMIT):** Daripada memilih satu `dt` spesifik, mari kita tanyakan:
  > "Angka apa yang **didekati** oleh rasio `ds/dt` saat `dt` menjadi **semakin kecil dan semakin kecil mendekati nol**?"

- **Definisi TURUNAN:** Turunan adalah **nilai LIMIT** dari rasio `ds/dt` saat `dt` mendekati nol.

### "Aha!" Moment Visual
- Garis yang menghubungkan dua titik dekat disebut **garis sekan**.
- Saat dua titik itu meluncur semakin dekat (saat `dt` → 0), garis sekan itu akan "berubah" menjadi sebuah garis yang hanya **menyentuh kurva di satu titik**.
- Garis "penyentuh" ini disebut **garis singgung (tangent line)**.
- **Kesimpulan:**
  > **[[Turunan]]** secara geometris adalah **kemiringan (slope) dari garis singgung** di satu titik.

Ini adalah solusi elegan dari matematika untuk paradoks awal. Kita berhasil mendefinisikan "kemiringan di satu titik".

---

## 4. Cara Berpikir yang "Sehat" tentang Turunan

- Karena "perubahan sesaat" itu paradoks, cara berpikir yang lebih akurat tentang turunan adalah:
  > Turunan adalah **aproksimasi konstan TERBAIK** untuk laju perubahan di sekitar satu titik.

- **Contoh Paradoks `s(t) = t³` di `t=0`:**
  - **Pertanyaan:** Apakah mobil bergerak di `t=0`?
  - **Jawaban #1 (dari Turunan):** Turunan di `t=0` adalah `0`. Sepertinya mobil diam.
  - **Jawaban #2 (dari Logika):** Jika diam, kapan ia mulai bergerak?
  - **Resolusi:** Turunan `0` **tidak berarti** mobil statis. Itu hanya berarti **aproksimasi konstan terbaik** untuk kecepatannya di sekitar `t=0` adalah `0 m/s`. Mobilnya *memang* bergerak, tapi dengan cara yang sangat lambat di awal sehingga laju perubahan rata-ratanya mendekati nol saat interval waktunya menyusut.

---
**Tags:** #calculus #derivatives #limits #paradox #3b1b-essence-of-calculus