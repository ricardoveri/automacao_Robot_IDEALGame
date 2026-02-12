*** Settings ***
Resource    ../resources/keywords.resource
Documentation    Cenário de teste que verifica se as credenciais de login estão incorretas.
Test Setup       Abrir Navegador com a Página do IDEAL Game
Test Teardown    Close Browser
*** Test Cases ***
Tentando Realizar Login com Credenciais Inválidas
    [Documentation]    Valida se o usuário consegue logar com credenciais inválidas.
    Trocando Linguagem Para PT BR
    Ir Para a Tela de Login
    Preencher campos de Login e Senha    xxxxxxxxxxx@dcx.ufpb.br    xxxxxxxxxxxx
    Clicar no botão de Login
    Verificar Mensagem de Credenciais Inválidas