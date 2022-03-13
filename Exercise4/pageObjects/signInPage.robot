
*** Settings ***
Resource  basePage.robot

*** Variables ***
${LOGIN_USER}=    css:#username
${LOGIN_PASS}=    css:#password

*** Keywords ***

Fill in login username
    [Arguments]  ${login}
    Input Text  ${LOGIN_USER}  ${login}

Fill in login password
    [Arguments]  ${login}
    Input Text  ${LOGIN_PASS}  ${login}

Login 
    Click Button    css:input[value='Login']

Login and get error code
    Login
    ${error}=  Get Text  xpath://div[@id='body']//li[1]
    Log  ${error}
    [return]  ${error}



