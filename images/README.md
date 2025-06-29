# 🖼️ Folder Images

Folder ini untuk menyimpan gambar, plot, dan visualisasi yang dihasilkan dari project.

## 📁 File yang Bisa Disimpan:

- **PNG files** (`.png`) - Gambar dengan transparansi
- **JPG/JPEG files** (`.jpg`, `.jpeg`) - Gambar kompresi
- **SVG files** (`.svg`) - Gambar vektor
- **PDF files** (`.pdf`) - Dokumen dengan gambar
- **GIF files** (`.gif`) - Animasi sederhana

## 💡 Contoh Penggunaan:

```python
# Simpan plot matplotlib
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 10, 100)
y = np.sin(x)

plt.plot(x, y)
plt.title('Grafik Sinus')
plt.savefig('images/sinus_plot.png', dpi=300, bbox_inches='tight')
plt.close()

# Simpan plot dengan resolusi tinggi
plt.figure(figsize=(12, 8))
plt.plot(x, y)
plt.savefig('images/sinus_high_res.png', dpi=300)
plt.close()
```

## 🎨 Tips Visualisasi:

- Gunakan `dpi=300` untuk kualitas tinggi
- Gunakan `bbox_inches='tight'` untuk crop otomatis
- Simpan dalam format PNG untuk kualitas terbaik
- Gunakan `plt.close()` untuk menghemat memory
- Dokumentasikan parameter plot yang penting

## 📊 Jenis Plot yang Umum:

- **Line plots** - Grafik garis
- **Scatter plots** - Grafik titik
- **Bar charts** - Grafik batang
- **Histograms** - Histogram
- **Heatmaps** - Peta panas
- **3D plots** - Grafik 3 dimensi 