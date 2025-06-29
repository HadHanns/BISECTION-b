#!/bin/bash

# 🚀 Script untuk Memulai Project Rekayasa Komputasional
# Script ini akan mengaktifkan virtual environment dan menjalankan Jupyter Lab

echo "🎯 Memulai Project Rekayasa Komputasional..."
echo "=============================================="

# Cek apakah virtual environment ada
if [ ! -d "venv" ]; then
    echo "❌ Error: Virtual environment tidak ditemukan!"
    echo "   Jalankan: python3 -m venv venv"
    exit 1
fi

# Aktifkan virtual environment
echo "🔧 Mengaktifkan virtual environment..."
source venv/bin/activate

# Cek apakah berhasil diaktifkan
if [ -z "$VIRTUAL_ENV" ]; then
    echo "❌ Error: Gagal mengaktifkan virtual environment!"
    exit 1
fi

echo "✅ Virtual environment berhasil diaktifkan!"
echo "📍 Lokasi: $VIRTUAL_ENV"

# Cek package yang terinstall
echo "📦 Package yang terinstall:"
pip list | head -10
echo "..."

# Jalankan Jupyter Lab
echo "🚀 Menjalankan Jupyter Lab..."
echo "📱 Buka browser dan kunjungi URL yang muncul di bawah"
echo "🔑 Pilih kernel 'Python (venv)' saat membuka notebook"
echo ""
echo "Tekan Ctrl+C untuk menghentikan Jupyter Lab"
echo "=============================================="

jupyter lab 