*** Settings ***
Resource            ../pageObjects/basePage.robot
Resource    ../pageObjects/creationListPage.robot
Resource    ../pageObjects/creationPage.robot
Resource    ../pageObjects/creationDetailsPage.robot

Suite Setup  Open My Website and navigate to CreationListPage
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Navigate To Creationnew
    Navigate To Creationnew

Add creation
    Fill in creation name  Soepkommen
    Fill in creation type  Borden
    Fill in creation info  Mooie blauwe soepkommen
    Fill in creation imagesource  img/creatie12.jpg
    Fill in creation price  12
    Fill in creation creator
    Add

Navigate To CreationList
    Navigate To CreationlistFromDetail

