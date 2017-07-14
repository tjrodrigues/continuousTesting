set arg1=%1
set mypath=%cd%

mkdir %mypath%\%arg1%\
%mypath%\apache-jmeter-3.2\bin\jmeter.bat -n -t %mypath%\test-jmeter.jmx -l %mypath%\perf-log.csv -e -o %mypath%\%arg1%\
