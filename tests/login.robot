*** Settings ***
Documentation            Login tets

Resource            ../resources/main.resource

Test Setup        Start Test
Test Teardown     Finish Test

*** Test Cases ***
Deve logar com sucesso
    
    Go to login
    Submit credentials         papito@gmail.com        vaibrasil
    User logged in

Não deve logar com senha incorreta
    [Tags]        to
    
    Go to login
    Submit credentials        papito@gmail.com    abc123
    Toast message should be    Credenciais inválidas, tente novamente!
