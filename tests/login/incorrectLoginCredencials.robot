*** Settings ***
Resource    ../resources/keywords.resource
Documentation    Cenário de teste que verifica se as credenciais de login estão incorretas.

*** Test Cases ***
Login com sucesso no Ideal Game
    [Documentation]    Valida se o usuário consegue logar com credenciais válidas.
    Abrir navegador com a página do IDEAL Game
    Trocando Linguagem Para PT BR
    Ir Para a Tela de Login
    Preencher campos de Login e Senha    xxxxxxxxxxx    xxxxxxxxxxxx
    Clicar no botão de Login
    Verificar Mensagem de Credenciais Inválidas
    
    Close Browser