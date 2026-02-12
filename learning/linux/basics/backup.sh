#!/bin/bash

# Configuration
TIMESTAMP=$(date +%Y-%m-%d_%H-%M)
SOURCE_DIR="/home/olena/learning/linux/basics/config_backup"
BACKUP_DIR="/home/olena/learning/linux/basics"
FILENAME="full_backup_$TIMESTAMP.tar.gz"
RETENTION_DAYS=7

echo "📦 Starting backup of: $SOURCE_DIR"

# Create compressed archive
tar -czf "$BACKUP_DIR/$FILENAME" "$SOURCE_DIR"

# Check if backup was successful
if [ $? -eq 0 ]; then
    echo "✅ Success: Backup created at $BACKUP_DIR/$FILENAME"
    
    # HOUSEKEEPING: Remove backups older than 7 days
    echo "🧹 Cleaning up old backups (older than $RETENTION_DAYS days)..."
    find "$BACKUP_DIR" -name "full_backup_*.tar.gz" -mtime +$RETENTION_DAYS -delete
    echo "✨ Cleanup complete."
else
    echo "❌ Error: Backup failed!"
    exit 1
fi
