*** Settings ***
Documentation            Dashboard Page

Library    Browser

*** Keywords ***
User logged in
    ${header_title}     Set Variable        Aquela figurinha incrível a um clique de distância.
    
    Get Text        css=.header-content strong        equal       ${header_title} 

Search User
    [Arguments]    ${target}

    Fill Text        css=input[placeholder^=Busque]    ${target}
    Click            css=button >> text=Buscar

Select Sticker
    [Arguments]        ${name}

    Click        xpath=//img[@alt="${name}"]/..

Get in touch
     Click            css=button >> text=Entrar em contato

Whatsapp sticker message
    [Arguments]    ${sticker_name}

    ${message}    Set Variable
    ...           Oi, achei o seu contato no Trade Sticker. Estou interessado(a) na figurinha do ${sticker_name}, bora negociar?
    
    Switch Page    NEW

    Wait For Elements State     css=p >> text=${message}   stable     5