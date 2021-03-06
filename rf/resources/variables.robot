*** Settings ***
Resource           ../resources/keywords.robot
# Default Libraries
Library           Collections
Library           String
Library           OperatingSystem

# External Libraries
Library           Selenium2Library

# External Libraries
Library           Selenium2Library

*** Variables ***
# Application Settings
${HOMEPAGE}                                    ${baseURL}
${BROWSER}                                     chrome
${DURATION}                                    30s
${RETRY}                                       2s
${username}                                    robotfrmw
${password}                                    robotfrmw
################################################ MetX Variables ########################################################
${SingInBtn}                                    xpath=.//*[@id='main-content']/form/button

###############################     Selenium Settings  #################################################################
${SELENIUM.WAIT}                               2s
${SELENIUM.TIMEOUT}                            10 seconds
${SELENIUM.SPEED}                              2s
*** Keywords ***
