#!/bin/bash
# ==========================================
# Script: Config Backup
# Description: Creates a tar.gz archive of critical config files.
# ==========================================

BACKUP_DIR="$HOME/backups"
SOURCE_DIR="/etc/nginx" 
DATE=$(date +%Y-%m-%d_%H-%M)
ARCHIVE_NAME="nginx_config_$DATE.tar.gz"

# Create backup directory if not exists
mkdir -p "$BACKUP_DIR"

echo "[INFO] Backing up $SOURCE_DIR to $BACKUP_DIR..."

tar -czf "$BACKUP_DIR/$ARCHIVE_NAME" "$SOURCE_DIR" 2>/dev/null

if [ $? -eq 0 ]; then
    echo "[SUCCESS] Backup created: $ARCHIVE_NAME"
else
    echo "[ERROR] Backup failed!"
    exit 1
fi