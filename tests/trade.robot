*** Settings ***
Documentation        Teste de negociacao de figurinhas da copa

Resource            ../resources/main.resource

Test Setup        Start Test
Test Teardown     Finish Test

*** Test Cases ***
Deve negociar a figurinha Neymar Legend

    Do Login      
    Search User         Legend
    Select Sticker      Neymar Jr
    Get in touch
    Whatsapp sticker message    Neymar Jr

    