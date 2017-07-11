#!/bin/bash

retCode=$(sudo -S <<< "cd" docker ps --filter "ancestor=webgoat/webgoat-8.0" | wc -l 2>/dev/null)

if [ $retCode -gt 0 ]; 
then
	sudo -S <<< "cd" docker ps -a | awk '{ print $1,$2 }' | grep  webgoat/webgoat-8.0 | awk '{ print $1}' | sudo xargs -I {} docker rm -f {} 
fi

sudo -S <<< "cd" rm -rf ./webgoat-server/target/*

sudo -S <<< "cd" docker ps --filter status=dead --filter status=exited -aq | sudo -S <<< "cd" xargs -r docker rm -v

