@echo off
REM Variable definition
SET soapuiHome="C:\Program Files\SmartBear\ReadyAPI-2.0.0\"
SET soapuiProject="C:\Users\soapui01\Desktop\soapui-tests\WebGoat-soapui-project.xml"

REM Command line to run the specified tests
%soapuiHome%\bin\testrunner.bat %soapuiProject% -a -A -f%CD%\reports\ -j -J -r -FHTML
