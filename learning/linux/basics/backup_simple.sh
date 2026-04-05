#!/bin/bash

# 1. Configuration
TIMESTAMP=$(date +%Y-%m-%d_%H-%M)
SOURCE_DIR="/home/olena/learning/linux/basics/config_test"
BACKUP_DIR="/home/olena/learning/linux/basics"
FILENAME="full_backup_$TIMESTAMP.tar.gz"

# 2. ПЕРЕВІРКА: Чи існує папка? (Logic Check)
if [ -d "$SOURCE_DIR" ]; then
    echo "✅ Directory exists. Starting backup..."
    
    # 3. ДІЯ: Якщо папка є, створюємо архів
    tar -czf "$BACKUP_DIR/$FILENAME" "$SOURCE_DIR"
    
    # 4. ПЕРЕВІРКА: Чи вдалося створити файл? (Error Handling)
    if [ $? -eq 0 ]; then
        echo "✅ Success: Backup created at $BACKUP_DIR/$FILENAME"
    else
        echo "❌ Error: Tar command failed!"
        exit 1
    fi

else
    # 5. РЕАКЦІЯ НА ПОМИЛКУ: Якщо папки немає
    echo "❌ Error: Source directory $SOURCE_DIR does not exist!"
    exit 1
fi
