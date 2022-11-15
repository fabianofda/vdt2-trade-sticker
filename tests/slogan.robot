*** Settings ***
Documentation            Slogan da page login

Resource            ../resources/main.resource

Test Setup        Start Test
Test Teardown     Finish Test

*** Variables ***
${slogan}        Conectando colecionadores de figurinhas da copa.

*** Test Cases ***
Deve validar o slogan da page de login
    New Page            https://trade-sticker-dev.vercel.app/
    Get Text            .logo-container h2    Contains        ${slogan}            