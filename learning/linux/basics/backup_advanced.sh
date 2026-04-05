#!/bin/bash

# Змінні для зручності
DATA=$(date +%Y-%m-%d_%H-%M)
SOURCE="/home/olena/learning/linux/basics/config_backup"
DEST="/home/olena/learning/linux/basics/full_backup_$DATA.tar.gz"

echo "📦 Починаю архівацію папки: $SOURCE"

# Створюємо стиснутий архів:
# -c (create), -z (gzip compression), -f (file name)
tar -czf $DEST $SOURCE

echo "✅ Архів створено: $DEST"
