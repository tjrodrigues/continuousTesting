#!/bin/bash
cd ./webgoat-server
sudo -S <<< "cd" mvn docker:build 
sudo -S <<< "cd" docker tag webgoat/webgoat-8.0 webgoat/webgoat-8.0:8.02



