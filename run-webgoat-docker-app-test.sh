#!/bin/bash
sudo -S <<< "cd" docker run -d -p 8181:8080 webgoat/webgoat-8.0
