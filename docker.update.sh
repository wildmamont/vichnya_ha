echo Pull
docker pull ghcr.io/home-assistant/home-assistant:stable
echo RESULT=$?
#exit
echo Stop
docker stop home-assistant
echo RM
docker rm home-assistant
echo  Run
/home/homeassistant/docker.hass.sh