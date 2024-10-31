*** Settings ***
Resource               ../resources/base.robot
Suite Setup            Abrir navegador
Suite Teardown         Close Browser

*** Test Cases ***
CT-01 - Validar registro de usuário
    Dado que estou na página inicial
    Quando clico em My Account
    E preencho o campo de Register com minhas credenciais
    Então devo validar a mensagem de sucesso    ${cadastro.mensagem_cadastro_sucesso}

CT-02 - Validar cadastro de nome e sobrenome
    Dado que estou logado com sucesso           ${cadastro.usuario_padrao}    ${cadastro.senha_usuario_padrao}
    Quando clico em Account Details
    E preencho os campos nome e sobrenome
    Então devo validar a mensagem de sucesso    ${cadastro.msg_alteracao_nome_sobrenome_sucesso}

CT-03 - Cadastrar Shipping Address
    Dado que estou logado com sucesso            ${cadastro.usuario_padrao}    ${cadastro.senha_usuario_padrao}
    Quando clico em Addresses
    E preencho o formulário de cadastro de endereço
    Então devo validar a mensagem de sucesso     ${cadastro.mensagem_sucesso_shipping_address}