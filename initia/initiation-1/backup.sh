#!/bin/bash
PROJECT_NAME="Initia"
PROJECT_FOLDER=".initia"
BACKUP_DIR=$HOME/backup_$(date +%F--%R)

echo '###########################################################################################'
echo -e "\e[1m\e[32m### Backup $PROJECT_NAME node configuration files... \e[0m" && sleep 1
echo ''

cd $HOME
mkdir -p $BACKUP_DIR/$PROJECT_FOLDER/config/
cp -r $HOME/$PROJECT_FOLDER/config/priv_validator_key.json $BACKUP_DIR/$PROJECT_FOLDER/config/