# 📚 Panduan Lengkap: Virtual Environment & Jupyter Notebook

## 🎯 Apa itu Virtual Environment?

**Virtual Environment** adalah "kamar terpisah" untuk setiap project Python. Setiap project punya package dan versi Python sendiri, sehingga tidak ada konflik antar project.

### Analogi Sederhana:
```
🏠 Rumah (Komputer Anda)
├── 🏠 Kamar A (Project A) - venv_A
├── 🏠 Kamar B (Project B) - venv_B  
└── 🏠 Kamar C (Project C) - venv_C
```

## 🚀 Cara Menggunakan Project Ini

### 1. **Masuk ke Folder Project**
```bash
cd "Rekayasa Komputasional"
```

### 2. **Nyalakan Virtual Environment**
```bash
source venv/bin/activate
```
**Tanda berhasil:** Prompt berubah menjadi `(venv) ➜  Rekayasa Komputasional`

### 3. **Jalankan Jupyter Lab**
```bash
jupyter lab
```

### 4. **Buka Browser**
- Buka URL yang muncul di terminal (biasanya `http://localhost:8888`)
- Buka file `bisection.ipynb`
- Pilih kernel **"Python (venv)"**

### 5. **Matikan Virtual Environment (Setelah Selesai)**
```bash
deactivate
```

## 📁 Struktur Project

```
📁 Rekayasa Komputasional/
├── 🐍 venv/                    # Virtual environment (JANGAN edit!)
├── 📄 bisection.ipynb         # Notebook metode bisection
├── 📄 README.md               # File panduan ini
├── 📁 data/                   # Folder untuk file data
├── 📁 images/                 # Folder untuk gambar/plot
└── 📁 src/                    # Folder untuk source code
```

## ⚡ Perintah Penting

### **Virtual Environment**
```bash
# Nyalakan venv
source venv/bin/activate

# Matikan venv
deactivate

# Cek status venv
echo $VIRTUAL_ENV
```

### **Package Management**
```bash
# Install package baru
pip install nama_package

# Lihat package yang terinstall
pip list

# Export list package
pip freeze > requirements.txt

# Install dari requirements.txt
pip install -r requirements.txt
```

### **Jupyter**
```bash
# Jalankan Jupyter Lab
jupyter lab

# Jalankan Jupyter Notebook
jupyter notebook

# Stop Jupyter (Ctrl+C di terminal)
```

## 🎮 Cara Menjalankan Notebook

### **Di Jupyter Lab:**
1. **Buka notebook** `bisection.ipynb`
2. **Pilih kernel** "Python (venv)" di pojok kanan atas
3. **Jalankan cells:**
   - `Shift + Enter` = Jalankan cell + pindah ke cell berikutnya
   - `Ctrl + Enter` = Jalankan cell tanpa pindah
   - `Alt + Enter` = Jalankan cell + buat cell baru

### **Di Terminal:**
```bash
# Jalankan notebook dari terminal
jupyter nbconvert --to notebook --execute bisection.ipynb
```

## 📝 Menambah File Baru

### **File Python (.py)**
```bash
# Buat file baru
touch new_file.py

# Edit dengan text editor
nano new_file.py
# atau
code new_file.py
```

### **File Notebook (.ipynb)**
- Klik tombol **"+"** di Jupyter Lab
- Pilih **"Python 3"** atau **"Python (venv)"**

### **File Data (.csv, .json)**
```bash
# Buat folder data
mkdir data

# Copy file ke folder data
cp /path/to/file.csv data/
```

## 🔧 Troubleshooting

### **Error: "ipykernel not found"**
```bash
# Aktifkan venv dulu
source venv/bin/activate

# Install ipykernel
pip install ipykernel

# Register kernel
python -m ipykernel install --user --name=venv --display-name="Python (venv)"
```

### **Error: "Package not found"**
```bash
# Pastikan venv aktif
source venv/bin/activate

# Install package yang dibutuhkan
pip install nama_package
```

### **Jupyter tidak bisa dibuka**
```bash
# Cek apakah port 8888 sudah digunakan
lsof -i :8888

# Kill process jika perlu
kill -9 PID_NUMBER

# Jalankan Jupyter di port lain
jupyter lab --port=8889
```

### **Kernel tidak muncul**
```bash
# Restart Jupyter
# Atau register kernel lagi
python -m ipykernel install --user --name=venv --display-name="Python (venv)"
```

## 📚 Metode Bisection

### **Apa itu Metode Bisection?**
Metode numerik untuk mencari akar fungsi dengan membagi interval menjadi dua bagian berulang kali.

### **Algoritma:**
1. Pilih interval [a, b] dimana f(a) dan f(b) berbeda tanda
2. Hitung titik tengah c = (a + b) / 2
3. Evaluasi f(c)
4. Update interval berdasarkan tanda f(c)
5. Ulangi sampai toleransi tercapai

### **Fungsi dalam Project:**
- `f(x) = x² - 2x - 3`
- Akar: x = 3 dan x = -1
- Toleransi: ε = 10⁻⁴

## 🎯 Tips & Best Practices

### **✅ Yang Harus Dilakukan:**
- Selalu aktifkan venv sebelum kerja
- Matikan venv setelah selesai
- Backup project secara berkala
- Gunakan git untuk version control

### **❌ Yang Tidak Boleh:**
- Edit folder `venv/`
- Install package tanpa venv aktif
- Lupa matikan venv
- Hapus folder `venv/`

### **💡 Tips Tambahan:**
- Gunakan `requirements.txt` untuk share project
- Dokumentasikan perubahan di README
- Test kode sebelum commit
- Backup data penting

## 🔗 Link Berguna

- [Python Virtual Environment](https://docs.python.org/3/tutorial/venv.html)
- [Jupyter Documentation](https://jupyter.org/documentation)
- [NumPy Documentation](https://numpy.org/doc/)
- [Matplotlib Documentation](https://matplotlib.org/)

## 📞 Bantuan

Jika ada masalah:
1. Cek status venv: `echo $VIRTUAL_ENV`
2. Restart Jupyter
3. Reinstall package yang bermasalah
4. Cek error message di terminal

---

**Selamat belajar! 🚀**
*Dibuat untuk memudahkan penggunaan Virtual Environment dan Jupyter Notebook* 