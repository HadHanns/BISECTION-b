#!/bin/bash

# 🛑 Script untuk Menghentikan Project Rekayasa Komputasional
# Script ini akan menghentikan Jupyter Lab dan menonaktifkan virtual environment

echo "🛑 Menghentikan Project Rekayasa Komputasional..."
echo "=============================================="

# Cek apakah Jupyter Lab sedang berjalan
echo "🔍 Mencari proses Jupyter Lab..."
JUPYTER_PIDS=$(pgrep -f "jupyter")

if [ -z "$JUPYTER_PIDS" ]; then
    echo "ℹ️  Jupyter Lab tidak sedang berjalan"
else
    echo "🔄 Menghentikan Jupyter Lab..."
    for pid in $JUPYTER_PIDS; do
        echo "   Menghentikan proses PID: $pid"
        kill $pid
    done
    echo "✅ Jupyter Lab berhasil dihentikan"
fi

# Cek apakah virtual environment aktif
if [ -n "$VIRTUAL_ENV" ]; then
    echo "🔧 Menonaktifkan virtual environment..."
    deactivate
    echo "✅ Virtual environment berhasil dinonaktifkan"
else
    echo "ℹ️  Virtual environment tidak sedang aktif"
fi

echo ""
echo "🎯 Project berhasil dihentikan!"
echo "💡 Untuk memulai lagi, jalankan: ./start_project.sh"
echo "==============================================" 