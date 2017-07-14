@echo off
REM Variable definition
SET soapuiHome="C:\Program Files (x86)\SmartBear\SoapUI-5.3.0\"
SET soapuiProject="%WORKSPACE%\soapui-tests\WebGoat-soapui-project-free-version.xml"


REM Command line to run the specified tests
%soapuiHome%\bin\testrunner.bat -s"TestSuite 1" -r -a -j -J -f%WORKSPACE%\soapui-tests\_test-reports\ %soapuiProject%
echo %errorlevel%








