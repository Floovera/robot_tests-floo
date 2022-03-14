*** Settings ***
Resource            ../pageObjects/basePage.robot
Resource    ../pageObjects/creationListPage.robot
Resource    ../pageObjects/creationPage.robot
Resource    ../pageObjects/creationDetailsPage.robot

Suite Setup  Open My Website and navigate to CreationListPage
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Filter
    Filter

Fill in filter
    Fill in filter  potjes

Search
    Search

Log count
    ${COUNT}=  Log count
    Should Be Equal    ${COUNT}    ${2}
