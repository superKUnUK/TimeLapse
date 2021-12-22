
#! /bin/bash

ncftpput -vR -u photo -p Napoleon1! 192.168.10.12 Volume_1/Photo/timelaps/a5000 /home/pi/pictures/$(date +"%d_%m_%Y")

exit


# Kopiert den Ordern mit den Tages akutellen Photos auf das NAS (und Löscht die Lokalen Version
