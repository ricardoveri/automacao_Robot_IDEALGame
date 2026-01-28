*** Settings ***
Resource    ../resources/keywords.resource
Documentation    Cenário de teste que verifica se a conta já está cadastrada.
Test Setup       Abrir Navegador com a Página do IDEAL Game
Test Teardown    Close Browser

*** Test Cases ***
Tentando Cadastrar Conta com Email já xistente
    [Documentation]    Validar a tentativa de cadastrar uma conta já existente
    Trocando Linguagem Para PT BR
    Ir Para a Tela de Login
    Ir Para a Tela de Registro
    Preencher Campos de Login, Senha e Confirmar Senha    XXXXXXXXX@dcx.ufpb.br    XXXXX    XXXXX
    Clicar no botão de Registrar
    Verificar Mensagem Email já Associado