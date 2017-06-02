#!/bin/bash

retCode=$(sudo -S <<< "lnzadfc" docker ps --filter "ancestor=webgoat/webgoat-8.0" | wc -l 2>/dev/null)

if [ $retCode -gt 0 ]; 
then
	sudo -S <<< "lnzadfc" docker ps -a | awk '{ print $1,$2 }' | grep  webgoat/webgoat-8.0 | awk '{ print $1}' | sudo xargs -I {} docker rm -f {} 
fi


