*** Settings ***
Resource            ../pageObjects/basePage.robot
Resource    ../pageObjects/creationListPage.robot
Resource    ../pageObjects/creationPage.robot
Resource    ../pageObjects/creationDetailsPage.robot

Suite Setup  Open My Website and navigate to CreationListPage
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Filter on creations - creation found
    Filter
    Fill in filter  potjes
    Search
    ${COUNT}=  Log count
    Should Be Equal    ${COUNT}    ${2}

Filter on creations - no creation found
    Clear filter
    Filter
    Fill in filter  test
    Search
    ${COUNT}=  Log count
    Should Be Equal    ${COUNT}    ${0}
