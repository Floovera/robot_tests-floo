
*** Settings ***
Resource  basePage.robot

*** Variables ***
${FILTER_CREATION_TYPE}=    css:#type

*** Keywords ***

Navigate To Creationnew
    Click link  css:a[href='/creationnew']

Clear filter
    Click link  css:a[href='/creationlist']

Filter
    Click link  css:a[href='/creationlist/filter']


Fill in filter
    [Arguments]  ${filter_type}
    Input Text  ${FILTER_CREATION_TYPE}  ${filter_type}

Search
    Click Button    css:input[value='Zoek']

Log count
    ${COUNT}=    Get Element Count    //*[@class="buttonLook mediumButton"]
    Log  ${COUNT}
    [return]  ${COUNT}

Navigate To Pasta
    Click link  css:a[href='/creationdetails/4']
