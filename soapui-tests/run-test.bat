@echo off
REM Variable definition
SET soapuiHome="C:\Program Files\SmartBear\ReadyAPI-2.0.0\"
SET soapuiProject="%WORKSPACE%\soapui-tests\WebGoat-soapui-project.xml"

REM Command line to run the specified tests
%soapuiHome%\bin\testrunner.bat %soapuiProject% -a -A -f%WORKSPACE%\soapui-tests\_test-reports\%BUILD_TIMESTAMP%\ -j -J -r -a -GbaseURL=http://192.168.0.254:8181 






