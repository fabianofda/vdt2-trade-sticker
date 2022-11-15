*** Settings ***
Documentation            Login Pages

Library    Browser

*** Keywords ***
Go to login
    New Page            https://trade-sticker-dev.vercel.app/

Submit credentials
    [Arguments]        ${mail}     ${pass}

    Fill Text        css=input[name=email]        ${mail}
    Fill Text        css=input[name=password]     ${pass}
    Click            css=button >> text=Entrar

Toast message should be
    [Arguments]    ${expected_message}

    ${locator}        Set Variable      css=.Toastify__toast-body div >> text=${expected_message}
    
    Wait For Elements State        ${locator}     stable        1