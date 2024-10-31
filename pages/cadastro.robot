*** Settings ***
Resource        ../resources/base.robot

*** Variables ***
###BOTÕES
${BOTAO_MY_ACCOUNT}                    xpath=//a[text()[contains(.,'My Account')]]
${BOTAO_ACCOUNT_DETAIL}                xpath=//a[text()[contains(.,'Account Details')]]
${BOTAO_ADDRESSES}                     xpath=//a[text()[contains(.,'Addresses')]]
${BOTAO_ADDRESSES_SHIPPING_EDIT}       xpath=(//a[@class='edit'])[2]
${BOTAO_SUBMIT_REGISTER}               xpath=//input[@name='register']
${BOTAO_SUBMIT_LOGIN}                  xpath=//input[@value='Login']
${BOTAO_SUBMIT_ACCOUNT_DETAILS}        xpath=//input[@name='save_account_details']
${BOTAO_COUNTRY_SHIPPING_ADDRESSES}    xpath=//div[@id='s2id_shipping_country']
${BOTAO_SELECT_COUNTRY_SHIPPING}       xpath=(//*[text()[contains(.,'Brazil')]])[3]
${BOTAO_SELECT_STATE_SHIPPING}         xpath=//div[@id='s2id_shipping_state']
${BOTAO_SAVE_ADDRESS_SHIPPING}         xpath=//input[@value='Save Address']

###INPUTS
${INPUT_EMAIL_REGISTER}                id=reg_email
${INPUT_SENHA_REGISTER}                id=reg_password
${INPUT_USERNAME_LOGIN}                id=username
${INPUT_EMAIL_LOGIN}                   id=username
${INPUT_SENHA_LOGIN}                   id=password
${INPUT_FIRST_NAME}                    id=account_first_name
${INPUT_SHIPPING_FIRST_NAME}           id=shipping_first_name
${INPUT_SHIPPING_LAST_NAME}            id=shipping_last_name
${INPUT_SHIPPING_COMPANY}              id=shipping_company
${INPUT_LAST_NAME}                     id=account_last_name
${INPUT_CURRENT_PASSWORD}              id=password_current
${INPUT_COUNTRY_SHIPPING_ADDRESSES}    xpath=//input[@id='s2id_autogen1_search']
${INPUT_STREET_SHIPPING_ADDRESSES}     xpath=//input[@id='shipping_address_1']
${INPUT_TOWN_CITY_SHIPPING}            xpath=//input[@id='shipping_city']
${INPUT_POSTCODE_SHIPPING}             xpath=//input[@id='shipping_postcode']
${INPUT_POSTCODE_SHIPPING}             

###SELECT
${SELEC_COUNTRY_SHIPPING_ADDRESS}      id=shipping_country        
${SELEC_STATE_SHIPPING_ADDRESS}        id=shipping_state        
