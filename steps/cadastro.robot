*** Settings ***
Resource    ../resources/base.robot

*** Keywords ***
### DADO
Dado que estou logado com sucesso
    [Arguments]              ${USUARIO}    ${SENHA}
    Get Title    contains    ${pagina_inicial.titulo_da_pagina}
    Clicar no botão          ${BOTAO_MY_ACCOUNT}
    Inserir texto            ${INPUT_EMAIL_LOGIN}    ${USUARIO}
    Inserir texto            ${INPUT_SENHA_LOGIN}    ${SENHA}
    Clicar no botão          ${BOTAO_SUBMIT_LOGIN}
    Wait For Elements State  text=${cadastro.mensagem_cadastro_sucesso}    visible

### QUANDO
Quando clico em My Account
    Clicar no botão        ${BOTAO_MY_ACCOUNT}

Quando clico em Account Details
    Clicar no botão    ${BOTAO_ACCOUNT_DETAIL}

Quando clico em Addresses
    Clicar no botão    ${BOTAO_ADDRESSES}

E preencho os campos nome e sobrenome
    ${NOME_ALEATORIO}  FakerLibrary.First Name   
    Fill Text          ${INPUT_FIRST_NAME}            ${NOME_ALEATORIO}
    Fill Text          ${INPUT_LAST_NAME}             ${NOME_ALEATORIO}
    Fill Text          ${INPUT_CURRENT_PASSWORD}      ${EMPTY}
    Clicar no botão    ${BOTAO_SUBMIT_ACCOUNT_DETAILS} 

E preencho o formulário de cadastro de endereço
    ${NOME_ALEATORIO}          FakerLibrary.First Name   
    Clicar no botão            ${BOTAO_ADDRESSES_SHIPPING_EDIT}
    Type Text                  ${INPUT_SHIPPING_FIRST_NAME}         ${NOME_ALEATORIO}    clear=No
    Type Text                  ${INPUT_SHIPPING_LAST_NAME}          ${NOME_ALEATORIO}    clear=No
    Type Text                  ${INPUT_SHIPPING_COMPANY}            ${NOME_ALEATORIO}    clear=No    
    ${input_country}           Get Element                          ${SELEC_COUNTRY_SHIPPING_ADDRESS}
    Evaluate JavaScript        ${input_country}    (elem) => elem.style.display = 'block'
    # Wait For Elements State    ${SELEC_COUNTRY_SHIPPING_ADDRESS}    visible
    select Options By          ${SELEC_COUNTRY_SHIPPING_ADDRESS}    value    BR
    Inserir texto              ${INPUT_STREET_SHIPPING_ADDRESSES}   ${cadastro.street_shipping_addresses}
    Inserir texto              ${INPUT_TOWN_CITY_SHIPPING}          ${cadastro.city_shipping_addresses}
    Scroll To Element          ${BOTAO_SELECT_STATE_SHIPPING}
    ${input_state}             Get Element                          ${SELEC_STATE_SHIPPING_ADDRESS}
    Evaluate JavaScript        ${input_state}    (elem) => elem.style.display = 'block'
    # Wait For Elements State    ${SELEC_STATE_SHIPPING_ADDRESS}      visible
    Select Options By          ${SELEC_STATE_SHIPPING_ADDRESS}      value    SP
    Inserir texto              ${INPUT_POSTCODE_SHIPPING}           04850220
    Clicar no botão            ${BOTAO_SAVE_ADDRESS_SHIPPING}    

### E
E preencho o campo de Register com minhas credenciais
    ${EMAIL}              FakerLibrary.Email
    ${SENHA}              FakerLibrary.Password
    Fill Text             ${INPUT_EMAIL_REGISTER}    ${EMAIL}
    Fill Text             ${INPUT_SENHA_REGISTER}    ${SENHA}${SENHA}  
    ${element}            Get Element    ${BOTAO_SUBMIT_REGISTER}
    Evaluate JavaScript   ${element}    (elem) => elem.click()

### ENTÃO
Então devo validar a mensagem de sucesso
    [Arguments]    ${TEXTO}
     Wait For Elements State    text=${TEXTO}    visible
