#! /bin/bash

cd /home/pi/pictures/$(date +"%d_%m_%Y")

gphoto2 --capture-image-and-download -I 30 -F 2879  >> /home/pi/pictures/log.txt

date >> /home/pi/pictures/log.txt

exit

# Schreibt bilder in das erstellt verzeichniss


