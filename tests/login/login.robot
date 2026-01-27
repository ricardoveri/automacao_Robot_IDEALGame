*** Settings ***
Resource    ../resources/keywords.resource
Documentation    Cenário de teste que valida a página de login do IDEAL Game.

*** Test Cases ***
Login com sucesso no Ideal Game
    [Documentation]    Valida se o usuário consegue logar com credenciais válidas
    Abrir navegador com a página do IDEAL Game
    Trocando Linguagem Para PT BR
    Ir Para a Tela de Login
    Preencher campos de Login e Senha    ricardo.verissimo@dcx.ufpb.br    Trutinha1!.
    Clicar no botão de Login

    Close Browser