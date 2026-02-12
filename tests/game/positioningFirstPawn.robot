*** Settings ***
Resource    ../../resources/keywords.resource
Documentation    Cenário que valida o início de um novo jogo quando um já existe um jogo em andamento
Test Setup       Abrir Navegador com a Página do IDEAL Game
Test Teardown    Close Browser

*** Test Cases ***
Posicionando Primeiro Peão
    [Documentation]    Valida o início de um novo jogo
    Trocando Linguagem Para PT BR
    Ir Para a Tela de Login
    Preencher campos de Login e Senha    xxxxxxxxxxx@dcx.ufpb.br    xxxxxxxxxxxx
    Clicar no botão de Login
    Verificar Tela Após Realizar o login
    Verificar se o Botão Continuar está ativo
    Clicar em Novo Jogo
    Selecionar Modo Personalizado
    Verificar Tela de Configuração
    Selecionar Ator Personalizado Jogador Um
    Clicar no Botão de Próxima Página
    Selecionar Ator Jogador Dois
    Selecionar Objetivo Jogador Dois
    Clicar em Aplicar
    Clicar no Peão
    Sleep    3
    Mover Para o Primeiro Ponto de Início Jogador Um
    Sleep    3