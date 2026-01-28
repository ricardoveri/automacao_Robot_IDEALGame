*** Settings ***
Documentation        Este arquivo contem as variáveis e keywords que serão utilizadas durante o projeto.

Library    SeleniumLibrary

*** Variables ***
# Site
${url_IDEAL_Game}             https://idealgame.a4s.dev.br/

# Página do Ideal Game
${button_ptBR_Language}       xpath=//button[@class="sc-iuUfFv sc-jhZTHU hlcBvO wZiXL"]

# Click tela de login
${login_Screen}               xpath=//button[@class="sc-iuUfFv sc-bMTdWJ hlcBvO fJQphg"]

# Registro
${registration_Screen}        xpath=//a[@href="/register"]
${input_Confirm_Password}     xpath=//input[@id="confirmPassword"]
${register_Button}            xpath=//button[@class="sc-iuUfFv sc-epnzzT hlcBvO bvvXMa"]
${email_Alredy_Exists}        xpath=//p[contains(text(), "This email is already associated")]

# Login
${input_Email}                xpath=//input[@id="email"]
${input_Password}             xpath=//input[@id="password"]
${submit_Login_Button}        xpath=//button[@class="sc-iuUfFv sc-epnzzT hlcBvO bvvXMa"]
${incorrect_Login}            xpath=//p[contains(text(), "Email or password are incorrect")]

# Game
${new_Game_Button}            xpath=//button[contains(text(), "Novo Jogo")]
${continue_Game_Button}       xpath=//button[contains(text(), "Continuar")]

*** Keywords ***
Abrir Navegador com a Página do IDEAL Game
    [Documentation]    Este teste abre o navegador diretamente no site do IDEAL Game.

    Open Browser    ${url_IDEAL_Game}    chrome

Trocando Linguagem Para PT BR
    [Documentation]    Essa Keyword realiza a troca de linguagem de EN para PT BR.

    Wait Until Element Is Visible    ${button_ptBR_Language}
    Wait Until Element Is Visible    ${login_Screen}
    Sleep    2s

    Click Button                     ${button_ptBR_Language}
    Sleep    2s

# Login
Ir Para a Tela de Login
    [Documentation]    Esta Keyword entra na tela de login.

    Click Button                     ${login_Screen}   
    Wait Until Element Is Visible    ${input_Email}
    Wait Until Element Is Visible    ${input_Password}

Preencher Campos de Login e Senha
    [Documentation]    Este teste realiza um login com sucesso
    [Arguments]                      ${user_Email}    ${user_Password}

    Input Text                       ${input_Email}    ${user_Email}
    Input Password                   ${input_Password}    ${user_Password}

Clicar no botão de Login
    [Documentation]    Esta Keyword confirma o login
    Click Button                     ${submit_Login_Button}
    Sleep    5s

Verificar Mensagem de Credenciais Inválidas
    [Documentation]    Esta Keyword verifica se as credenciais do Login estão corretas
    Wait Until Element Is Visible    ${incorrect_Login}
    Element Text Should Be           ${incorrect_Login}    Email or password are incorrect

# Cadastro
Clicar no botão de Registrar
    [Documentation]    Esta Keyword confirma o registro
    Click Button                     ${register_Button}

Ir Para a Tela de Registro
    [Documentation]    Esta Keyword entra na tela de cadastro
    
    Wait Until Element Is Visible    ${registration_Screen}
    Click Element                    ${registration_Screen}

    Wait Until Element Is Visible    ${input_Email}
    Wait Until Element Is Visible    ${input_Password}
    Wait Until Element Is Visible    ${input_Confirm_Password}

Verificar Mensagem Email já Associado
    [Documentation]    Esta Keyword verifica se aparece o aviso de email já existente

    Wait Until Element Is Visible    ${email_Alredy_Exists}
    Element Text Should Be           ${email_Alredy_Exists}    This email is already associated with an existing account

Preencher Campos de Login, Senha e Confirmar Senha
    [Documentation]    Esta Keyword preenche os campos e confirma o registro
    [Arguments]                      ${user_Email}    ${user_Password}    ${confirm_User_Password}

    Input Text                       ${input_Email}    ${user_Email}
    Input Password                   ${input_Password}    ${user_Password}
    Input Password                   ${input_Confirm_Password}    ${confirm_User_Password}

# Tela após o login
Verificar Tela Após Realizar o login
    [Documentation]    Esta Keyword verifica os elementos da tela após realizar o login

    Wait Until Element Is Visible    ${new_Game_Button}
    Wait Until Element Is Visible    ${continue_Game_Button}

Verificar se o Botão Continuar está ativo
    [Documentation]    Verifica o estado do botão Continuar. Se houver o atributo 'disabled', ele está inativo.
    ${status}=    Get Element Attribute    ${continue_Game_Button}    disabled
    
    Run Keyword If    '${status}' == 'true'    Log    O jogador não possui progresso salvo.
    ...    ELSE    Log    O jogador pode continuar a partida.


Clicar em Novo Jogo
    [Documentation]    Esta Keyword clica no botão de novo jogo
    Click Button                     ${new_Game_Button}

