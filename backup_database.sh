#! /bin/bash

echo "Backing up moonraker database files ..."
cd $HOME

todays_path=printer_database_backup/$(date -I)/
mkdir -p ${todays_path}

cp printer_data/database/* ${todays_path}


echo "We wrote the files in ${todays_path}"

cp -r ${todays_path} /mnt/bedwyr/ybalrid/backups/voron
