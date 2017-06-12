#!/bin/bash

jenkinsWorskspace="$1"
jenkinsBuildTimestamp="$2"

cd $PWD

jmeterLog=$(ls -Rladt -1 $PWD/**/* | grep kpi.jtl | awk 'NR==1{print $9}')

mkdir -p htmlReports/${jenkinsBuildTimestamp}
sudo -S <<< "lnzadfc" ~/.bzt/jmeter-taurus/bin/jmeter -g ${jmeterLog} -o htmlReports/${jenkinsBuildTimestamp}



