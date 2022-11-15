*** Settings ***
Documentation            Arquivo principal

Library    Browser

Resource        pages/dash.resource
Resource        pages/login.resource

*** Keywords ***
Do Login
    Go to login
    Submit credentials        papito@gmail.com        vaibrasil
    User logged in

Start Test
    New Browser         headless=true

Finish Test
    Take Screenshot