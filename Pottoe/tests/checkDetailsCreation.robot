*** Settings ***
Resource            ../pageObjects/basePage.robot
Resource    ../pageObjects/creationListPage.robot
Resource    ../pageObjects/creationPage.robot
Resource    ../pageObjects/creationDetailsPage.robot

Suite Setup  Open My Website and navigate to CreationListPage
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Check details creation - when description is filled in
    Navigate To Pasta
    ${name}=  Get creation name
    Should Contain  ${name}  Pasta
    ${type}=  Get creation type
    Should Contain  ${type}  borden
    ${info}=  Get creation info
    Should Contain  ${info}  Mama mia
    ${price}=  Get creation price
    Should Contain  ${price}  5
    ${creator}=  Get creation creator
    Should Contain  ${creator}  Bea
