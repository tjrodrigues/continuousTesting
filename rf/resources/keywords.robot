*** Settings ***
Resource           ../resources/variables.robot
*** Variables ***

*** Keywords ***
Set Selenium Settings
    Set Selenium Implicit Wait      ${SE LENIUM.WAIT}
    Set Selenium Timeout            ${SELENIUM.TIMEOUT}
    #Set Selenium Speed              ${SELENIUM.SPEED}

Open Application
    Open Browser    ${HOMEPAGE}     ${BROWSER}
    Wait Until Element Is Visible    ${SingInBtn}
    #Maximize Browser Window

Register User
    click link  xpath=.//*[@id='main-content']/form/div[3]/a
    Wait Until Element Is Visible   xpath=.//*[@id='matchingPassword']
    input text  xpath=.//*[@id='username']    ${username}
    input text  xpath=.//*[@id='password']  ${password}
    input text  xpath=.//*[@id='matchingPassword']  ${password}
    select checkbox  xpath=.//*[@id='main-content']/fieldset/form/div[5]/div/div/label/input
    click button  xpath=.//*[@id='main-content']/fieldset/form/div[6]/div/button
    Wait Until Element Is Visible   xpath=.//*[@id='show-hints-button']      timeout=60

Login
    input text  xpath=.//*[@id='exampleInputEmail1']    ${username}
    input text  xpath=.//*[@id='exampleInputPassword1']     ${password}
    click button  xpath=.//*[@id='main-content']/form/button
    Wait Until Element Is Visible   xpath=.//*[@id='show-hints-button']      timeout=60

Logout
    Wait Until Element Is Visible    xpath=.//*[@id='user-menu']     timeout=60
    Execute Javascript      document.getElementById("user-menu").click()
    Wait Until Element Is Visible    xpath=.//*[@id='user-and-info-nav']/div[1]/ul/li[1]/a     timeout=60
    click link  xpath=.//*[@id='user-and-info-nav']/div[1]/ul/li[1]/a
    Wait Until Element Is Visible    xpath=.//*[@id='main-content']/form/button     timeout=60

Setup User
    Open Application
    Register User
    close browser
