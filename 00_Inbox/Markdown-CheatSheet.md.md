# 00 - Contekan Format Markdown (Obsidian)

---
## 1. Format Teks Dasar (Text Styling)

Ini adalah teks biasa.
**Ini adalah teks Tebal (Bold)** -> Pakai dua bintang
*Ini adalah teks Miring (Italic)* -> Pakai satu bintang
***Ini Tebal dan Miring*** -> Pakai tiga bintang
~~Ini teks dicoret (Strikethrough)~~ -> Pakai dua gelombang (tilde)
==Ini teks di-highlight (Stabilo)== -> Pakai dua sama dengan (Khas Obsidian)

---
## 2. Headings (Judul)
Semakin banyak pagar (#), semakin kecil tulisannya. Gunakan untuk struktur bab.

# Judul Utama (H1) - Biasanya untuk Judul Catatan
## Sub-Judul (H2) - Untuk Bab Besar
### Sub-Sub-Judul (H3) - Untuk Sub-Bab
#### Judul Kecil (H4)
##### Judul Lebih Kecil (H5)

---
## 3. Lists (Daftar)

### Bullet Points (Tak Berurutan)
- Pakai tanda minus (-)
- Atau bisa pakai tanda bintang (*)
    - Tekan `Tab` untuk bikin anak list (sub-point)
    - Isinya menjorok ke dalam

### Numbered Lists (Berurutan)
1. Langkah pertama
2. Langkah kedua
    1. Sub-langkah (Tekan `Tab`)
    2. Sub-langkah lain
3. Langkah ketiga

### Checklist (To-Do List)
- [ ] Ini tugas yang belum selesai
- [x] Ini tugas yang sudah selesai (centang otomatis)

---
## 4. Links (Tautan)

### Link Internal (Kekuatan Utama Obsidian!)
Gunakan kurung siku dua kali untuk menghubungkan ke catatan lain di dalam Vault kamu.
- Link biasa: [[Linear-Algebra-Summary]]
- Link dengan teks beda: [[Linear-Algebra-Summary|Klik disini untuk baca Aljabar]]
- Link ke heading tertentu: [[Linear-Algebra-Summary#Eigenvalues]]

### Link Eksternal (Website)
Formatnya: `[Teks yang muncul](Link URL)`
- [Buka Google](https://google.com)
- [Coursera Imperial College](https://www.coursera.org/)

---
## 5. Coding & Syntax Highlighting
Gunakan `backtick` (tombol di sebelah kiri angka 1 di keyboard).

**Inline Code (Satu kata):**
Gunakan fungsi `print()` untuk menampilkan output.

**Block Code (Banyak baris):**
Gunakan tiga backtick (```) ditambah nama bahasanya (python).

```python
import numpy as np

def hitung_luas(p, l):
    return p * l

# Ini komentar Python
print("Hello Zaenal!")
```


---
## 6. Matematika (LaTeX) 🧮
Gunakan tanda dollar ($). Ini wajib buat kamu belajar ML.

**Inline Math (Di dalam kalimat):**
Rumus energi adalah $E=mc^2$ dan gradiennya adalah $\nabla f$.

**Block Math (Di tengah halaman):**
Gunakan dua dollar.

$$
J(\theta) = \frac{1}{2m} \sum_{i=1}^{m} (h_\theta(x^{(i)}) - y^{(i)})^2
$$

**Contoh Matriks (Linear Algebra):**
$$
A = \begin{bmatrix} 
1 & 2 \\
3 & 4 
\end{bmatrix}
$$

---
## 7. Quotes & Callouts (Kotak Info)

### Quote Biasa
> "I don't become new by promising loud."
> — Zaenal

### Callouts (Kotak Spesial Obsidian)
Bagus untuk definisi atau peringatan. Gunakan tanda `>` diikuti `[!TIPE]`.

> [!NOTE] Judul Catatan
> Ini adalah kotak catatan biasa.

> [!TIP] Tips Belajar
> Jangan lupa minum air putih saat belajar.

> [!WARNING] Peringatan
> Jangan hapus file sembarangan!

> [!DANGER] Error
> Rumus ini salah.

---
## 8. Gambar & Layout

### Gambar Biasa (Vertikal)
Cukup drag & drop gambar ke Obsidian, atau pakai format ini:
`![Nama Gambar](link_gambar.jpg)`

Kalau mau **Resize** (mengecilkan gambar), tambahkan garis lurus `|` dan angka lebar (pixel) di dalam kurung siku.
`![Nama Gambar|300](link_gambar.jpg)` (Ini akan jadi lebar 300px)

### Gambar Berdampingan (Horizontal)
Secara default Markdown menyusun gambar ke bawah (vertikal). 
Untuk membuat gambar berdampingan (kiri-kanan), kita akali pakai **Tabel**.

| Gambar 1 (Vektor A) | Gambar 2 (Vektor B) |
| :---: | :---: |
| `![[gambar1.png|200]]` | `![[gambar2.png|200]]` |
| *Keterangan 1* | *Keterangan 2* |

---
## 9. Tabel
Cara bikin tabel manual:

| Materi | Status | Sumber |
| :--- | :---: | ---: |
| Linear Algebra | ✅ Selesai | 3Blue1Brown |
| Calculus | 🔄 Proses | Coursera |
| Probability | 🔜 Nanti | Khan Academy |

*Tips: `:---` (rata kiri), `:---:` (rata tengah), `---:` (rata kanan)*

---
## 10. Garis Pemisah
Gunakan tiga garis minus (`---`) untuk memisahkan topik.

Seperti garis di bawah ini:

---
