#!/bin/bash
# ==========================================
# Script: Log Cleaner
# Description: Removes log files older than X days.
# Author: Nikita Obolensky
# ==========================================

LOG_DIR="/var/log/myapp"
DAYS_TO_KEEP=7

echo "[INFO] Starting log cleanup in $LOG_DIR..."

# Check if directory exists
if [ ! -d "$LOG_DIR" ]; then
    echo "[ERROR] Directory $LOG_DIR does not exist!"
    exit 1
fi

# Find and delete files
DELETED_COUNT=$(find "$LOG_DIR" -name "*.log" -mtime +$DAYS_TO_KEEP -print | wc -l)
find "$LOG_DIR" -name "*.log" -mtime +$DAYS_TO_KEEP -delete

echo "[SUCCESS] Cleanup complete. Deleted $DELETED_COUNT files older than $DAYS_TO_KEEP days."