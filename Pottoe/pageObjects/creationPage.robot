
*** Settings ***
Resource  creationListPage.robot

*** Variables ***
${CREATION_NAME}=    css:#creationName
${CREATION_TYPE}=    css:#creationType
${CREATION_INFO}=    css:#creationInfo
${CREATION_IMG}=    css:#creationImgSource
${CREATION_PRICE}=    css:#creationPrice
${CREATION_CREATOR}=    css:#creator

*** Keywords ***

Fill in creation name
    [Arguments]  ${name}
    Input Text  ${CREATION_NAME}  ${name}

Fill in creation type
    [Arguments]  ${type}
    Input Text  ${CREATION_TYPE}  ${type}

Fill in creation info
    [Arguments]  ${info}
    Input Text  ${CREATION_INFO}  ${info}

Fill in creation imagesource
    [Arguments]  ${imgsource}
    Input Text  ${CREATION_IMG}  ${imgsource}

Fill in creation price
    [Arguments]  ${price}
    Input Text  ${CREATION_PRICE}  ${price}

Fill in creation creator
    Select From List By Index    name:creator   1

Add
    Click Button    css:input[value='Voeg toe']

Clear elements
    Clear Element Text  ${CREATION_NAME}
    Clear Element Text  ${CREATION_TYPE}
    Clear Element Text  ${CREATION_INFO}
    Clear Element Text  ${CREATION_IMG}
    Clear Element Text  ${CREATION_PRICE}




