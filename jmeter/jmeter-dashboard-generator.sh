#!/bin/bash

jenkinsWorskspace="$1"
jenkinsBuildTimestamp="$2"

cd $PWD

sudo -S <<< "cd" /usr/local/bin/bzt run-jmeter-test.yml

jmeterLog=$(ls -Rladt -1 $PWD/**/* | grep kpi.jtl | awk 'NR==1{print $9}')

sudo -S <<< "cd" mkdir -p _htmlReports/${jenkinsBuildTimestamp}
sudo -S <<< "cd" ~/.bzt/jmeter-taurus/bin/jmeter -g ${jmeterLog} -o _htmlReports/${jenkinsBuildTimestamp}



