*** Settings ***
Resource    ../../resources/keywords.resource
Documentation    Cenário que valida a continuação de um jogo anterior
Test Setup       Abrir Navegador com a Página do IDEAL Game
Test Teardown    Close Browser

*** Test Cases ***
Iniciando um Novo Jogo
    [Documentation]    Valida o início de um novo jogo
    Trocando Linguagem Para PT BR
    Ir Para a Tela de Login
    Preencher campos de Login e Senha    xxxxxxxxxxxxx@dcx.ufpb.br    xxxxxxxxxxxxx
    Clicar no botão de Login
    Verificar Tela Após Realizar o login
    Verificar se o Botão Continuar está ativo
    Clicar em Continuar