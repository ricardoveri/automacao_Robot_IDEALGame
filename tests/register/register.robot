*** Settings ***
Resource    ../resources/keywords.resource
Documentation    Cenário de teste que realiza a validação do cadastro

*** Test Cases ***
Login com sucesso no Ideal Game
    [Documentation]    Valida o registro do usuário
    Abrir navegador com a página do IDEAL Game
    Trocando Linguagem Para PT BR
    Ir Para a Tela de Login
    Ir Para a Tela de Registro
    Preencher Campos de Login, Senha e Confirmar Senha    ricardo.verissimo@dcx.ufpb.br    Trutinha1!.    Trutinha1!.
    Clicar no botão de Registrar

    Close Browser