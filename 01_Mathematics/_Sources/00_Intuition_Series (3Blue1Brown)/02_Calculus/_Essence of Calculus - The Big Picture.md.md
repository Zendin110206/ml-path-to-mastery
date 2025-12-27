
# Peta Konsep Intuitif: Intisari Kalkulus (3Blue1Brown)

Dokumen ini adalah rangkuman dari ide-ide besar di setiap bab "Essence of Calculus". Tujuannya adalah untuk menjadi pemicu memori yang menghubungkan semua konsep menjadi satu cerita utuh.

**Filosofi Utama:** Kalkulus adalah **seni mempelajari perubahan**. Ia memberikan alat untuk memahami dunia yang dinamis dengan cara memecah masalah kompleks menjadi potongan-potongan yang tak berhingga kecilnya, menganalisisnya, lalu menyatukannya kembali.

---

- **Ch 1: Intisari Kalkulus**
  > Memperkenalkan dua ide besar kalkulus melalui masalah luas lingkaran.
  > - **[[Integral]]:** Ditemukan saat kita mengubah masalah "menjumlahkan luas cincin-cincin tak hingga" menjadi masalah **"luas di bawah kurva"**.
  > - **[[Turunan]]:** Ditemukan saat kita bertanya "bagaimana fungsi pencari luas itu berubah?". Ini membawa kita ke ide **"kemiringan sesaat"**.
  > - **[[Teorema Fundamental Kalkulus]]:** Penemuan ajaib bahwa Integral dan Turunan adalah **operasi yang saling berlawanan**.

- **Ch 2: Paradoks Turunan**
  > Menggali lebih dalam tentang "laju perubahan sesaat" yang paradoks.
  > - **Solusi:** Turunan didefinisikan bukan di satu titik, tapi sebagai **[[Limit]]** dari kemiringan garis yang menghubungkan dua titik saat jaraknya mendekati nol.
  > - **Intuisi Visual:** Turunan adalah **kemiringan (slope) dari garis singgung**.
  > - **Cara Berpikir yang Sehat:** Turunan adalah **"aproksimasi konstan terbaik"** untuk laju perubahan di sekitar satu titik.

- **Ch 3: Rumus Turunan via Geometri**
  > Membangun intuisi di balik rumus-rumus dasar.
  > - **`d/dx (xⁿ)` (Power Rule):** Ditemukan dengan melihat bagaimana "volume" dari sebuah "hypercube" `n`-dimensi berubah saat sisinya bertambah kecil (`dx`).
  > - **`d/dx (1/x)`:** Ditemukan dengan menjaga luas sebuah persegi panjang (`x * 1/x`) tetap konstan.
  > - **`d/dx (sin x)`:** Ditemukan dengan "zoom in" pada lingkaran satuan dan menggunakan kesamaan segitiga.

- **Ch 4: Aturan Rantai & Produk**
  > Alat untuk menurunkan fungsi gabungan.
  > - **[[Aturan Produk]] (`f*g`):** Divisualisasikan sebagai perubahan luas dari sebuah persegi panjang yang kedua sisinya (`f` dan `g`) berubah. Perubahan totalnya adalah jumlah dari dua strip tambahan.
  > - **[[Aturan Rantai]] (`f(g(x))`):** Divisualisasikan sebagai "efek domino". Perubahan `dx` menyebabkan perubahan `dg`, yang kemudian menyebabkan perubahan `df`. Turunannya adalah `(df/dg) * (dg/dx)`.

- **Ch 5: Bilangan `e`**
  > Menjawab "apa turunan dari fungsi eksponensial `aˣ`?"
  > - **Penemuan Kunci:** Turunan dari `aˣ` selalu **proporsional** dengan `aˣ` itu sendiri: `d/dx (aˣ) = (Konstanta_a) * aˣ`.
  > - **Definisi `e`:** **`e`** adalah satu-satunya basis "ajaib" di mana konstanta proporsionalitasnya adalah **1**.
  > - **`d/dx (eˣ) = eˣ`**. (Kemiringannya selalu sama dengan ketinggiannya).
  > - **Konstanta Misterius:** Ternyata, `Konstanta_a = ln(a)`.

- **Ch 6: Turunan Implisit**
  > Alat untuk mencari kemiringan (`dy/dx`) pada kurva yang **bukan** fungsi `y=f(x)` (misal: lingkaran `x²+y²=25`).
  > - **Intuisi:** Bayangkan persamaan sebagai "peta ketinggian". Kurvanya adalah "garis kontur". Untuk tetap di kontur, total perubahan ketinggian (`ds`) harus nol.
  > - **`ds = (perubahan akibat dx) + (perubahan akibat dy) = 0`**. Dari sini kita bisa menemukan hubungan `dy/dx`.

- **Ch 7: Limit & Aturan L'Hôpital**
  > Meresmikan konsep "pendekatan" dan memberikan alat hitung.
  > - **Definisi Formal Limit (Epsilon-Delta):** Sebuah "permainan tantangan" untuk membuktikan bahwa sebuah fungsi menuju ke satu nilai tunggal tanpa ambiguitas.
  > - **Aturan L'Hôpital:** Jalan pintas untuk menghitung limit berbentuk `0/0`. Idenya adalah, jika di-zoom, fungsi berperilaku seperti garis singgungnya, sehingga `lim (f/g) = lim (f'/g')`.

- **Ch 8 & 9: Teorema Fundamental (Lagi)**
  > Memperkuat hubungan Integral dan Turunan.
  > - **Perspektif #1 (Ch 8):** `Jarak = ∫ Kecepatan`. Dan `Kecepatan = d/dt Jarak`. Keduanya saling membatalkan.
  > - **Perspektif #2 (Ch 9):** **Rata-rata Tinggi** sebuah kurva `f(x)` adalah `(Luas Total) / (Lebar Alas)`. Ini ternyata sama dengan **Kemiringan Total** dari kurva anti-turunannya `F(x)`.

- **Ch 10: Turunan Tingkat Lanjut**
  > Turunan dari turunan.
  > - **Turunan Kedua (`f''`):** Mengukur **kelengkungan (curvature)**. Positif = melengkung ke atas (tersenyum). Negatif = melengkung ke bawah (cemberut).
  > - **Analogi Fisik:** `Jarak → Kecepatan (f') → Percepatan (f'') → Sentakan/Jerk (f''')`.

- **Ch 11: Deret Taylor**
  > Puncak dari kalkulus turunan.
  > - **Ide Utama:** Mengaproksimasi fungsi rumit (`cos(x)`) dengan polinomial sederhana.
  > - **Resep:** Buat polinomial yang **"sifat-sifatnya"** (nilai, kemiringan, kelengkungan, dst.) **sama persis** dengan fungsi asli di satu titik.
  > - **Hasil:** Formula Deret Taylor, `f(x) ≈ f(a) + f'(a)(x-a) + (f''(a)/2!)(x-a)² + ...`.

- **Ch 12: Visualisasi Alternatif (Dilewati)**
  > Sebuah eksplorasi konseptual bonus. Intuisi utama "Turunan = Kemiringan" sudah cukup.

---
**Tags:** #calculus #summary #big-picture #3b1b-essence-of-calculus