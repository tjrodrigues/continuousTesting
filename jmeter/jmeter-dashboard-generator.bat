FOR /d %%a in (2017*) DO (
   D:\jenkins\jenkinsTestSlave\workspace\ContinuousTesting\PerformanceTests\jmeter\apache-jmeter-3.2\bin\jmeter -g %%a\kpi.jtl -o D:\jenkins\jenkinsTestSlave\workspace\ContinuousTesting\PerformanceTests\jmeter\_html-reports\

)

