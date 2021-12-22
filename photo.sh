#! /bin/bash

#Script für 2 Fotos die Minute
#Dauer 1 Minute

#Speichert die zeit in Sekunden
START_TIME=$SECONDS

#Dauer in Sekunden
DURATION=30

#Anzahl der Fotos
PICS=2

#Geht in den Order wo die Photos gespeichert werden Sollen
cd /home/pi/pictures/$(date +"%Y_%m_%d")/$(date +"%Y_%m_%d_%H")

#Macht ein Photo, lädt es runter, macht einen eintrag ins log
gphoto2 --capture-image-and-download >> /home/pi/pictures/logs/$(date +"%d_%m_%Y")pictures-taken-log.txt

#Macht für das ausgefürtes script einen eintrag ins date-log
date >> /home/pi/pictures/logs/$(date +"%d_%m_%Y")date-log.txt

#Rechnete die Vergangen zeit aus
ELAPSED_TIME=$(($SECONDS - $START_TIME))

#Schreibt das Datum und  die Script-dauer in das Log
echo time";"$(date +"%Y_%m_%d_%H_%M_%S")";"T=";"$ELAPSED_TIME >> /home/pi/pictures/logs/$(date +"%d_%m_%Y")duration-log.txt

#bash exit
exit
