*** Settings ***
Resource    ../resources/keywords.resource
Documentation    Cenário de teste que verifica se a conta já está cadastrada.

*** Test Cases ***
Login com sucesso no Ideal Game
    [Documentation]    Valida o registro do usuário
    Abrir navegador com a página do IDEAL Game
    Trocando Linguagem Para PT BR
    Ir Para a Tela de Login
    Ir Para a Tela de Registro
    Preencher Campos de Login, Senha e Confirmar Senha    XXXXXXXXX@dcx.ufpb.br    XXXXX    XXXXX
    Clicar no botão de Registrar
    Verificar Mensagem Email já Associado

    Close Browser