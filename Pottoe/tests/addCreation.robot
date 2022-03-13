*** Settings ***
Resource            ../pageObjects/basePage.robot
Resource    ../pageObjects/creationListPage.robot
Resource    ../pageObjects/creationPage.robot

Suite Setup  Open My Website and navigate to CreationListPage
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Navigate To Creationnew
    Navigate To Creationnew

Add creation
    Fill in creation name  test
    Fill in creation type  test
    Fill in creation info  test
    Fill in creation imagesource  test
    Fill in creation price  test
    Fill in creation creator
    Add

