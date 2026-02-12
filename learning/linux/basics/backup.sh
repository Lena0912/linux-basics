#!/bin/bash

# --- Configuration ---
SOURCE_DIR="/home/olena/learning/linux/basics/config_backup"
BACKUP_DIR="/home/olena/learning/linux/basics"
TIMESTAMP=$(date +%Y-%m-%d_%H-%M)
FILENAME="full_backup_$TIMESTAMP.tar.gz"
RETENTION_DAYS=7

# --- Step 1: Logic Check (Module 23) ---
# Check if source directory exists
if [ -d "$SOURCE_DIR" ]; then
    echo "✅ Directory $SOURCE_DIR exists. Starting backup..."
    
    # --- Step 2: Archiving ---
    tar -czf "$BACKUP_DIR/$FILENAME" "$SOURCE_DIR"
    echo "✅ Archive created: $FILENAME"

    # --- Step 3: Smart Cleanup (Module 22) ---
    echo "🧹 Searching for backups older than $RETENTION_DAYS days..."
    find "$BACKUP_DIR" -name "full_backup_*.tar.gz" -mtime +$RETENTION_DAYS -delete
    echo "✨ Cleanup finished."

else
    # If directory is missing
    echo "❌ Error: Source directory $SOURCE_DIR not found!"
    exit 1
fi
