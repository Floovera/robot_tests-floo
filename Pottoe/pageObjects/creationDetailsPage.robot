
*** Settings ***
Resource  basePage.robot

*** Variables ***
${CREATIOND_NAME}=    css:#name
${CREATIOND_TYPE}=    css:#type
${CREATIOND_INFO}=    css:#info
${CREATIOND_PRICE}=    css:#price
${CREATIOND_CREATOR}=    css:#creator

*** Keywords ***

Navigate To CreationListFromDetail
    Click link  css:a[href='/creationlist']

Get creation name
    Wait Until Element Is Visible  ${CREATIOND_NAME}
    ${name}=  Get Text  ${CREATIOND_NAME}
    [Return]  ${name}

Get creation type
    Wait Until Element Is Visible  ${CREATIOND_TYPE}
    ${type}=  Get Text  ${CREATIOND_TYPE}
    [Return]  ${type}

Get creation info
    Wait Until Element Is Visible  ${CREATIOND_INFO}
    ${info}=  Get Text  ${CREATIOND_INFO}
    [Return]  ${info}

Get creation price
    Wait Until Element Is Visible  ${CREATIOND_PRICE}
    ${price}=  Get Text  ${CREATIOND_PRICE}
    [Return]  ${price}

Get creation creator
    Wait Until Element Is Visible  ${CREATIOND_CREATOR}
    ${creator}=  Get Text  ${CREATIOND_CREATOR}
    [Return]  ${creator}