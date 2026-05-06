# Ch 02: Kombinasi Linear, Span, dan Vektor Basis

**Tujuan Bab:** Membangun cara berpikir baru tentang koordinat sebagai "resep", dan memperkenalkan tiga konsep fundamental yang menjadi bahasa aljabar linear: Kombinasi Linear, Span, dan Vektor Basis.

---

## Cara Baru Melihat Koordinat: Sebuah Resep

Biasanya kita melihat koordinat `[3, -2]` sebagai sebuah alamat. Cara berpikir aljabar linear adalah melihatnya sebagai **resep untuk membangun sebuah vektor**.

- **Bahan Dasar (Vektor Basis Standar):**
    - **$\hat{i}$ (i-hat):** Vektor satuan (panjang 1) di sumbu X. Direpresentasikan sebagai `[1, 0]`.
    - **$\hat{j}$ (j-hat):** Vektor satuan (panjang 1) di sumbu Y. Direpresentasikan sebagai `[0, 1]`.

- **Resepnya:** Angka-angka di dalam koordinat adalah **skalar** (faktor pengali) untuk setiap vektor basis.

  > **Vektor $\begin{bmatrix} 3 \\ -2 \end{bmatrix}$ dibaca sebagai: `(3 * î) + (-2 * ĵ)`**

- **Visualisasi:**
  Bayangkan panah $\hat{i}$ diregangkan 3x lipat. Lalu, bayangkan panah $\hat{j}$ dibalik arahnya dan diregangkan 2x lipat. Jika kedua hasil ini dijumlahkan secara ujung-ke-pangkal, hasilnya adalah vektor `[3, -2]`.

Proses mengalikan setiap vektor dengan skalar lalu menjumlahkan hasilnya ini adalah **[[Kombinasi Linear]]**.

---

## Span (Jangkauan)

**Span** adalah jawaban dari pertanyaan fundamental:

> "Dengan satu set 'bahan dasar' (vektor) yang kita punya, titik mana saja di 'ruang' yang bisa kita capai?"

**Definisi:** Span dari beberapa vektor adalah **himpunan SEMUA kemungkinan hasil kombinasi linear** dari vektor-vektor tersebut.

#### Span di 2D

- **Dua Vektor (Arah Beda):**
  - **Span:** Seluruh bidang 2D.
  - **Visualisasi:** Bayangkan kamu punya dua tuas kontrol. Satu tuas mengontrol peregangan vektor pertama, tuas kedua mengontrol peregangan vektor kedua. Dengan memutar-mutar kedua tuas, ujung dari vektor hasil bisa mencapai **setiap titik** di bidang 2D.

- **Dua Vektor (Arah Sama / Kolinear):**
  - **Span:** Hanya sebuah **garis lurus**.
  - **Visualisasi:** Kedua tuas kontrolmu ternyata mendorong ke arah yang sama. Kamu "terjebak" di satu garis dan tidak bisa keluar darinya.

#### Span di 3D

- **Dua Vektor (Arah Beda):**
  - **Span:** Sebuah **bidang datar (2D)** yang melewati titik nol di dalam ruang 3D.
  - **Visualisasi:** Bayangkan dua vektor di ruang 3D. Semua kemungkinan campurannya akan membentuk sebuah "lembaran kertas" tak berhingga yang mengambang di ruang.

- **Tiga Vektor:**
  - **Span:** Seluruh ruang 3D, **ASALKAN** vektor ketiga tidak berada di dalam span (bidang) dua vektor pertama.
  - **Visualisasi:** Bayangkan "lembaran kertas" dari dua vektor pertama. Vektor ketiga yang menunjuk "keluar" dari lembaran itu akan memungkinkanmu mencapai titik mana pun di atas atau di bawah lembaran itu, mengisi seluruh ruang.

---

## Ketergantungan & Kebebasan Linear

Ini adalah istilah untuk mendeskripsikan "keredundanan" dalam satu set vektor.

- **Bergantung Linear (Linearly Dependent):**
  - **Artinya:** Ada vektor yang **berlebihan/redundant**. Menghapusnya tidak mengurangi span.
  - **Visualisasi:** Vektor ketiga yang terletak di atas "lembaran kertas" yang sudah dibentuk oleh dua vektor pertama. Vektor ketiga ini tidak memberikan "arah baru".

- **Bebas Linear (Linearly Independent):**
  - **Artinya:** **Tidak ada vektor yang redundant**. Setiap vektor memberikan "dimensi" baru yang berharga pada span.
  - **Visualisasi:** Vektor ketiga yang menunjuk "keluar" dari "lembaran kertas". Ia menambahkan dimensi baru pada jangkauan kita.

---

## Definisi Basis yang Sebenarnya

> **Basis** dari sebuah ruang adalah **himpunan vektor yang BEBAS LINEAR dan MERENTANG (SPAN) seluruh ruang tersebut.**

Mari kita pecah artinya:
- **"Merentang (Span) seluruh ruang"**: Set vektor ini **CUKUP** untuk mencapai setiap titik di ruang itu.
- **"Bebas Linear"**: Set vektor ini **EFISIEN**. Tidak ada vektor yang sia-sia atau berlebihan; kita menggunakan jumlah vektor seminimal mungkin.

Contoh paling sederhana: Himpunan **{ $\hat{i}$, $\hat{j}$ }** adalah basis untuk ruang 2D.

---
**Tags:** #linear-algebra #linear-combinations #span #basis-vectors #3b1b-essence-of-linear-algebra````