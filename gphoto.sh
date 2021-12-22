#! /bin/bash

cd /home/pi/pictures/$(date +"%d_%m_%Y")

gphoto2 --capture-image-and-download -q >> /home/pi/pictures/log.txt

date >> /home/pi/pictures/log.txt

exit

# Schreibt bilder in das erstellt verzeichniss

