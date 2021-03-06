<?xml version="1.0" encoding="utf-16" standalone="yes"?>
<SessionManagement Version="1.2">
  <SessionManagementMode>Manual</SessionManagementMode>
  <AllowConcurrentLogins>True</AllowConcurrentLogins>
  <EnableJSXInLoginReplay>False</EnableJSXInLoginReplay>
  <UseAutomaticABL>False</UseAutomaticABL>
  <ValidTrafficLogin>True</ValidTrafficLogin>
  <ValidAblLogin>False</ValidAblLogin>
  <AutomaticLoginValidated>False</AutomaticLoginValidated>
  <RecordedSessionRequests> 
    <request scheme="http" host="192.168.1.20" path="/WebGoat/login" port="8181" method="GET" RequestEncoding="28591" SessionRequestType="Login" ordinal="1" ValidationStatus="None" MultiStepTested="true" sequencePlaybackRequired="true">
      <raw encoding="none">GET /WebGoat/login HTTP/1.1
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko
Connection: Keep-Alive
Host: 192.168.1.20:8181
Accept: image/jpeg, application/x-ms-application, image/gif, application/xaml+xml, image/pjpeg, application/x-ms-xbap, */*
Accept-Language: pt-PT

</raw>
      <response status="200" bodyEncoding="utf-8">
        <body value="UEsDBBQAAAAIANJVvkoF+augegIAACgHAAAEACQAZGF0YQoAIAAAAAAAAQAYAMx8DqEp2dIBzHwOoSnZ0gHMfA6hKdnSAa1VS2/bMAy+91douidqt1M625etGAYMaLB2GHYKZJuxheoFSY6Tfz9KdhInTbcOa4DYkkh+pD4+nL37fP/p8dfyjrRByeLqKotvslVS+5y2Idhbxvq+n/cf5sY17GaxWLBt1KEF6gKviyuCvyyIIKH4ZhqhyZI3kLHhZJBKoZ+IA5lTH3YSfAsQKAk7CzkNsA2s8p6S1sE6p+wnlF8MT2dMcaHnScj+B8rKDgPzrDQm+OC4TeCH3Vy9iZeIuTY6zHgP3ih4Q1iuheIBDmgZG7jPSlPv8OWhCsJoIuqcVhgC0gaOjl6jKrgkG5ajIAlrsSGV5B7TXTqu64ksyfleKk1jnsXmA3dhrjYVLTJvuS5QkLG0ivKM8Ykrhr4uew6maSTMNN+IhqeLjCcS1oG+CgLZ9EY/xqJ7bjDwwIbbj6zsKRvtY6XNInWACeyxKGzi6Yg0pXiqfEbYy5usdJi64XkqWBuniILQGsRe3j88UpLqI6e9qEN7S95fX9vtR0p4CmHCv4wNdxbBOTMRfdY409kLiklZ8hIkQb2cwpYrK+Grtl24w2vKG1r88OA0V9jTSfEFEBFNCO+CWZuqQ791p9Ruhair0O4USODrleUOwaYlT0/CjJw6I2li+UIsxEpeQWsk5jGn+8Aoic+cdoc9u0DJae28KVNLNO+Nq5Gs/fI1ZA0s2NHilUwcfZ2SsTzADGQcYf+BjLIL4dgTZdAE/zPrcPq4XVqX0lRP+wT6rlQCO+BBNNgYOmOD/Z9ZjlmfVdg5scFwvpyNFAeNiFM5VjotvqcdTi8NPYn5jSPlQvQZi6wVf284nE5DI49j4LidLPE7yMbJytKH8TdQSwECLQAUAAAACADSVb5KBfmroHoCAAAoBwAABAAkAAAAAAAAAAAAAAAAAAAAZGF0YQoAIAAAAAAAAQAYAMx8DqEp2dIBzHwOoSnZ0gHMfA6hKdnSAVBLBQYAAAAAAQABAFYAAADAAgAAAAA=" compressedBinaryValue="true" />
        <headers value="HTTP/1.1 200 &#xA;X-XSS-Protection: 1; mode=block&#xD;&#xA;Content-Length: 1832&#xD;&#xA;X-Frame-Options: DENY&#xD;&#xA;X-Content-Type-Options: nosniff&#xD;&#xA;Content-Language: pt-PT&#xD;&#xA;Date: Tue, 30 May 2017 09:45:35 GMT&#xD;&#xA;X-Application-Context: application:8080&#xD;&#xA;Content-Type: text/html;charset=UTF-8&#xD;&#xA;" />
      </response>
      <sessionCookies />
    </request>
    <request scheme="http" host="192.168.1.20" path="/WebGoat/login" port="8181" method="POST" RequestEncoding="65001" SessionRequestType="Login" ordinal="7" ValidationStatus="None" MultiStepTested="true" sequencePlaybackRequired="true">
      <raw encoding="none">POST /WebGoat/login HTTP/1.1
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko
Referer: http://192.168.1.20:8181/WebGoat/login
Connection: Keep-Alive
Host: 192.168.1.20:8181
Pragma: no-cache
Content-Length: 37
Accept: image/jpeg, application/x-ms-application, image/gif, application/xaml+xml, image/pjpeg, application/x-ms-xbap, */*
Accept-Language: pt-PT
Content-Type: application/x-www-form-urlencoded

username=robotfrmw&amp;password=robotfrmw</raw>
      <parameter name="username" captureIndex="0" value="robotfrmw" type="BODY" linkParamType="simplelink" separator="&amp;" operator="=" reportName="username" />
      <parameter name="password" captureIndex="0" value="robotfrmw" type="BODY" linkParamType="simplelink" separator="&amp;" operator="=" reportName="password" />
      <response status="302" bodyEncoding="utf-8">
        <body value="UEsDBBQAAAAAANJVvkoAAAAAAAAAAAAAAAAEACQAZGF0YQoAIAAAAAAAAQAYAC/LHKEp2dIBL8scoSnZ0gEvyxyhKdnSAVBLAQItABQAAAAAANJVvkoAAAAAAAAAAAAAAAAEACQAAAAAAAAAAAAAAAAAAABkYXRhCgAgAAAAAAABABgAL8scoSnZ0gEvyxyhKdnSAS/LHKEp2dIBUEsFBgAAAAABAAEAVgAAAEYAAAAAAA==" compressedBinaryValue="true" />
        <headers value="HTTP/1.1 302 &#xA;Content-Length: 0&#xD;&#xA;Location: http://192.168.1.20:8181/WebGoat/welcome.mvc&#xD;&#xA;X-Frame-Options: DENY&#xD;&#xA;Set-Cookie: JSESSIONID=E38134EFA27EE48D84E5D5D1175CD2C0; Path=/WebGoat&#xD;&#xA;X-Content-Type-Options: nosniff&#xD;&#xA;X-XSS-Protection: 1; mode=block&#xD;&#xA;Date: Tue, 30 May 2017 09:46:30 GMT&#xD;&#xA;" />
        <cookie name="JSESSIONID" value="E38134EFA27EE48D84E5D5D1175CD2C0" path="/WebGoat" domain="192.168.1.20" secure="False" expires="01/01/0001 00:00:00" />
      </response>
      <sessionCookies />
    </request>
    <request scheme="http" host="192.168.1.20" path="/WebGoat/welcome.mvc" port="8181" method="GET" RequestEncoding="28591" SessionRequestType="Login" ordinal="8" ValidationStatus="None" MultiStepTested="true" sequencePlaybackRequired="true">
      <raw encoding="none">GET /WebGoat/welcome.mvc HTTP/1.1
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko
Referer: http://192.168.1.20:8181/WebGoat/login
Cookie: JSESSIONID=E38134EFA27EE48D84E5D5D1175CD2C0
Connection: Keep-Alive
Host: 192.168.1.20:8181
Pragma: no-cache
Accept: image/jpeg, application/x-ms-application, image/gif, application/xaml+xml, image/pjpeg, application/x-ms-xbap, */*
Accept-Language: pt-PT

</raw>
      <cookie name="JSESSIONID" value="E38134EFA27EE48D84E5D5D1175CD2C0" path="/WebGoat" domain="192.168.1.20" secure="False" expires="01/01/0001 00:00:00" />
      <response status="302" bodyEncoding="utf-8">
        <body value="UEsDBBQAAAAAANJVvkoAAAAAAAAAAAAAAAAEACQAZGF0YQoAIAAAAAAAAQAYAC/LHKEp2dIBL8scoSnZ0gEvyxyhKdnSAVBLAQItABQAAAAAANJVvkoAAAAAAAAAAAAAAAAEACQAAAAAAAAAAAAAAAAAAABkYXRhCgAgAAAAAAABABgAL8scoSnZ0gEvyxyhKdnSAS/LHKEp2dIBUEsFBgAAAAABAAEAVgAAAEYAAAAAAA==" compressedBinaryValue="true" />
        <headers value="HTTP/1.1 302 &#xA;Location: http://192.168.1.20:8181/WebGoat/start.mvc#lesson/HttpBasics.lesson&#xD;&#xA;X-XSS-Protection: 1; mode=block&#xD;&#xA;Content-Length: 0&#xD;&#xA;X-Frame-Options: DENY&#xD;&#xA;X-Content-Type-Options: nosniff&#xD;&#xA;Content-Language: pt-PT&#xD;&#xA;Date: Tue, 30 May 2017 09:46:30 GMT&#xD;&#xA;X-Application-Context: application:8080&#xD;&#xA;" />
      </response>
      <sessionCookies>
        <cookie name="JSESSIONID" value="E38134EFA27EE48D84E5D5D1175CD2C0" path="/WebGoat" domain="192.168.1.20" secure="False" expires="01/01/0001 00:00:00" />
      </sessionCookies>
    </request>
    <request scheme="http" host="192.168.1.20" path="/WebGoat/start.mvc" port="8181" method="GET" RequestEncoding="28591" SessionRequestType="Regular" ordinal="9" ValidationStatus="None" MultiStepTested="true" sequencePlaybackRequired="true">
      <raw encoding="none">GET /WebGoat/start.mvc HTTP/1.1
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko
Referer: http://192.168.1.20:8181/WebGoat/login
Cookie: JSESSIONID=E38134EFA27EE48D84E5D5D1175CD2C0
Connection: Keep-Alive
Host: 192.168.1.20:8181
Pragma: no-cache
Accept: image/jpeg, application/x-ms-application, image/gif, application/xaml+xml, image/pjpeg, application/x-ms-xbap, */*
Accept-Language: pt-PT

</raw>
      <cookie name="JSESSIONID" value="E38134EFA27EE48D84E5D5D1175CD2C0" path="/WebGoat" domain="192.168.1.20" secure="False" expires="01/01/0001 00:00:00" />
      <response status="200" bodyEncoding="utf-8">
        <body value="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" compressedBinaryValue="true" />
        <headers value="HTTP/1.1 200 &#xA;X-XSS-Protection: 1; mode=block&#xD;&#xA;Content-Length: 14956&#xD;&#xA;X-Frame-Options: DENY&#xD;&#xA;X-Content-Type-Options: nosniff&#xD;&#xA;Content-Language: pt-PT&#xD;&#xA;Date: Tue, 30 May 2017 09:46:30 GMT&#xD;&#xA;X-Application-Context: application:8080&#xD;&#xA;Content-Type: text/html;charset=UTF-8&#xD;&#xA;" />
      </response>
      <sessionCookies>
        <cookie name="JSESSIONID" value="E38134EFA27EE48D84E5D5D1175CD2C0" path="/WebGoat" domain="192.168.1.20" secure="False" expires="01/01/0001 00:00:00" />
      </sessionCookies>
    </request>
    <request scheme="http" host="192.168.1.20" path="/WebGoat/js/goatApp/templates/lesson_overview.html" port="8181" method="GET" RequestEncoding="28591" SessionRequestType="Regular" ordinal="63" ValidationStatus="None" MultiStepTested="true" sequencePlaybackRequired="true">
      <raw encoding="none">GET /WebGoat/js/goatApp/templates/lesson_overview.html HTTP/1.1
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko
Referer: http://192.168.1.20:8181/WebGoat/start.mvc
Cookie: JSESSIONID=E38134EFA27EE48D84E5D5D1175CD2C0
Connection: Keep-Alive
Host: 192.168.1.20:8181
Accept: */*
Accept-Language: pt-PT

</raw>
      <cookie name="JSESSIONID" value="E38134EFA27EE48D84E5D5D1175CD2C0" path="/WebGoat/js/goatApp/templates" domain="192.168.1.20" secure="False" expires="01/01/0001 00:00:00" />
      <response status="200" bodyEncoding="iso-8859-1">
        <body value="UEsDBBQAAAAIANJVvkogonL7iAAAAOMAAAAEACQAZGF0YQoAIAAAAAAAAQAYADQtH6Ep2dIBNC0foSnZ0gE0LR+hKdnSAXWPYQrCMAyF/3uKMCmsoOsF0l5FwtqthS2Vte6PeHczmDgEA4EQvpe8hz6t7gRSqODWBepjS6WkkefAtVxgeHBfU+bDVsMT1C6aksNSl8yjQ4K4hME25wY8Vbomb1FZ+Aq7w3inGuWK+08wzUEINCS9/4D2hy95WoMXTKMRL58kL705RLOlewNQSwECLQAUAAAACADSVb5KIKJy+4gAAADjAAAABAAkAAAAAAAAAAAAAAAAAAAAZGF0YQoAIAAAAAAAAQAYADQtH6Ep2dIBNC0foSnZ0gE0LR+hKdnSAVBLBQYAAAAAAQABAFYAAADOAAAAAAA=" compressedBinaryValue="true" />
        <headers value="HTTP/1.1 200 &#xA;Content-Length: 227&#xD;&#xA;Last-Modified: Mon, 29 May 2017 14:30:12 GMT&#xD;&#xA;X-Frame-Options: DENY&#xD;&#xA;X-Content-Type-Options: nosniff&#xD;&#xA;X-XSS-Protection: 1; mode=block&#xD;&#xA;Accept-Ranges: bytes&#xD;&#xA;Date: Tue, 30 May 2017 09:46:33 GMT&#xD;&#xA;Content-Type: text/html&#xD;&#xA;X-Application-Context: application:8080&#xD;&#xA;Cache-Control: no-store&#xD;&#xA;" />
      </response>
      <sessionCookies>
        <cookie name="JSESSIONID" value="E38134EFA27EE48D84E5D5D1175CD2C0" path="/WebGoat" domain="192.168.1.20" secure="False" expires="01/01/0001 00:00:00" />
      </sessionCookies>
    </request>
    <request scheme="http" host="192.168.1.20" path="/WebGoat/js/goatApp/templates/paging_controls.html" port="8181" method="GET" RequestEncoding="28591" SessionRequestType="Regular" ordinal="64" ValidationStatus="None" MultiStepTested="true" sequencePlaybackRequired="true">
      <raw encoding="none">GET /WebGoat/js/goatApp/templates/paging_controls.html HTTP/1.1
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko
Referer: http://192.168.1.20:8181/WebGoat/start.mvc
Cookie: JSESSIONID=E38134EFA27EE48D84E5D5D1175CD2C0
Connection: Keep-Alive
Host: 192.168.1.20:8181
Accept: */*
Accept-Language: pt-PT

</raw>
      <cookie name="JSESSIONID" value="E38134EFA27EE48D84E5D5D1175CD2C0" path="/WebGoat/js/goatApp/templates" domain="192.168.1.20" secure="False" expires="01/01/0001 00:00:00" />
      <response status="200" bodyEncoding="iso-8859-1">
        <body value="UEsDBBQAAAAIANJVvkqmQlFVLwEAAFMDAAAEACQAZGF0YQoAIAAAAAAAAQAYADQtH6Ep2dIBNC0foSnZ0gE0LR+hKdnSAa1SQW6DMBC89xUrJCuJEuABxVz6gVx6rlxYwKpjLJuYVFX+3sUNhKC0h7YcbO94dnbwblZKnz8AfRmdoFDCOR4ZUWOshY97K4xBG+WZM0KP17V6N40sWh0HAKYYZjfSFgpjYW3bxwqrDlxDJ2PRx4M8SaaDJm3fW1BSv109BE7gMfDCwqtw+GwVcGg9Wi+xTy7QI7Ab9kuComjWE20QdzuojrroZKvXQ7yTusTTBj7muSFfQGOx4lHG+LIQy1NCQybLIwChOh7tSQ1GeLslvWihyEBWEKom9FYd6g4457CiP5e1PlC8umNk+URUIkgMy9MAsRxGzLXKY7lEi6PdX8nUgskkm/dh5vMMqBz+zctvqi57kIqbhp43U4t/mp9/HGEr6+YywxpP3d0Z/to+AVBLAQItABQAAAAIANJVvkqmQlFVLwEAAFMDAAAEACQAAAAAAAAAAAAAAAAAAABkYXRhCgAgAAAAAAABABgANC0foSnZ0gE0LR+hKdnSATQtH6Ep2dIBUEsFBgAAAAABAAEAVgAAAHUBAAAAAA==" compressedBinaryValue="true" />
        <headers value="HTTP/1.1 200 &#xA;Content-Length: 851&#xD;&#xA;Last-Modified: Mon, 29 May 2017 14:30:12 GMT&#xD;&#xA;X-Frame-Options: DENY&#xD;&#xA;X-Content-Type-Options: nosniff&#xD;&#xA;X-XSS-Protection: 1; mode=block&#xD;&#xA;Accept-Ranges: bytes&#xD;&#xA;Date: Tue, 30 May 2017 09:46:33 GMT&#xD;&#xA;Content-Type: text/html&#xD;&#xA;X-Application-Context: application:8080&#xD;&#xA;Cache-Control: no-store&#xD;&#xA;" />
      </response>
      <sessionCookies>
        <cookie name="JSESSIONID" value="E38134EFA27EE48D84E5D5D1175CD2C0" path="/WebGoat" domain="192.168.1.20" secure="False" expires="01/01/0001 00:00:00" />
      </sessionCookies>
    </request>
    <request scheme="http" host="192.168.1.20" path="/WebGoat/service/labels.mvc" port="8181" method="GET" RequestEncoding="28591" SessionRequestType="Regular" ordinal="65" ValidationStatus="None" MultiStepTested="true" sequencePlaybackRequired="true">
      <raw encoding="none">GET /WebGoat/service/labels.mvc HTTP/1.1
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko
Referer: http://192.168.1.20:8181/WebGoat/start.mvc
Cookie: JSESSIONID=E38134EFA27EE48D84E5D5D1175CD2C0
Connection: Keep-Alive
Host: 192.168.1.20:8181
X-Requested-With: XMLHttpRequest
Accept: application/json, text/javascript, */*; q=0.01
Accept-Language: pt-PT

</raw>
      <cookie name="JSESSIONID" value="E38134EFA27EE48D84E5D5D1175CD2C0" path="/WebGoat/service" domain="192.168.1.20" secure="False" expires="01/01/0001 00:00:00" />
      <response status="200" bodyEncoding="utf-8">
        <body value="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" compressedBinaryValue="true" />
        <headers value="HTTP/1.1 200 &#xA;Content-Length: 11069&#xD;&#xA;X-Frame-Options: DENY&#xD;&#xA;X-Content-Type-Options: nosniff&#xD;&#xA;X-XSS-Protection: 1; mode=block&#xD;&#xA;Date: Tue, 30 May 2017 09:46:33 GMT&#xD;&#xA;Content-Type: application/json;charset=UTF-8&#xD;&#xA;X-Application-Context: application:8080&#xD;&#xA;" />
      </response>
      <sessionCookies>
        <cookie name="JSESSIONID" value="E38134EFA27EE48D84E5D5D1175CD2C0" path="/WebGoat" domain="192.168.1.20" secure="False" expires="01/01/0001 00:00:00" />
      </sessionCookies>
    </request>
    <request scheme="http" host="192.168.1.20" path="/WebGoat/service/lessonmenu.mvc" port="8181" method="GET" RequestEncoding="28591" SessionRequestType="Regular" ordinal="66" ValidationStatus="None" MultiStepTested="true" sequencePlaybackRequired="true">
      <raw encoding="none">GET /WebGoat/service/lessonmenu.mvc HTTP/1.1
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko
Referer: http://192.168.1.20:8181/WebGoat/start.mvc
Cookie: JSESSIONID=E38134EFA27EE48D84E5D5D1175CD2C0
Connection: Keep-Alive
Host: 192.168.1.20:8181
X-Requested-With: XMLHttpRequest
Accept: application/json, text/javascript, */*; q=0.01
Accept-Language: pt-PT

</raw>
      <cookie name="JSESSIONID" value="E38134EFA27EE48D84E5D5D1175CD2C0" path="/WebGoat/service" domain="192.168.1.20" secure="False" expires="01/01/0001 00:00:00" />
      <response status="200" bodyEncoding="utf-8">
        <body value="UEsDBBQAAAAIANJVvkr7Y6oRbwEAAA8IAAAEACQAZGF0YQoAIAAAAAAAAQAYADQtH6Ep2dIBNC0foSnZ0gE0LR+hKdnSAb1VTU/CQBC98ysm9aKJ1bPeagWEEFGWaA3hUJZFFpfdujsVifG/u22hQPyIaSnX1877mJdOB/BRA3BkOGcOXILTZJLpUDinCYrLKEN9r19vdntPGUynXIw1k8mjQTq/zTBFjNxRaDg1Z8hRsHRom61TJ6R7u4Z32YZrVM0jwTAdmITCsBUuuHxJSY4EM0bJ8xsrd5WpZYhjX/w8/dlWpNU7ZwfzdbeS2zKWEX2nqa0sbwx7lNox8JVErQQ0RLgwJWrhY6UPkbt13e0VDNz2AiCMxprjskRSX3AmEQwfM5hwgUxz+Vxt6EySWMXGWrDgDmKcWiZOQ+RKli59tsA9dY46/jV9+7FfLK2vlTEu4ciAUM0jtHuD44CQkzL1J6SwS1px+4liIpjrFVtHS84Y3Uvv5L4DOVu14cmryJX+vsBBUK/WihUotviHWCR/vZFg9tzOIyXtJ2jABe+iRAdvOalLc9JDXOBNmk2Y/+0Fhl9QSwECLQAUAAAACADSVb5K+2OqEW8BAAAPCAAABAAkAAAAAAAAAAAAAAAAAAAAZGF0YQoAIAAAAAAAAQAYADQtH6Ep2dIBNC0foSnZ0gE0LR+hKdnSAVBLBQYAAAAAAQABAFYAAAC1AQAAAAA=" compressedBinaryValue="true" />
        <headers value="HTTP/1.1 200 &#xA;Content-Length: 2063&#xD;&#xA;X-Frame-Options: DENY&#xD;&#xA;X-Content-Type-Options: nosniff&#xD;&#xA;X-XSS-Protection: 1; mode=block&#xD;&#xA;Date: Tue, 30 May 2017 09:46:33 GMT&#xD;&#xA;Content-Type: application/json;charset=UTF-8&#xD;&#xA;X-Application-Context: application:8080&#xD;&#xA;" />
      </response>
      <sessionCookies>
        <cookie name="JSESSIONID" value="E38134EFA27EE48D84E5D5D1175CD2C0" path="/WebGoat" domain="192.168.1.20" secure="False" expires="01/01/0001 00:00:00" />
      </sessionCookies>
    </request>
    <request scheme="http" host="192.168.1.20" path="/WebGoat/service/debug/labels.mvc" port="8181" method="GET" RequestEncoding="28591" SessionRequestType="Regular" ordinal="67" ValidationStatus="None" MultiStepTested="true" sequencePlaybackRequired="true">
      <raw encoding="none">GET /WebGoat/service/debug/labels.mvc HTTP/1.1
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko
Referer: http://192.168.1.20:8181/WebGoat/start.mvc
Cookie: JSESSIONID=E38134EFA27EE48D84E5D5D1175CD2C0
Connection: Keep-Alive
Host: 192.168.1.20:8181
X-Requested-With: XMLHttpRequest
Accept: application/json, text/javascript, */*; q=0.01
Accept-Language: pt-PT

</raw>
      <cookie name="JSESSIONID" value="E38134EFA27EE48D84E5D5D1175CD2C0" path="/WebGoat/service/debug" domain="192.168.1.20" secure="False" expires="01/01/0001 00:00:00" />
      <response status="200" bodyEncoding="utf-8">
        <body value="UEsDBBQAAAAIANJVvkod2qg2KAAAACsAAAAEACQAZGF0YQoAIAAAAAAAAQAYADQtH6Ep2dIBNC0foSnZ0gE0LR+hKdnSAavmUlBQKi5NTk4tLlZSsFIoKSpN1QGJpeYlJuWkpoDE0hJzilO5agFQSwECLQAUAAAACADSVb5KHdqoNigAAAArAAAABAAkAAAAAAAAAAAAAAAAAAAAZGF0YQoAIAAAAAAAAQAYADQtH6Ep2dIBNC0foSnZ0gE0LR+hKdnSAVBLBQYAAAAAAQABAFYAAABuAAAAAAA=" compressedBinaryValue="true" />
        <headers value="HTTP/1.1 200 &#xA;Content-Length: 43&#xD;&#xA;X-Frame-Options: DENY&#xD;&#xA;X-Content-Type-Options: nosniff&#xD;&#xA;X-XSS-Protection: 1; mode=block&#xD;&#xA;Date: Tue, 30 May 2017 09:46:33 GMT&#xD;&#xA;Content-Type: application/json;charset=UTF-8&#xD;&#xA;X-Application-Context: application:8080&#xD;&#xA;" />
      </response>
      <sessionCookies>
        <cookie name="JSESSIONID" value="E38134EFA27EE48D84E5D5D1175CD2C0" path="/WebGoat" domain="192.168.1.20" secure="False" expires="01/01/0001 00:00:00" />
      </sessionCookies>
    </request>
    <request scheme="http" host="192.168.1.20" path="/WebGoat/HttpBasics.lesson.lesson" port="8181" method="GET" RequestEncoding="28591" SessionRequestType="Regular" ordinal="68" ValidationStatus="None" MultiStepTested="true" sequencePlaybackRequired="true">
      <raw encoding="none">GET /WebGoat/HttpBasics.lesson.lesson HTTP/1.1
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko
Referer: http://192.168.1.20:8181/WebGoat/start.mvc
Cookie: JSESSIONID=E38134EFA27EE48D84E5D5D1175CD2C0
Connection: Keep-Alive
Host: 192.168.1.20:8181
X-Requested-With: XMLHttpRequest
Accept: text/html, */*; q=0.01
Accept-Language: pt-PT

</raw>
      <cookie name="JSESSIONID" value="E38134EFA27EE48D84E5D5D1175CD2C0" path="/WebGoat" domain="192.168.1.20" secure="False" expires="01/01/0001 00:00:00" />
      <response status="200" bodyEncoding="utf-8">
        <body value="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" compressedBinaryValue="true" />
        <headers value="HTTP/1.1 200 &#xA;X-XSS-Protection: 1; mode=block&#xD;&#xA;Content-Length: 7344&#xD;&#xA;X-Frame-Options: DENY&#xD;&#xA;X-Content-Type-Options: nosniff&#xD;&#xA;Content-Language: pt-PT&#xD;&#xA;Date: Tue, 30 May 2017 09:46:33 GMT&#xD;&#xA;X-Application-Context: application:8080&#xD;&#xA;Content-Type: text/html;charset=UTF-8&#xD;&#xA;" />
      </response>
      <sessionCookies>
        <cookie name="JSESSIONID" value="E38134EFA27EE48D84E5D5D1175CD2C0" path="/WebGoat" domain="192.168.1.20" secure="False" expires="01/01/0001 00:00:00" />
      </sessionCookies>
    </request>
    <request scheme="http" host="192.168.1.20" path="/WebGoat/service/lessonmenu.mvc" port="8181" method="GET" RequestEncoding="28591" SessionRequestType="Regular" ordinal="69" ValidationStatus="None" MultiStepTested="true" sequencePlaybackRequired="true">
      <raw encoding="none">GET /WebGoat/service/lessonmenu.mvc HTTP/1.1
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko
Referer: http://192.168.1.20:8181/WebGoat/start.mvc
Cookie: JSESSIONID=E38134EFA27EE48D84E5D5D1175CD2C0
Connection: Keep-Alive
Host: 192.168.1.20:8181
X-Requested-With: XMLHttpRequest
Accept: application/json, text/javascript, */*; q=0.01
Accept-Language: pt-PT

</raw>
      <cookie name="JSESSIONID" value="E38134EFA27EE48D84E5D5D1175CD2C0" path="/WebGoat/service" domain="192.168.1.20" secure="False" expires="01/01/0001 00:00:00" />
      <response status="200" bodyEncoding="utf-8">
        <body value="UEsDBBQAAAAIANJVvkr7Y6oRbwEAAA8IAAAEACQAZGF0YQoAIAAAAAAAAQAYADQtH6Ep2dIBNC0foSnZ0gE0LR+hKdnSAb1VTU/CQBC98ysm9aKJ1bPeagWEEFGWaA3hUJZFFpfdujsVifG/u22hQPyIaSnX1877mJdOB/BRA3BkOGcOXILTZJLpUDinCYrLKEN9r19vdntPGUynXIw1k8mjQTq/zTBFjNxRaDg1Z8hRsHRom61TJ6R7u4Z32YZrVM0jwTAdmITCsBUuuHxJSY4EM0bJ8xsrd5WpZYhjX/w8/dlWpNU7ZwfzdbeS2zKWEX2nqa0sbwx7lNox8JVErQQ0RLgwJWrhY6UPkbt13e0VDNz2AiCMxprjskRSX3AmEQwfM5hwgUxz+Vxt6EySWMXGWrDgDmKcWiZOQ+RKli59tsA9dY46/jV9+7FfLK2vlTEu4ciAUM0jtHuD44CQkzL1J6SwS1px+4liIpjrFVtHS84Y3Uvv5L4DOVu14cmryJX+vsBBUK/WihUotviHWCR/vZFg9tzOIyXtJ2jABe+iRAdvOalLc9JDXOBNmk2Y/+0Fhl9QSwECLQAUAAAACADSVb5K+2OqEW8BAAAPCAAABAAkAAAAAAAAAAAAAAAAAAAAZGF0YQoAIAAAAAAAAQAYADQtH6Ep2dIBNC0foSnZ0gE0LR+hKdnSAVBLBQYAAAAAAQABAFYAAAC1AQAAAAA=" compressedBinaryValue="true" />
        <headers value="HTTP/1.1 200 &#xA;Content-Length: 2063&#xD;&#xA;X-Frame-Options: DENY&#xD;&#xA;X-Content-Type-Options: nosniff&#xD;&#xA;X-XSS-Protection: 1; mode=block&#xD;&#xA;Date: Tue, 30 May 2017 09:46:33 GMT&#xD;&#xA;Content-Type: application/json;charset=UTF-8&#xD;&#xA;X-Application-Context: application:8080&#xD;&#xA;" />
      </response>
      <sessionCookies>
        <cookie name="JSESSIONID" value="E38134EFA27EE48D84E5D5D1175CD2C0" path="/WebGoat" domain="192.168.1.20" secure="False" expires="01/01/0001 00:00:00" />
      </sessionCookies>
    </request>
    <request scheme="http" host="192.168.1.20" path="/WebGoat/service/lessoninfo.mvc" port="8181" method="GET" RequestEncoding="28591" SessionRequestType="Regular" ordinal="71" ValidationStatus="None" MultiStepTested="true" sequencePlaybackRequired="true">
      <raw encoding="none">GET /WebGoat/service/lessoninfo.mvc HTTP/1.1
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko
Referer: http://192.168.1.20:8181/WebGoat/start.mvc
Cookie: JSESSIONID=E38134EFA27EE48D84E5D5D1175CD2C0
Connection: Keep-Alive
Host: 192.168.1.20:8181
X-Requested-With: XMLHttpRequest
Accept: application/json, text/javascript, */*; q=0.01
Accept-Language: pt-PT

</raw>
      <cookie name="JSESSIONID" value="E38134EFA27EE48D84E5D5D1175CD2C0" path="/WebGoat/service" domain="192.168.1.20" secure="False" expires="01/01/0001 00:00:00" />
      <response status="200" bodyEncoding="utf-8">
        <body value="UEsDBBQAAAAIANJVvkq9Ue5+SAAAAG4AAAAEACQAZGF0YQoAIAAAAAAAAQAYADQtH6Ep2dIBNC0foSnZ0gE0LR+hKdnSAavmUlBQykktLs7PC8ksyUlVUrBSUMooKSnQTUoszkwu1isBi+qAlGUkFgfnlxYlgxWlJeYUpyKEc0pLMvPzMCQCchIRgly1AFBLAQItABQAAAAIANJVvkq9Ue5+SAAAAG4AAAAEACQAAAAAAAAAAAAAAAAAAABkYXRhCgAgAAAAAAABABgANC0foSnZ0gE0LR+hKdnSATQtH6Ep2dIBUEsFBgAAAAABAAEAVgAAAI4AAAAAAA==" compressedBinaryValue="true" />
        <headers value="HTTP/1.1 200 &#xA;Content-Length: 110&#xD;&#xA;X-Frame-Options: DENY&#xD;&#xA;X-Content-Type-Options: nosniff&#xD;&#xA;X-XSS-Protection: 1; mode=block&#xD;&#xA;Date: Tue, 30 May 2017 09:46:33 GMT&#xD;&#xA;Content-Type: application/json;charset=UTF-8&#xD;&#xA;X-Application-Context: application:8080&#xD;&#xA;" />
      </response>
      <sessionCookies>
        <cookie name="JSESSIONID" value="E38134EFA27EE48D84E5D5D1175CD2C0" path="/WebGoat" domain="192.168.1.20" secure="False" expires="01/01/0001 00:00:00" />
      </sessionCookies>
    </request>
    <request scheme="http" host="192.168.1.20" path="/WebGoat/service/lessonoverview.mvc" port="8181" method="GET" RequestEncoding="28591" SessionRequestType="Regular" ordinal="72" ValidationStatus="None" MultiStepTested="true" sequencePlaybackRequired="true">
      <raw encoding="none">GET /WebGoat/service/lessonoverview.mvc HTTP/1.1
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko
Referer: http://192.168.1.20:8181/WebGoat/start.mvc
Cookie: JSESSIONID=E38134EFA27EE48D84E5D5D1175CD2C0
Connection: Keep-Alive
Host: 192.168.1.20:8181
X-Requested-With: XMLHttpRequest
Accept: application/json, text/javascript, */*; q=0.01
Accept-Language: pt-PT

</raw>
      <cookie name="JSESSIONID" value="E38134EFA27EE48D84E5D5D1175CD2C0" path="/WebGoat/service" domain="192.168.1.20" secure="False" expires="01/01/0001 00:00:00" />
      <response status="200" bodyEncoding="utf-8">
        <body value="UEsDBBQAAAAIANJVvkoP6xlMmAAAAIQBAAAEACQAZGF0YQoAIAAAAAAAAQAYADQtH6Ep2dIBNC0foSnZ0gE0LR+hKdnSAZWPsQ6CQAyGd56i6XwegdHRycHFmZBLxVMuwoFpddDw7t4dMW4GtvbL9zd/K3hnAEjM7up76wVhm1CAnnobV9yLjDti1/DBMg8e1SyMJG0S8p+Rkwg1t+LrtM4LR6kKc7A2p6TpxHUkZiamS7d1gVCH6BTzyEP3tOcYv1DHNpvUur7Hh3staFuubWvu4XCoqpZo5d+PoP4AUEsBAi0AFAAAAAgA0lW+Sg/rGUyYAAAAhAEAAAQAJAAAAAAAAAAAAAAAAAAAAGRhdGEKACAAAAAAAAEAGAA0LR+hKdnSATQtH6Ep2dIBNC0foSnZ0gFQSwUGAAAAAAEAAQBWAAAA3gAAAAAA" compressedBinaryValue="true" />
        <headers value="HTTP/1.1 200 &#xA;Content-Length: 388&#xD;&#xA;X-Frame-Options: DENY&#xD;&#xA;X-Content-Type-Options: nosniff&#xD;&#xA;X-XSS-Protection: 1; mode=block&#xD;&#xA;Date: Tue, 30 May 2017 09:46:33 GMT&#xD;&#xA;Content-Type: application/json;charset=UTF-8&#xD;&#xA;X-Application-Context: application:8080&#xD;&#xA;" />
      </response>
      <sessionCookies>
        <cookie name="JSESSIONID" value="E38134EFA27EE48D84E5D5D1175CD2C0" path="/WebGoat" domain="192.168.1.20" secure="False" expires="01/01/0001 00:00:00" />
      </sessionCookies>
    </request>
    <request scheme="http" host="192.168.1.20" path="/WebGoat/service/hint.mvc" port="8181" method="GET" RequestEncoding="28591" SessionRequestType="Regular" ordinal="73" ValidationStatus="None" MultiStepTested="true" sequencePlaybackRequired="true">
      <raw encoding="none">GET /WebGoat/service/hint.mvc HTTP/1.1
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko
Referer: http://192.168.1.20:8181/WebGoat/start.mvc
Cookie: JSESSIONID=E38134EFA27EE48D84E5D5D1175CD2C0
Connection: Keep-Alive
Host: 192.168.1.20:8181
X-Requested-With: XMLHttpRequest
Accept: application/json, text/javascript, */*; q=0.01
Accept-Language: pt-PT

</raw>
      <cookie name="JSESSIONID" value="E38134EFA27EE48D84E5D5D1175CD2C0" path="/WebGoat/service" domain="192.168.1.20" secure="False" expires="01/01/0001 00:00:00" />
      <response status="200" bodyEncoding="utf-8">
        <body value="UEsDBBQAAAAIANJVvkqvi4mycwAAAFsBAAAEACQAZGF0YQoAIAAAAAAAAQAYADQtH6Ep2dIBNC0foSnZ0gE0LR+hKdnSAYtWqOZSUFDKyMwrUVKwAjJKSgp0kxKLM5OL9UCCQBIoEg8WiS8szazSM1TSAelILC7OTM/LTc0rCUgsyQDr1fcAKnUC69VPLClJTM42gqjNK81NSi0CqTHgqtUh2UYjOtpYHJ+TWlycn0eSNw2xWKoQCwBQSwECLQAUAAAACADSVb5Kr4uJsnMAAABbAQAABAAkAAAAAAAAAAAAAAAAAAAAZGF0YQoAIAAAAAAAAQAYADQtH6Ep2dIBNC0foSnZ0gE0LR+hKdnSAVBLBQYAAAAAAQABAFYAAAC5AAAAAAA=" compressedBinaryValue="true" />
        <headers value="HTTP/1.1 200 &#xA;Content-Length: 347&#xD;&#xA;X-Frame-Options: DENY&#xD;&#xA;X-Content-Type-Options: nosniff&#xD;&#xA;X-XSS-Protection: 1; mode=block&#xD;&#xA;Date: Tue, 30 May 2017 09:46:33 GMT&#xD;&#xA;Content-Type: application/json;charset=UTF-8&#xD;&#xA;X-Application-Context: application:8080&#xD;&#xA;" />
      </response>
      <sessionCookies>
        <cookie name="JSESSIONID" value="E38134EFA27EE48D84E5D5D1175CD2C0" path="/WebGoat" domain="192.168.1.20" secure="False" expires="01/01/0001 00:00:00" />
      </sessionCookies>
    </request>
    <request scheme="http" host="192.168.1.20" path="/WebGoat/service/lessonprogress.mvc" port="8181" method="GET" RequestEncoding="28591" SessionRequestType="Regular" ordinal="74" ValidationStatus="None" MultiStepTested="true" sequencePlaybackRequired="true">
      <raw encoding="none">GET /WebGoat/service/lessonprogress.mvc HTTP/1.1
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko
Referer: http://192.168.1.20:8181/WebGoat/start.mvc
Cookie: JSESSIONID=E38134EFA27EE48D84E5D5D1175CD2C0
Connection: Keep-Alive
Host: 192.168.1.20:8181
X-Requested-With: XMLHttpRequest
Accept: application/json, text/javascript, */*; q=0.01
Accept-Language: pt-PT

</raw>
      <cookie name="JSESSIONID" value="E38134EFA27EE48D84E5D5D1175CD2C0" path="/WebGoat/service" domain="192.168.1.20" secure="False" expires="01/01/0001 00:00:00" />
      <response status="200" bodyEncoding="utf-8">
        <body value="UEsDBBQAAAAIANJVvkqQziCGNQAAAEcAAAAEACQAZGF0YQoAIAAAAAAAAQAYADQtH6Ep2dIBNC0foSnZ0gE0LR+hKdnSAavmUlBQykktLs7Pc87PLchJLUlNUVKwUkhLzClO1QFJFpcmJwPlfYE4MT0VJKfkg6aeqxYAUEsBAi0AFAAAAAgA0lW+SpDOIIY1AAAARwAAAAQAJAAAAAAAAAAAAAAAAAAAAGRhdGEKACAAAAAAAAEAGAA0LR+hKdnSATQtH6Ep2dIBNC0foSnZ0gFQSwUGAAAAAAEAAQBWAAAAewAAAAAA" compressedBinaryValue="true" />
        <headers value="HTTP/1.1 200 &#xA;Content-Length: 71&#xD;&#xA;X-Frame-Options: DENY&#xD;&#xA;X-Content-Type-Options: nosniff&#xD;&#xA;X-XSS-Protection: 1; mode=block&#xD;&#xA;Date: Tue, 30 May 2017 09:46:33 GMT&#xD;&#xA;Content-Type: application/json;charset=UTF-8&#xD;&#xA;X-Application-Context: application:8080&#xD;&#xA;" />
      </response>
      <sessionCookies>
        <cookie name="JSESSIONID" value="E38134EFA27EE48D84E5D5D1175CD2C0" path="/WebGoat" domain="192.168.1.20" secure="False" expires="01/01/0001 00:00:00" />
      </sessionCookies>
    </request>
  </RecordedSessionRequests>
  <SessionVerifier>
    <Enable>True</Enable>
    <OutSession>False</OutSession>
    <Pattern Base64="True">PkxvZ291dDw=</Pattern>
    <PatternType>Text</PatternType>
    <request scheme="http" host="192.168.1.20" path="/WebGoat/start.mvc" port="8181" method="GET" RequestEncoding="28591" SessionRequestType="Regular" ordinal="9" ValidationStatus="None" MultiStepTested="true" sequencePlaybackRequired="true">
      <raw encoding="none">GET /WebGoat/start.mvc HTTP/1.1
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko
Referer: http://192.168.1.20:8181/WebGoat/login
Cookie: JSESSIONID=E38134EFA27EE48D84E5D5D1175CD2C0
Connection: Keep-Alive
Host: 192.168.1.20:8181
Pragma: no-cache
Accept: image/jpeg, application/x-ms-application, image/gif, application/xaml+xml, image/pjpeg, application/x-ms-xbap, */*
Accept-Language: pt-PT

</raw>
      <cookie name="JSESSIONID" value="E38134EFA27EE48D84E5D5D1175CD2C0" path="/WebGoat" domain="192.168.1.20" secure="False" expires="01/01/0001 00:00:00" />
      <response status="200" bodyEncoding="utf-8">
        <body value="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" compressedBinaryValue="true" />
        <headers value="HTTP/1.1 200 &#xA;X-XSS-Protection: 1; mode=block&#xD;&#xA;Content-Length: 14956&#xD;&#xA;X-Frame-Options: DENY&#xD;&#xA;X-Content-Type-Options: nosniff&#xD;&#xA;Content-Language: pt-PT&#xD;&#xA;Date: Tue, 30 May 2017 09:46:30 GMT&#xD;&#xA;X-Application-Context: application:8080&#xD;&#xA;Content-Type: text/html;charset=UTF-8&#xD;&#xA;" />
      </response>
      <sessionCookies>
        <cookie name="JSESSIONID" value="E38134EFA27EE48D84E5D5D1175CD2C0" path="/WebGoat" domain="192.168.1.20" secure="False" expires="01/01/0001 00:00:00" />
      </sessionCookies>
    </request>
  </SessionVerifier>
  <InSessionRequestIndex>3</InSessionRequestIndex>
  <ActionBasedSequence RecordingBrowser="EmbeddedIE">
    <Enabled>False</Enabled>
    <UseAbl>True</UseAbl>
    <StartingUrl>http://192.168.1.20:8181/WebGoat/login</StartingUrl>
    <Actions>
      <Action ActionType="Wait" BrowserIndex="0" ID="611fe0ee-6610-4c60-ba68-502107b3f23d">
        <ElementLocations>
          <ElementLocation isPreferred="False">
            <tagName name="A" />
            <attributes>
              <attribute key="NAME" value="wait(sec)" />
            </attributes>
          </ElementLocation>
        </ElementLocations>
        <Value>0</Value>
        <ProxyOrdinalRequestBeforeAction>-1</ProxyOrdinalRequestBeforeAction>
      </Action>
      <Action ActionType="Click" BrowserIndex="0" ID="13f9d1f5-74ba-402b-b426-1c07eb424b19">
        <ElementLocations>
          <ElementLocation isPreferred="False">
            <hybridXPath>.#exampleInputEmail1</hybridXPath>
            <xPath>.SECTION[0].SECTION[0].SECTION[0].FORM[0].DIV[0].INPUT[0]</xPath>
            <tagName name="INPUT" />
            <parentForm>&lt;FORM method="post" action="/WebGoat/login" /&gt;</parentForm>
            <attributes>
              <attribute key="id" value="exampleInputEmail1" />
              <attribute key="class" value="form-control" />
              <attribute key="autofocus" value="" />
              <attribute key="type" value="text" />
              <attribute key="placeholder" value="Username" />
              <attribute key="name" value="username" />
            </attributes>
          </ElementLocation>
        </ElementLocations>
        <ProxyOrdinalRequestBeforeAction>-1</ProxyOrdinalRequestBeforeAction>
      </Action>
      <Action ActionType="Set" BrowserIndex="0" ID="b3aa4e74-69f0-46bc-93b5-33f1f1bd49bd">
        <ElementLocations>
          <ElementLocation isPreferred="False">
            <hybridXPath>.#exampleInputEmail1</hybridXPath>
            <xPath>.SECTION[0].SECTION[0].SECTION[0].FORM[0].DIV[0].INPUT[0]</xPath>
            <tagName name="INPUT" />
            <parentForm>&lt;FORM method="post" action="/WebGoat/login" /&gt;</parentForm>
            <attributes>
              <attribute key="id" value="exampleInputEmail1" />
              <attribute key="class" value="form-control" />
              <attribute key="autofocus" value="" />
              <attribute key="type" value="text" />
              <attribute key="placeholder" value="Username" />
              <attribute key="name" value="username" />
            </attributes>
          </ElementLocation>
        </ElementLocations>
        <Value Base64="true" Encrypted="true">fsTg2okgLdzfoyvmu4k65VXDp6gR+tpgDZOLuPdXpxA=</Value>
        <ProxyOrdinalRequestBeforeAction>-1</ProxyOrdinalRequestBeforeAction>
      </Action>
      <Action ActionType="Wait" BrowserIndex="0" ID="1c644d29-c34d-428c-8245-2aebc38885e1">
        <ElementLocations>
          <ElementLocation isPreferred="False">
            <tagName name="A" />
            <attributes>
              <attribute key="NAME" value="wait(sec)" />
            </attributes>
          </ElementLocation>
        </ElementLocations>
        <Value>0</Value>
        <ProxyOrdinalRequestBeforeAction>-1</ProxyOrdinalRequestBeforeAction>
      </Action>
      <Action ActionType="Click" BrowserIndex="0" ID="dc84f67c-ac72-4a4d-bff1-07a36b9fb903">
        <ElementLocations>
          <ElementLocation isPreferred="False">
            <hybridXPath>.#exampleInputEmail1</hybridXPath>
            <xPath>.SECTION[0].SECTION[0].SECTION[0].FORM[0].DIV[0].INPUT[0]</xPath>
            <tagName name="INPUT" />
            <parentForm>&lt;FORM method="post" action="/WebGoat/login" /&gt;</parentForm>
            <attributes>
              <attribute key="id" value="exampleInputEmail1" />
              <attribute key="class" value="form-control" />
              <attribute key="autofocus" value="" />
              <attribute key="type" value="text" />
              <attribute key="placeholder" value="Username" />
              <attribute key="name" value="username" />
            </attributes>
          </ElementLocation>
        </ElementLocations>
        <ProxyOrdinalRequestBeforeAction>-1</ProxyOrdinalRequestBeforeAction>
      </Action>
      <Action ActionType="Wait" BrowserIndex="0" ID="7de267c6-d12c-42ba-be74-f579315bbb6b">
        <ElementLocations>
          <ElementLocation isPreferred="False">
            <tagName name="A" />
            <attributes>
              <attribute key="NAME" value="wait(sec)" />
            </attributes>
          </ElementLocation>
        </ElementLocations>
        <Value>0</Value>
        <ProxyOrdinalRequestBeforeAction>-1</ProxyOrdinalRequestBeforeAction>
      </Action>
      <Action ActionType="Click" BrowserIndex="0" ID="cd868ac9-0186-42d2-bfc6-c86d20f96b39">
        <ElementLocations>
          <ElementLocation isPreferred="False">
            <hybridXPath>.#exampleInputEmail1</hybridXPath>
            <xPath>.SECTION[0].SECTION[0].SECTION[0].FORM[0].DIV[0].INPUT[0]</xPath>
            <tagName name="INPUT" />
            <parentForm>&lt;FORM method="post" action="/WebGoat/login" /&gt;</parentForm>
            <attributes>
              <attribute key="id" value="exampleInputEmail1" />
              <attribute key="class" value="form-control" />
              <attribute key="autofocus" value="" />
              <attribute key="type" value="text" />
              <attribute key="placeholder" value="Username" />
              <attribute key="name" value="username" />
            </attributes>
          </ElementLocation>
        </ElementLocations>
        <ProxyOrdinalRequestBeforeAction>-1</ProxyOrdinalRequestBeforeAction>
      </Action>
      <Action ActionType="Set" BrowserIndex="0" ID="db820ab4-277d-47b8-9fce-38304ac47100">
        <ElementLocations>
          <ElementLocation isPreferred="False">
            <hybridXPath>.#exampleInputEmail1</hybridXPath>
            <xPath>.SECTION[0].SECTION[0].SECTION[0].FORM[0].DIV[0].INPUT[0]</xPath>
            <tagName name="INPUT" />
            <parentForm>&lt;FORM method="post" action="/WebGoat/login" /&gt;</parentForm>
            <attributes>
              <attribute key="id" value="exampleInputEmail1" />
              <attribute key="class" value="form-control" />
              <attribute key="autofocus" value="" />
              <attribute key="type" value="text" />
              <attribute key="placeholder" value="Username" />
              <attribute key="name" value="username" />
            </attributes>
          </ElementLocation>
        </ElementLocations>
        <Value Base64="true" Encrypted="true">i44iNWnoh829DrSh6c0YPw==</Value>
        <ProxyOrdinalRequestBeforeAction>-1</ProxyOrdinalRequestBeforeAction>
      </Action>
      <Action ActionType="Wait" BrowserIndex="0" ID="8ad5b115-5a10-4ea6-86ee-d411215df952">
        <ElementLocations>
          <ElementLocation isPreferred="False">
            <tagName name="A" />
            <attributes>
              <attribute key="NAME" value="wait(sec)" />
            </attributes>
          </ElementLocation>
        </ElementLocations>
        <Value>0</Value>
        <ProxyOrdinalRequestBeforeAction>-1</ProxyOrdinalRequestBeforeAction>
      </Action>
      <Action ActionType="Click" BrowserIndex="0" ID="da439754-bd82-40c1-80fd-8caae497433f">
        <ElementLocations>
          <ElementLocation isPreferred="False">
            <hybridXPath>.#exampleInputPassword1</hybridXPath>
            <xPath>.SECTION[0].SECTION[0].SECTION[0].FORM[0].DIV[1].INPUT[0]</xPath>
            <tagName name="INPUT" />
            <parentForm>&lt;FORM method="post" action="/WebGoat/login" /&gt;</parentForm>
            <attributes>
              <attribute key="id" value="exampleInputPassword1" />
              <attribute key="class" value="form-control" />
              <attribute key="type" value="password" />
              <attribute key="placeholder" value="Password" />
              <attribute key="name" value="password" />
            </attributes>
          </ElementLocation>
        </ElementLocations>
        <ProxyOrdinalRequestBeforeAction>-1</ProxyOrdinalRequestBeforeAction>
      </Action>
      <Action ActionType="Wait" BrowserIndex="0" ID="d6b7af3b-6fde-4966-ad3e-3509d7bfded1">
        <ElementLocations>
          <ElementLocation isPreferred="False">
            <tagName name="A" />
            <attributes>
              <attribute key="NAME" value="wait(sec)" />
            </attributes>
          </ElementLocation>
        </ElementLocations>
        <Value>0</Value>
        <ProxyOrdinalRequestBeforeAction>-1</ProxyOrdinalRequestBeforeAction>
      </Action>
      <Action ActionType="Click" BrowserIndex="0" ID="ecc88f4f-d79f-44ac-af5a-2e4190512ac4">
        <ElementLocations>
          <ElementLocation isPreferred="False">
            <hybridXPath>.#main-content.FORM[0].DIV[1]</hybridXPath>
            <xPath>.SECTION[0].SECTION[0].SECTION[0].FORM[0].DIV[1]</xPath>
            <tagName name="DIV" />
            <innerText>Password </innerText>
            <parentForm>&lt;FORM method="post" action="/WebGoat/login" /&gt;</parentForm>
            <attributes>
              <attribute key="class" value="form-group" />
            </attributes>
          </ElementLocation>
        </ElementLocations>
        <ProxyOrdinalRequestBeforeAction>-1</ProxyOrdinalRequestBeforeAction>
      </Action>
      <Action ActionType="Wait" BrowserIndex="0" ID="7efd76af-333f-4e37-a709-83e700fce179">
        <ElementLocations>
          <ElementLocation isPreferred="False">
            <tagName name="A" />
            <attributes>
              <attribute key="NAME" value="wait(sec)" />
            </attributes>
          </ElementLocation>
        </ElementLocations>
        <Value>0</Value>
        <ProxyOrdinalRequestBeforeAction>-1</ProxyOrdinalRequestBeforeAction>
      </Action>
      <Action ActionType="Click" BrowserIndex="0" ID="47daca1f-0479-41ca-b18a-71be1766e2a1">
        <ElementLocations>
          <ElementLocation isPreferred="False">
            <hybridXPath>.#exampleInputPassword1</hybridXPath>
            <xPath>.SECTION[0].SECTION[0].SECTION[0].FORM[0].DIV[1].INPUT[0]</xPath>
            <tagName name="INPUT" />
            <parentForm>&lt;FORM method="post" action="/WebGoat/login" /&gt;</parentForm>
            <attributes>
              <attribute key="id" value="exampleInputPassword1" />
              <attribute key="class" value="form-control" />
              <attribute key="type" value="password" />
              <attribute key="placeholder" value="Password" />
              <attribute key="name" value="password" />
            </attributes>
          </ElementLocation>
        </ElementLocations>
        <ProxyOrdinalRequestBeforeAction>-1</ProxyOrdinalRequestBeforeAction>
      </Action>
      <Action ActionType="Wait" BrowserIndex="0" ID="6144e583-167b-4fe1-8778-8e5ceb4ed132">
        <ElementLocations>
          <ElementLocation isPreferred="False">
            <tagName name="A" />
            <attributes>
              <attribute key="NAME" value="wait(sec)" />
            </attributes>
          </ElementLocation>
        </ElementLocations>
        <Value>0</Value>
        <ProxyOrdinalRequestBeforeAction>-1</ProxyOrdinalRequestBeforeAction>
      </Action>
      <Action ActionType="Click" BrowserIndex="0" ID="102f11b6-13c0-446b-857d-50088f8748db">
        <ElementLocations>
          <ElementLocation isPreferred="False">
            <hybridXPath>.#exampleInputPassword1</hybridXPath>
            <xPath>.SECTION[0].SECTION[0].SECTION[0].FORM[0].DIV[1].INPUT[0]</xPath>
            <tagName name="INPUT" />
            <parentForm>&lt;FORM method="post" action="/WebGoat/login" /&gt;</parentForm>
            <attributes>
              <attribute key="id" value="exampleInputPassword1" />
              <attribute key="class" value="form-control" />
              <attribute key="type" value="password" />
              <attribute key="placeholder" value="Password" />
              <attribute key="name" value="password" />
            </attributes>
          </ElementLocation>
        </ElementLocations>
        <ProxyOrdinalRequestBeforeAction>-1</ProxyOrdinalRequestBeforeAction>
      </Action>
      <Action ActionType="Set" BrowserIndex="0" ID="9d79e5ba-5e8d-4425-bee0-2f5935061372">
        <ElementLocations>
          <ElementLocation isPreferred="False">
            <hybridXPath>.#exampleInputPassword1</hybridXPath>
            <xPath>.SECTION[0].SECTION[0].SECTION[0].FORM[0].DIV[1].INPUT[0]</xPath>
            <tagName name="INPUT" />
            <parentForm>&lt;FORM method="post" action="/WebGoat/login" /&gt;</parentForm>
            <attributes>
              <attribute key="id" value="exampleInputPassword1" />
              <attribute key="class" value="form-control" />
              <attribute key="type" value="password" />
              <attribute key="placeholder" value="Password" />
              <attribute key="name" value="password" />
            </attributes>
          </ElementLocation>
        </ElementLocations>
        <Value Base64="true" Encrypted="true">i44iNWnoh829DrSh6c0YPw==</Value>
        <ProxyOrdinalRequestBeforeAction>-1</ProxyOrdinalRequestBeforeAction>
      </Action>
      <Action ActionType="Wait" BrowserIndex="0" ID="e237ad2f-1d80-4c19-b2cb-9b1a235aefda">
        <ElementLocations>
          <ElementLocation isPreferred="False">
            <tagName name="A" />
            <attributes>
              <attribute key="NAME" value="wait(sec)" />
            </attributes>
          </ElementLocation>
        </ElementLocations>
        <Value>0</Value>
        <ProxyOrdinalRequestBeforeAction>-1</ProxyOrdinalRequestBeforeAction>
      </Action>
      <Action ActionType="Click" BrowserIndex="0" ID="0464ce23-1da3-4d22-92f5-3471b461918c">
        <ElementLocations>
          <ElementLocation isPreferred="False">
            <hybridXPath>.#main-content.FORM[0].BUTTON[0]</hybridXPath>
            <xPath>.SECTION[0].SECTION[0].SECTION[0].FORM[0].BUTTON[0]</xPath>
            <tagName name="BUTTON" />
            <innerText>Sign in</innerText>
            <parentForm>&lt;FORM method="post" action="/WebGoat/login" /&gt;</parentForm>
            <attributes>
              <attribute key="class" value="btn btn-primary btn-block" />
              <attribute key="type" value="submit" />
            </attributes>
          </ElementLocation>
        </ElementLocations>
        <ProxyOrdinalRequestBeforeAction>-1</ProxyOrdinalRequestBeforeAction>
      </Action>
      <Action ActionType="VerifyElementsExists" BrowserIndex="0" ID="57d18f8c-747f-4749-a139-edfbca2d33dc">
        <ElementLocations>
          <ElementLocation isPreferred="True">
            <hybridXPath>.#user-and-info-nav.DIV[0].UL[0].LI[0].A[0]</hybridXPath>
            <xPath>.SECTION[0].HEADER[0].DIV[3].DIV[0].UL[0].LI[0].A[0]</xPath>
            <tagName name="A" />
            <innerText>Logout</innerText>
            <attributes>
              <attribute key="role" value="menuitem" />
              <attribute key="tabindex" value="" />
              <attribute key="href" value="http://192.168.1.20:8181/WebGoat/logout" />
            </attributes>
            <urlAttributes>
              <attribute key="href" value="/WebGoat/logout" />
            </urlAttributes>
          </ElementLocation>
          <ElementLocation isPreferred="False">
            <hybridXPath>.#lesson-content-wrapper.DIV[5].DIV[2].DIV[1].DIV[0].DIV[1].DIV[2].UL[0].LI[0].DIV[0].UL[0].LI[0].P[0]</hybridXPath>
            <xPath>.SECTION[0].SECTION[0].SECTION[0].DIV[0].DIV[0].DIV[0].DIV[0].DIV[0].DIV[5].DIV[2].DIV[1].DIV[0].DIV[1].DIV[2].UL[0].LI[0].DIV[0].UL[0].LI[0].P[0]</xPath>
            <tagName name="P" />
            <innerText>GET /index.html?param=value HTTP/1.0</innerText>
          </ElementLocation>
          <ElementLocation isPreferred="False">
            <hybridXPath>.#lesson-content-wrapper.DIV[5].DIV[2].DIV[1].DIV[0].DIV[1].DIV[2].UL[0].LI[1].DIV[0].UL[0].LI[0].P[0]</hybridXPath>
            <xPath>.SECTION[0].SECTION[0].SECTION[0].DIV[0].DIV[0].DIV[0].DIV[0].DIV[0].DIV[5].DIV[2].DIV[1].DIV[0].DIV[1].DIV[2].UL[0].LI[1].DIV[0].UL[0].LI[0].P[0]</xPath>
            <tagName name="P" />
            <innerText>User-Agent: Mozilla/4.06 Accept: image/gif,image/j</innerText>
          </ElementLocation>
        </ElementLocations>
        <ProxyOrdinalRequestBeforeAction>-1</ProxyOrdinalRequestBeforeAction>
      </Action>
    </Actions>
    <VerifyElementsActionThreshold>1</VerifyElementsActionThreshold>
    <LogoutRegex>log[_\-\s]?out|sign[_\-\s]?out|log[_\-\s]?off|sign[_\-\s]?off|exit|quit|bye-bye|clearuser|invalidate|sign out|sign off|log out|log off|disconnect</LogoutRegex>
  </ActionBasedSequence>
  <VariablesDefinitions>
    <VariableDefinition IsRegularExpression="False" Name="">
      <VariableType>DefaultDefinitions</VariableType>
      <Hosts />
      <Path />
      <Comments />
      <RequestIgnoreStatus>None</RequestIgnoreStatus>
      <EntityIgnoreStatus>Value</EntityIgnoreStatus>
      <ExcludeFromTest>False</ExcludeFromTest>
      <SessionIDEnabled>False</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>False</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="True" Name="^BV_">
      <VariableType>Parameter</VariableType>
      <Hosts />
      <Path />
      <Comments />
      <RequestIgnoreStatus>Value</RequestIgnoreStatus>
      <EntityIgnoreStatus>Value</EntityIgnoreStatus>
      <ExcludeFromTest>True</ExcludeFromTest>
      <SessionIDEnabled>True</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>False</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="True" Name="^CFID">
      <VariableType>Parameter</VariableType>
      <Hosts />
      <Path />
      <Comments />
      <RequestIgnoreStatus>Value</RequestIgnoreStatus>
      <EntityIgnoreStatus>Value</EntityIgnoreStatus>
      <ExcludeFromTest>True</ExcludeFromTest>
      <SessionIDEnabled>False</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>False</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="True" Name="^CFTOKEN">
      <VariableType>Parameter</VariableType>
      <Hosts />
      <Path />
      <Comments />
      <RequestIgnoreStatus>Value</RequestIgnoreStatus>
      <EntityIgnoreStatus>Value</EntityIgnoreStatus>
      <ExcludeFromTest>True</ExcludeFromTest>
      <SessionIDEnabled>False</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>False</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="False" Name="__VIEWSTATE">
      <VariableType>Parameter</VariableType>
      <Hosts />
      <Path />
      <Comments />
      <RequestIgnoreStatus>Value</RequestIgnoreStatus>
      <EntityIgnoreStatus>Value</EntityIgnoreStatus>
      <ExcludeFromTest>True</ExcludeFromTest>
      <SessionIDEnabled>False</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>False</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="False" Name="__EVENTVALIDATION">
      <VariableType>Parameter</VariableType>
      <Hosts />
      <Path />
      <Comments />
      <RequestIgnoreStatus>Value</RequestIgnoreStatus>
      <EntityIgnoreStatus>Value</EntityIgnoreStatus>
      <ExcludeFromTest>True</ExcludeFromTest>
      <SessionIDEnabled>False</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>False</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="False" Name="__REQUESTDIGEST">
      <VariableType>Parameter</VariableType>
      <Hosts />
      <Path />
      <Comments />
      <RequestIgnoreStatus>Value</RequestIgnoreStatus>
      <EntityIgnoreStatus>Value</EntityIgnoreStatus>
      <ExcludeFromTest>True</ExcludeFromTest>
      <SessionIDEnabled>False</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>False</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="False" Name="__VIEWSTATEGENERATOR">
      <VariableType>Parameter</VariableType>
      <Hosts />
      <Path />
      <Comments />
      <RequestIgnoreStatus>Value</RequestIgnoreStatus>
      <EntityIgnoreStatus>Value</EntityIgnoreStatus>
      <ExcludeFromTest>True</ExcludeFromTest>
      <SessionIDEnabled>False</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>False</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="False" Name="__EVENTARGUMENT">
      <VariableType>Parameter</VariableType>
      <Hosts />
      <Path />
      <Comments />
      <RequestIgnoreStatus>None</RequestIgnoreStatus>
      <EntityIgnoreStatus>None</EntityIgnoreStatus>
      <ExcludeFromTest>True</ExcludeFromTest>
      <SessionIDEnabled>False</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>False</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="False" Name="__EVENTTARGET">
      <VariableType>Parameter</VariableType>
      <Hosts />
      <Path />
      <Comments />
      <RequestIgnoreStatus>None</RequestIgnoreStatus>
      <EntityIgnoreStatus>None</EntityIgnoreStatus>
      <ExcludeFromTest>True</ExcludeFromTest>
      <SessionIDEnabled>False</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>False</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="False" Name="__VIEWSTATEID">
      <VariableType>Parameter</VariableType>
      <Hosts />
      <Path>/</Path>
      <Comments>An id of the viewstate that is stored in the server's db. </Comments>
      <RequestIgnoreStatus>Value</RequestIgnoreStatus>
      <EntityIgnoreStatus>Value</EntityIgnoreStatus>
      <ExcludeFromTest>True</ExcludeFromTest>
      <SessionIDEnabled>False</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>False</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="False" Name="__LASTFOCUS">
      <VariableType>Parameter</VariableType>
      <Hosts />
      <Path>/</Path>
      <Comments />
      <RequestIgnoreStatus>Full</RequestIgnoreStatus>
      <EntityIgnoreStatus>Full</EntityIgnoreStatus>
      <ExcludeFromTest>True</ExcludeFromTest>
      <SessionIDEnabled>False</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>False</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="False" Name="__SCROLLPOSITIONX">
      <VariableType>Parameter</VariableType>
      <Hosts />
      <Path>/</Path>
      <Comments />
      <RequestIgnoreStatus>Full</RequestIgnoreStatus>
      <EntityIgnoreStatus>Full</EntityIgnoreStatus>
      <ExcludeFromTest>True</ExcludeFromTest>
      <SessionIDEnabled>False</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>False</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="False" Name="__SCROLLPOSITIONY">
      <VariableType>Parameter</VariableType>
      <Hosts />
      <Path>/</Path>
      <Comments />
      <RequestIgnoreStatus>Full</RequestIgnoreStatus>
      <EntityIgnoreStatus>Full</EntityIgnoreStatus>
      <ExcludeFromTest>True</ExcludeFromTest>
      <SessionIDEnabled>False</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>False</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="False" Name="__PREVIOUSPAGE">
      <VariableType>Parameter</VariableType>
      <Hosts />
      <Path>/</Path>
      <Comments />
      <RequestIgnoreStatus>Value</RequestIgnoreStatus>
      <EntityIgnoreStatus>Value</EntityIgnoreStatus>
      <ExcludeFromTest>True</ExcludeFromTest>
      <SessionIDEnabled>False</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>False</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="False" Name="__CALLBACKID">
      <VariableType>Parameter</VariableType>
      <Hosts />
      <Path>/</Path>
      <Comments />
      <RequestIgnoreStatus>None</RequestIgnoreStatus>
      <EntityIgnoreStatus>None</EntityIgnoreStatus>
      <ExcludeFromTest>True</ExcludeFromTest>
      <SessionIDEnabled>False</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>False</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="False" Name="__CALLBACKPARAM">
      <VariableType>Parameter</VariableType>
      <Hosts />
      <Path>/</Path>
      <Comments />
      <RequestIgnoreStatus>None</RequestIgnoreStatus>
      <EntityIgnoreStatus>None</EntityIgnoreStatus>
      <ExcludeFromTest>True</ExcludeFromTest>
      <SessionIDEnabled>False</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>False</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="False" Name="__VIEWSTATEFIELDCOUNT">
      <VariableType>Parameter</VariableType>
      <Hosts />
      <Path>/</Path>
      <Comments />
      <RequestIgnoreStatus>Full</RequestIgnoreStatus>
      <EntityIgnoreStatus>Full</EntityIgnoreStatus>
      <ExcludeFromTest>True</ExcludeFromTest>
      <SessionIDEnabled>False</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>False</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="True" Name="__VIEWSTATE\d+">
      <VariableType>Parameter</VariableType>
      <Hosts />
      <Path>/</Path>
      <Comments />
      <RequestIgnoreStatus>Full</RequestIgnoreStatus>
      <EntityIgnoreStatus>Full</EntityIgnoreStatus>
      <ExcludeFromTest>True</ExcludeFromTest>
      <SessionIDEnabled>False</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>False</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="False" Name="wsdl">
      <VariableType>Parameter</VariableType>
      <Hosts />
      <Path />
      <Comments />
      <RequestIgnoreStatus>Full</RequestIgnoreStatus>
      <EntityIgnoreStatus>Full</EntityIgnoreStatus>
      <ExcludeFromTest>True</ExcludeFromTest>
      <SessionIDEnabled>False</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>False</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="False" Name="disco">
      <VariableType>Parameter</VariableType>
      <Hosts />
      <Path />
      <Comments />
      <RequestIgnoreStatus>Full</RequestIgnoreStatus>
      <EntityIgnoreStatus>Full</EntityIgnoreStatus>
      <ExcludeFromTest>True</ExcludeFromTest>
      <SessionIDEnabled>False</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>False</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="False" Name="javax.faces.viewstate">
      <VariableType>Parameter</VariableType>
      <Hosts />
      <Path />
      <Comments />
      <RequestIgnoreStatus>Value</RequestIgnoreStatus>
      <EntityIgnoreStatus>Value</EntityIgnoreStatus>
      <ExcludeFromTest>True</ExcludeFromTest>
      <SessionIDEnabled>False</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>False</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="True" Name="^BV_">
      <VariableType>Cookie</VariableType>
      <Hosts />
      <Path />
      <Comments />
      <RequestIgnoreStatus>Value</RequestIgnoreStatus>
      <EntityIgnoreStatus>Value</EntityIgnoreStatus>
      <ExcludeFromTest>True</ExcludeFromTest>
      <SessionIDEnabled>True</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>False</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="False" Name="JSESSIONID">
      <VariableType>Custom</VariableType>
      <Hosts />
      <Path />
      <Comments />
      <RequestIgnoreStatus>Value</RequestIgnoreStatus>
      <EntityIgnoreStatus>Value</EntityIgnoreStatus>
      <ExcludeFromTest>True</ExcludeFromTest>
      <SessionIDEnabled>True</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>False</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="False" Name="IIS_COOKIELESS">
      <VariableType>Custom</VariableType>
      <Hosts />
      <Path />
      <Comments />
      <RequestIgnoreStatus>Value</RequestIgnoreStatus>
      <EntityIgnoreStatus>Value</EntityIgnoreStatus>
      <ExcludeFromTest>True</ExcludeFromTest>
      <SessionIDEnabled>True</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>False</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="True" Name="ses|token">
      <VariableType>Cookie</VariableType>
      <Hosts />
      <Path />
      <Comments>Session cookie regular expression</Comments>
      <RequestIgnoreStatus>Value</RequestIgnoreStatus>
      <EntityIgnoreStatus>Value</EntityIgnoreStatus>
      <ExcludeFromTest>True</ExcludeFromTest>
      <SessionIDEnabled>True</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>False</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="True" Name="(?:server|user|u)_*id">
      <VariableType>Cookie</VariableType>
      <Hosts />
      <Path />
      <Comments>Server or user id</Comments>
      <RequestIgnoreStatus>Value</RequestIgnoreStatus>
      <EntityIgnoreStatus>Value</EntityIgnoreStatus>
      <ExcludeFromTest>False</ExcludeFromTest>
      <SessionIDEnabled>True</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>False</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="False" Name="JSESSIONID">
      <VariableType>Parameter</VariableType>
      <Hosts />
      <Path />
      <Comments />
      <RequestIgnoreStatus>Value</RequestIgnoreStatus>
      <EntityIgnoreStatus>Value</EntityIgnoreStatus>
      <ExcludeFromTest>True</ExcludeFromTest>
      <SessionIDEnabled>True</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>False</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="False" Name="PHPSESSID">
      <VariableType>Parameter</VariableType>
      <Hosts />
      <Path />
      <Comments />
      <RequestIgnoreStatus>Value</RequestIgnoreStatus>
      <EntityIgnoreStatus>Value</EntityIgnoreStatus>
      <ExcludeFromTest>True</ExcludeFromTest>
      <SessionIDEnabled>True</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>False</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="True" Name="__utm.|vgnvisitor|_csuid|_csoot|WEBTRENDS_ID|WT_FPS|cookieenabledcheck|__qc[ab]|MintUnique|PD_STATEFUL|_sn|BCSI\\-">
      <VariableType>Cookie</VariableType>
      <Hosts />
      <Path />
      <Comments>Cookie that tracks visitor activity for a third-party application</Comments>
      <RequestIgnoreStatus>Full</RequestIgnoreStatus>
      <EntityIgnoreStatus>Full</EntityIgnoreStatus>
      <ExcludeFromTest>True</ExcludeFromTest>
      <SessionIDEnabled>False</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>False</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="True" Name="(ASPSESSIONID[a-zA-Z0-9]{8})">
      <VariableType>Cookie</VariableType>
      <Hosts />
      <Path />
      <Comments />
      <RequestIgnoreStatus>None</RequestIgnoreStatus>
      <EntityIgnoreStatus>Value</EntityIgnoreStatus>
      <ExcludeFromTest>False</ExcludeFromTest>
      <SessionIDEnabled>True</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>True</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="True" Name="WC_AUTHENTICATION_(\d+)">
      <VariableType>Cookie</VariableType>
      <Hosts />
      <Path />
      <Comments />
      <RequestIgnoreStatus>None</RequestIgnoreStatus>
      <EntityIgnoreStatus>Value</EntityIgnoreStatus>
      <ExcludeFromTest>False</ExcludeFromTest>
      <SessionIDEnabled>True</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>True</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="True" Name="WC_USERACTIVITY_(\d+)">
      <VariableType>Cookie</VariableType>
      <Hosts />
      <Path />
      <Comments />
      <RequestIgnoreStatus>None</RequestIgnoreStatus>
      <EntityIgnoreStatus>Value</EntityIgnoreStatus>
      <ExcludeFromTest>False</ExcludeFromTest>
      <SessionIDEnabled>True</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>True</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="False" Name="GUID">
      <VariableType>Custom</VariableType>
      <Hosts />
      <Path />
      <Comments />
      <RequestIgnoreStatus>Value</RequestIgnoreStatus>
      <EntityIgnoreStatus>Value</EntityIgnoreStatus>
      <ExcludeFromTest>False</ExcludeFromTest>
      <SessionIDEnabled>False</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>False</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="False" Name="NUMERIC">
      <VariableType>Custom</VariableType>
      <Hosts />
      <Path />
      <Comments />
      <RequestIgnoreStatus>Value</RequestIgnoreStatus>
      <EntityIgnoreStatus>Value</EntityIgnoreStatus>
      <ExcludeFromTest>False</ExcludeFromTest>
      <SessionIDEnabled>False</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>False</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="False" Name="HEXDECIMAL">
      <VariableType>Custom</VariableType>
      <Hosts />
      <Path />
      <Comments />
      <RequestIgnoreStatus>Value</RequestIgnoreStatus>
      <EntityIgnoreStatus>Value</EntityIgnoreStatus>
      <ExcludeFromTest>False</ExcludeFromTest>
      <SessionIDEnabled>False</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>False</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="False" Name="DATE">
      <VariableType>Custom</VariableType>
      <Hosts />
      <Path />
      <Comments />
      <RequestIgnoreStatus>Value</RequestIgnoreStatus>
      <EntityIgnoreStatus>Value</EntityIgnoreStatus>
      <ExcludeFromTest>False</ExcludeFromTest>
      <SessionIDEnabled>False</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>TemplateDefined</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>False</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value />
      </SessionID>
    </VariableDefinition>
    <VariableDefinition IsRegularExpression="False" Name="JSESSIONID">
      <VariableType>Cookie</VariableType>
      <Hosts>192.168.1.20</Hosts>
      <Path>/WebGoat</Path>
      <Comments>Extracted from manual login sequence recording</Comments>
      <RequestIgnoreStatus>Value</RequestIgnoreStatus>
      <EntityIgnoreStatus>Value</EntityIgnoreStatus>
      <ExcludeFromTest>False</ExcludeFromTest>
      <SessionIDEnabled>True</SessionIDEnabled>
      <CaptureName />
      <CaptureIndex>-1</CaptureIndex>
      <VariableOrigin>Login</VariableOrigin>
      <AlwaysSend>False</AlwaysSend>
      <IsGroup>False</IsGroup>
      <SessionID TrackingMethod="ExploreAndLogin">
        <Value>E38134EFA27EE48D84E5D5D1175CD2C0</Value>
      </SessionID>
    </VariableDefinition>
  </VariablesDefinitions>
  <CustomParameters>
    <CustomParameter LogicalName="JSESSIONID">
      <Pattern>;(?:JSESSIONID|jsessionid)=([^/]+)$</Pattern>
      <NameGroupIndex>-1</NameGroupIndex>
      <ValueGroupIndex>1</ValueGroupIndex>
      <TargetSegment>Path</TargetSegment>
      <ResponsePattern />
      <Condition />
    </CustomParameter>
    <CustomParameter LogicalName="IIS_COOKIELESS">
      <Pattern>(\((?:[ASF]\([a-zA-Z0-9]+\)){1,3}\))</Pattern>
      <NameGroupIndex>-1</NameGroupIndex>
      <ValueGroupIndex>1</ValueGroupIndex>
      <TargetSegment>Path</TargetSegment>
      <ResponsePattern />
      <Condition />
    </CustomParameter>
    <CustomParameter LogicalName="GUID">
      <Pattern>((\{){0,1}[0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}(\}){0,1})</Pattern>
      <NameGroupIndex>-1</NameGroupIndex>
      <ValueGroupIndex>1</ValueGroupIndex>
      <TargetSegment>Path</TargetSegment>
      <ResponsePattern />
      <Condition />
    </CustomParameter>
    <CustomParameter LogicalName="HEXDECIMAL">
      <Pattern>(([A-Fa-f0-9]{40})|([A-Fa-f0-9]{32}))</Pattern>
      <NameGroupIndex>-1</NameGroupIndex>
      <ValueGroupIndex>1</ValueGroupIndex>
      <TargetSegment>Path</TargetSegment>
      <ResponsePattern />
      <Condition />
    </CustomParameter>
    <CustomParameter LogicalName="DATE">
      <Pattern>\b((19|20)\d\d[-/.](0[1-9]|1[012])[-/.](0[1-9]|[12][0-9]|3[01]))\b</Pattern>
      <NameGroupIndex>-1</NameGroupIndex>
      <ValueGroupIndex>1</ValueGroupIndex>
      <TargetSegment>Path</TargetSegment>
      <ResponsePattern />
      <Condition />
    </CustomParameter>
    <CustomParameter LogicalName="NUMERIC">
      <Pattern>\b(\d{8,128})\b</Pattern>
      <NameGroupIndex>-1</NameGroupIndex>
      <ValueGroupIndex>1</ValueGroupIndex>
      <TargetSegment>Path</TargetSegment>
      <ResponsePattern />
      <Condition />
    </CustomParameter>
  </CustomParameters>
</SessionManagement>