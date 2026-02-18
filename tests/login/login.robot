*** Settings ***
Resource    ../resources/keywords.resource
Documentation    Cenário de teste que valida a página de login do IDEAL Game.
Test Setup       Abrir Navegador com a Página do IDEAL Game
Test Teardown    Close Browser

*** Test Cases ***
Login com sucesso no Ideal Game
    [Documentation]    Valida se o usuário consegue logar com credenciais válidas
    Trocando Linguagem Para PT BR
    Ir Para a Tela de Login
    Preencher campos de Login e Senha    xxxxxxxxxxxxx@dcx.ufpb.br    xxxxxxxxxxxx
    Clicar no botão de Login

    Sleep    3s