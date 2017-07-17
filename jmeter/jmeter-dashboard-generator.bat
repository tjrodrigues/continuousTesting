
mkdir _html-reports\
FOR /d %%a in (2017*) DO (
  c:\Users\tjrodrigues.CRITICAL\.bzt\jmeter-taurus\3.2\bin\jmeter -g %%a\kpi.jtl -o D:\jenkins\jenkinsTestSlave\workspace\ContinuousTesting\PerformanceTests\jmeter\_html-reports\

)