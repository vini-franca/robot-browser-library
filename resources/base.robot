*** Settings ***
Resource               ../pages/cadastro.robot
Resource               ../steps/cadastro.robot
Resource               global_keywords.robot
Library                Browser       timeout=15000ms
Library                FakerLibrary  locale=pt_BR
Variables              qa.yaml
