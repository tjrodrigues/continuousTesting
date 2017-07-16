*** Settings ***
Resource           ../resources/variables.robot
Resource           ../resources/keywords.robot
Suite Setup     Setup User
*** Suite Teardown  Close Browser *** 

*** Test Cases ***
Login Into Application
    Open Application
    Login

Logout From Application
    Close Browser

