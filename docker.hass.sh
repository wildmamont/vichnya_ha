#!/bin/bash

docker run --init --restart unless-stopped -d --name="home-assistant" -e "TZ=Europe/Moscow" -v /home/homeassistant/.homeassistant:/config  --net=host homeassistant/raspberrypi4-homeassistant:stable
-v /sys/devices/w1_bus_master1:/sys/devices/w1_bus_master1  
-v /sys/bus/w1:/sys/bus/w1 
