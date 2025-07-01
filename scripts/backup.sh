#!/bin/bash

# Configuration
SOURCE_DIR="$HOME/Documents"
BACKUP_DIR="$HOME/backup"
DATE=$(date +%Y-%m-%d_%H-%M-%S)
LOGFILE="$BACKUP_DIR/backup_$DATE.log"

# Crée le dossier de sauvegarde s'il n'existe pas
mkdir -p "$BACKUP_DIR"

# Effectue la sauvegarde incrémentielle avec rsync
rsync -av --delete "$SOURCE_DIR/" "$BACKUP_DIR/backup_$DATE/" > "$LOGFILE" 2>&1

# Affiche un résumé
echo "Sauvegarde terminée le $DATE"
echo "Logs disponibles dans $LOGFILE"
