# Ch 13: Perubahan Basis

**Tujuan Bab:** Memahami konsep **[[Basis]] alternatif** dan cara "menerjemahkan" deskripsi vektor dan transformasi dari satu "bahasa" (sistem koordinat) ke bahasa lain.

---

## 1. Ide Utama: "Bahasa" yang Berbeda untuk Vektor yang Sama

- **Sistem Koordinat Standar (Bahasa Kita):**
  - Menggunakan [[Vektor Basis]] `î` dan `ĵ`.
  - Koordinat `[3, 2]` berarti `3 * î + 2 * ĵ`.

- **Sistem Koordinat Alternatif (Bahasa Jennifer):**
  - Menggunakan vektor basis lain, sebut saja `b₁` dan `b₂`.
  - Di dunianya, `b₁` adalah `[1, 0]` dan `b₂` adalah `[0, 1]`.
  - Vektor yang sama bisa punya koordinat yang sangat berbeda di bahasanya.

- **Intinya:** Kita semua melihat **vektor yang sama** di ruang, tapi kita menggunakan **angka (koordinat) yang berbeda** untuk mendeskripsikannya, tergantung pada "penggaris" (vektor basis) yang kita gunakan.

---

## 2. Menerjemahkan Vektor

### Dari Bahasa Jennifer ke Bahasa Kita
- **Masalah:** Jennifer menyebut sebuah vektor dengan koordinat `[-1, 2]`. Apa artinya itu bagi kita?
- **Logika:** Di bahasanya, itu berarti `-1 * b₁ + 2 * b₂`.
- **Matriks Penerjemah (`A`):**
  - Buat sebuah matriks di mana **kolom-kolomnya adalah vektor basis Jennifer, tapi ditulis dalam bahasa kita**.
  - Untuk menerjemahkan vektor `v_jen` dari bahasanya ke bahasa kita (`v_kita`), hitung:
    > **`v_kita = A * v_jen`**
- **Intuisi:** Matriks `A` adalah sebuah [[Transformasi Linear]] yang mengubah *grid kita* menjadi *grid Jennifer*. Secara numerik, ia menerjemahkan deskripsi *vektor Jennifer* menjadi *vektor kita*.

### Dari Bahasa Kita ke Bahasa Jennifer
- **Masalah:** Kita punya vektor `[3, 2]`. Apa koordinatnya menurut Jennifer?
- **Logika:** Kita butuh "mesin penerjemah" yang melakukan kebalikannya, yaitu [[Matriks Invers]].
- **Matriks Penerjemah (`A⁻¹`):**
  - Gunakan **invers** dari matriks penerjemah sebelumnya: `A⁻¹`.
  - Untuk menerjemahkan `v_kita` ke `v_jen`, hitung:
    > **`v_jen = A⁻¹ * v_kita`**

---

## 3. Menerjemahkan Transformasi

- **Masalah:** Kita punya sebuah transformasi (misal: Rotasi 90°). Matriks kita untuk ini adalah `M`. Bagaimana Jennifer akan menulis matriks untuk **aksi yang sama persis** di dalam bahasanya? Sebut matriksnya `M_jen`.

- **Alur Logika Penerjemahan (Perjalanan 3 Langkah):**
  1.  **Terjemahkan ke Duniamu:** Ambil vektor Jennifer (`v_jen`), ubah ke bahasamu (`A * v_jen`).
  2.  **Lakukan Aksi di Duniamu:** Lakukan transformasi `M` pada vektor hasil (`M * (A * v_jen)`).
  3.  **Terjemahkan Kembali ke Dunianya:** Ubah hasilnya kembali ke bahasa Jennifer (`A⁻¹ * (M * A * v_jen)`).

- **Menggabungkan Menjadi Satu "Mesin Super":**
  Seluruh perjalanan 3 langkah itu bisa dirangkum menjadi satu matriks tunggal: **`A⁻¹ * M * A`**. Matriks inilah resep yang dicari Jennifer.
  > **`M_jen = A⁻¹ * M * A`**

---

## 4. Intisari Ekspresi `A⁻¹ M A` ("Empati Matematis")

- Ekspresi `A⁻¹ M A` selalu menyiratkan sebuah **perubahan sudut pandang**.
- **Cara Membacanya (dari Kanan ke Kiri):**
  1.  **`A`:** "Pergi dari dunia Jennifer ke duniaku."
  2.  **`M`:** "Lakukan aksi di duniaku."
  3.  **`A⁻¹`:** "Kembali dari duniaku ke dunia Jennifer."
- **Keseluruhan `A⁻¹ M A`**: Sebuah matriks tunggal yang melakukan aksi `M`, tapi sepenuhnya dari **perspektif Jennifer** (input dalam bahasanya, output dalam bahasanya).

---
**Tags:** #linear-algebra #change-of-basis #transformations #matrices #3b1b-essence-of-linear-algebra