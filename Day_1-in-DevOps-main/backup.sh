#!/bin/bash
# Simple backup script

# Source directory (folder to back up)
SOURCE_DIR="$HOME/Documents"

# Backup directory
BACKUP_DIR="$HOME/Backup"

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Create a timestamp
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Backup file name
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

# Create the backup
tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

# Print message
echo "Backup of $SOURCE_DIR completed!"
echo "Backup saved as $BACKUP_FILE"
