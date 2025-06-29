# 📊 Folder Data

Folder ini untuk menyimpan file-file data yang digunakan dalam project.

## 📁 File yang Bisa Disimpan:

- **CSV files** (`.csv`) - Data tabular
- **JSON files** (`.json`) - Data terstruktur
- **Text files** (`.txt`) - Data teks
- **Excel files** (`.xlsx`, `.xls`) - Data spreadsheet
- **Database files** (`.db`, `.sqlite`) - Database lokal

## 💡 Contoh Penggunaan:

```python
# Baca file CSV
import pandas as pd
df = pd.read_csv('data/dataset.csv')

# Baca file JSON
import json
with open('data/config.json', 'r') as f:
    config = json.load(f)

# Simpan hasil
df.to_csv('data/results.csv', index=False)
```

## 🔒 Tips:

- Backup data penting secara berkala
- Gunakan format yang sesuai dengan kebutuhan
- Dokumentasikan struktur data
- Jangan commit file data yang terlalu besar ke git 