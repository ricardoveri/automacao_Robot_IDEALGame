*** Settings ***
Resource    ../../resources/keywords.resource
Documentation    Cenário que valida o início de um novo jogo.
Test Setup       Abrir Navegador com a Página do IDEAL Game
Test Teardown    Close Browser

*** Test Cases ***
Iniciando um Novo Jogo
    [Documentation]    Valida o início de um novo jogo
    Trocando Linguagem Para PT BR
    Ir Para a Tela de Login
    Preencher campos de Login e Senha    xxxxxxxxx@dcx.ufpb.br    xxxxxxxxx
    Clicar no botão de Login
    Verificar Tela Após Realizar o login
    Clicar em Novo Jogo
    Sleep    3s