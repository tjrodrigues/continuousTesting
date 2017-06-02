*** Settings ***
Resource           ../resources/variables.robot
Suite Setup     Setup User
Suite Teardown  Close Browser

*** Test Cases ***
Login Into Application
    Open Application
    Login

Logout From Application
    Logout

