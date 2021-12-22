#! /bin/bash

cd /home/pi/pictures/timelaps
gphoto2 --capture-image-and-download -q >> /home/pi/pictures/log.txt
date >> /home/pi/pictures/log.txt
