#! /bin/bash

echo "Backing up moonraker database files ..."
cd $HOME

todays_path=printer_database_backup/$(date -I)/
mkdir -p ${todays_path}

cp printer_data/database/* ${todays_path}


echo "We wrote the files in ${todays_path}"

#TODO For now this is just putting the backup on another folder in the home directory that I will `scp` from, and clear out by hand. 
