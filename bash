#!/bin/bash

# Configuració
DB_USER="davipa"
DB_PASSWORD="12345"
BACKUP_DIR="/home/davipa/scripts/backups"

TIMESTAMP=$(date +"%Y-%m-%d_%H:%M:%S")

mysqldump -u $DB_USER -p$DB_PASSWORD --all-databases > "$BACKUP_DIR/backup_total_$TIMESTAMP.sql"

mysqldump -u $DB_USER -p$DB_PASSWORD mysql > "$BACKUP_DIR/backup_usuaris_$TIMESTAMP.sql"

mysqldump -u $DB_USER -p$DB_PASSWORD --all-databases --no-data > "$BACKUP_DIR/backup_estructura_$TIMESTAMP.sql"

mysqldump -u $DB_USER -p$DB_PASSWORD --all-databases --no-create-info > "$BACKUP_DIR/backup_dades_$TIMESTAMP.sql"

echo "Còpia de seguretat feta a les $TIMESTAMP"