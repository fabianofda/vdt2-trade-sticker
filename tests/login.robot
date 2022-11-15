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

Deve exibir notificacao toaster se a senha nao for preenchida
    Go To Login
    Submit Credentials        papito@gmail.com    ${EMPTY}
    Toast Message Should Be   Por favor, informe a sua senha secreta!

Deve exibir notificacao toaster se o email nao for preenchido
    Go To Login
    Submit Credentials        ${EMPTY}    vaibrasil
    Toast Message Should Be   Por favor, informe o seu email!

Deve exibir notiticacao toaster se email e senha nao forem preenchidos
    Go To Login
    Submit Credentials        ${EMPTY}    ${EMPTY}
    Toast Message Should Be   Por favor, informe suas credenciais!