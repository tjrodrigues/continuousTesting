echo off
set arg1=%1
apache-jmeter-3.2\bin\jmeter.bat -n -t test-jmeter.jmx -l perf-log.csv -e -o %arg1%\
