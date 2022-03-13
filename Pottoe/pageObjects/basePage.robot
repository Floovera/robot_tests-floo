*** Settings ***
Resource  ../helpers/browser.robot

*** Keywords ***
Open My Website
    [Arguments]  ${url}=${BASE_URL}  ${browser}=${BROWSER}
    Open Browser  ${url}  ${browser}

Navigate To Creationlist
    Click link  css:a[href='/creationlist']

Open My Website and navigate to CreationListPage
    Open My Website
    Navigate To Creationlist

