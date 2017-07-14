set arg1=%1
set mypath=%cd%

mkdir %mypath%\jmeter\%arg1%\
jmeter\apache-jmeter-3.2\bin\jmeter.bat -n -t %mypath%\jmeter\test-jmeter.jmx -l %mypath%\jmeter\perf-log.csv -e -o %mypath%\jmeter\%arg1%\
