# 💻 Folder Source Code (src)

Folder ini untuk menyimpan file-file Python yang berisi fungsi, kelas, dan modul yang dapat digunakan kembali.

## 📁 File yang Bisa Disimpan:

- **Python modules** (`.py`) - Fungsi dan kelas
- **Configuration files** (`.py`) - File konfigurasi
- **Utility scripts** (`.py`) - Script pembantu
- **Test files** (`.py`) - Unit tests

## 💡 Contoh Penggunaan:

### **numerical_methods.py**
```python
"""
Modul untuk metode numerik
"""

import numpy as np

def bisection_method(f, a, b, tol=1e-6, max_iter=100):
    """
    Implementasi metode bisection
    
    Parameters:
    f: function - Fungsi yang akarnya dicari
    a, b: float - Batas interval
    tol: float - Toleransi error
    max_iter: int - Maksimum iterasi
    
    Returns:
    float: Akar yang ditemukan
    int: Jumlah iterasi
    """
    if f(a) * f(b) >= 0:
        raise ValueError("Interval tidak valid")
    
    for i in range(max_iter):
        c = (a + b) / 2
        if abs(f(c)) < tol:
            return c, i + 1
        
        if f(a) * f(c) < 0:
            b = c
        else:
            a = c
    
    return (a + b) / 2, max_iter

def newton_method(f, df, x0, tol=1e-6, max_iter=100):
    """
    Implementasi metode Newton-Raphson
    """
    x = x0
    for i in range(max_iter):
        fx = f(x)
        if abs(fx) < tol:
            return x, i + 1
        
        dfx = df(x)
        if dfx == 0:
            raise ValueError("Turunan nol")
        
        x = x - fx / dfx
    
    return x, max_iter
```

### **utils.py**
```python
"""
Modul utilitas
"""

import matplotlib.pyplot as plt
import numpy as np

def plot_function(f, a, b, points=1000, title="Grafik Fungsi"):
    """
    Plot fungsi dalam interval [a, b]
    """
    x = np.linspace(a, b, points)
    y = f(x)
    
    plt.figure(figsize=(10, 6))
    plt.plot(x, y, 'b-', linewidth=2)
    plt.axhline(y=0, color='k', linestyle='-', alpha=0.3)
    plt.axvline(x=0, color='k', linestyle='-', alpha=0.3)
    plt.grid(True, alpha=0.3)
    plt.title(title)
    plt.xlabel('x')
    plt.ylabel('f(x)')
    plt.tight_layout()
    
    return plt.gcf()

def save_results(results, filename):
    """
    Simpan hasil ke file
    """
    with open(filename, 'w') as f:
        for key, value in results.items():
            f.write(f"{key}: {value}\n")
```

## 🔧 Cara Menggunakan:

### **Di Jupyter Notebook:**
```python
# Import modul
import sys
sys.path.append('src')

from numerical_methods import bisection_method, newton_method
from utils import plot_function, save_results

# Gunakan fungsi
def f(x):
    return x**2 - 2*x - 3

root, iterations = bisection_method(f, 2, 4)
print(f"Akar: {root}, Iterasi: {iterations}")
```

### **Di Python Script:**
```python
# Import langsung
from src.numerical_methods import bisection_method
from src.utils import plot_function

# Gunakan fungsi
result = bisection_method(f, 2, 4)
```

## 📋 Best Practices:

- **Dokumentasi lengkap** - Gunakan docstring
- **Type hints** - Tentukan tipe data parameter
- **Error handling** - Tangani error dengan baik
- **Unit tests** - Buat test untuk setiap fungsi
- **Modular design** - Pisahkan fungsi berdasarkan tugas
- **Naming convention** - Gunakan nama yang jelas

## 🧪 Testing:

```python
# test_numerical_methods.py
import unittest
from numerical_methods import bisection_method

class TestNumericalMethods(unittest.TestCase):
    def test_bisection_method(self):
        def f(x):
            return x**2 - 4
        
        root, iterations = bisection_method(f, 1, 3)
        self.assertAlmostEqual(root, 2.0, places=5)

if __name__ == '__main__':
    unittest.main()
``` 