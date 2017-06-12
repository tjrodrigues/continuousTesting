#!/bin/bash

jenkinsWorskspace="$1"
jenkinsBuildTimestamp="$2"

jmeterLog=$(ls -Rladt -1 $PWD/**/* | grep kpi.jtl | awk 'NR==1{print $9}')
sudo -S <<< "lnzadfc" mkdir -p ${jenkinsWorskspace}/_htmlReports/${jenkinsBuildTimestamp}
sudo -S <<< "lnzadfc" ~/.bzt/jmeter-taurus/bin/jmeter -g ${jmeterLog} -o ${jenkinsWorskspace}/_htmlReports/${jenkinsBuildTimestamp}



