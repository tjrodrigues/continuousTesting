#!/bin/bash
cd ./webgoat-server
sudo -S <<< "lnzadfc" mvn docker:build 
sudo -S <<< "lnzadfc" docker tag webgoat/webgoat-8.0 webgoat/webgoat-8.0:8.02



