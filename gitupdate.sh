#!/bin/bash

cd /home/homeassistant/

git add .homeassistant/
git add docker.*
git add .gitignore
git add nginx.conf
git status

echo -n "Enter the Description for the Change: " [Minor Update]
read CHANGE_MSG

git commit -m "${CHANGE_MSG}"
git push origin master
exit