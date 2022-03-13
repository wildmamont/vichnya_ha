echo Pull
docker pull homeassistant/raspberrypi4-homeassistant:stable
echo RESULT=$?
#exit
echo Stop
docker stop home-assistant
echo RM
docker rm home-assistant
echo  Run
/home/homeassistant/docker.hass.sh