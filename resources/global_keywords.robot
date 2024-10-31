*** Settings ***
Resource        base.robot

*** Variables ***
${URL}                 https://practice.automationtesting.in/
${BROWSER}             chromium
${BROWSER_MODE}        ${EMPTY}
${TIMEOUT}             15s
${VIEWPORT_WIDTH}      1920                              # Largura para headless
${VIEWPORT_HEIGHT}     1080                              # Altura para headless


*** Keywords ***
### DADO
Dado que estou na página inicial   
    Get Title    contains    ${pagina_inicial.titulo_da_pagina}
    
### QUANDO

### E

### ENTÃO

###GERAIS
Clicar no botão
    [Arguments]                ${ELEMENTO}
    Wait For Elements State    ${ELEMENTO}    visible    ${TIMEOUT}
    Click                      ${ELEMENTO}

Inserir texto
    [Arguments]                ${ELEMENTO}    ${TEXTO}
    Wait For Elements State    ${ELEMENTO}    visible    ${TIMEOUT}
    Type Text                  ${ELEMENTO}    ${TEXTO}

Abrir Navegador
    # Definindo o valor da variável BROWSER_MODE
    Set Variable If    '${BROWSER_MODE}' == ''    ${BROWSER_MODE}    true  # Defina como true se vazio
    ${IS_HEADLESS}    Set Variable If    '${BROWSER_MODE}' == 'true'    true    false

    # Configuração para modo headless
    Run Keyword If    '${IS_HEADLESS}' == 'true'    New Browser   ${BROWSER}  headless=true   args=["--disable-gpu"]
    Run Keyword If    '${IS_HEADLESS}' == 'true'    New Context   ignoreHTTPSErrors=True   viewport={'width': ${VIEWPORT_WIDTH}, 'height': ${VIEWPORT_HEIGHT}}
    Run Keyword If    '${IS_HEADLESS}' == 'true'    New Page      ${URL}

    # Configuração para modo normal
    Run Keyword If    '${IS_HEADLESS}' == 'false'   New Browser   ${BROWSER}  headless=false   args=["--start-maximized"]
    Run Keyword If    '${IS_HEADLESS}' == 'false'   New Context   ignoreHTTPSErrors=True   viewport=None
    Run Keyword If    '${IS_HEADLESS}' == 'false'   New Page      ${URL}