*** Settings ***
Resource            ../pageObjects/basePage.robot
Resource    ../pageObjects/creationListPage.robot
Resource    ../pageObjects/creationPage.robot
Resource    ../pageObjects/creationDetailsPage.robot

Suite Setup  Open My Website and navigate to CreationListPage
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Navigate to pasta
    Navigate To Pasta

Test name
    ${name}=  Get creation name
    Should Contain  ${name}  Pasta

Test type
    ${type}=  Get creation type
    Should Contain  ${type}  borden

Test info
    ${info}=  Get creation info
    Should Contain  ${info}  Mama mia

Test price
    ${price}=  Get creation price
    Should Contain  ${price}  5

Test creator
    ${creator}=  Get creation creator
    Should Contain  ${creator}  Bea
