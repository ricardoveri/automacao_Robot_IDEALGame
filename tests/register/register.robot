*** Settings ***
Resource    ../resources/keywords.resource
Documentation    Cenário de teste que realiza a validação do cadastro
Test Setup       Abrir Navegador com a Página do IDEAL Game
Test Teardown    Close Browser

*** Test Cases ***
Cadastrando Nova Conta com Sucesso
    [Documentation]    Valida o registro do usuário
    Trocando Linguagem Para PT BR
    Ir Para a Tela de Login
    Ir Para a Tela de Registro
    Preencher Campos de Login, Senha e Confirmar Senha    xxxxxxxxx@dcx.ufpb.br    xxxxxxxxxx    xxxxxxxxxxxx
    Clicar no botão de Registrar