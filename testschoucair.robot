*** Settings ***
Documentation       Existe en un documento de texto los pasos manuales
...                 Prueba Choucair
Library             Selenium2Library

*** variable***



*** Test Cases ***
G001 login
    Open Browser    http://automationpractice.com/index.php     chrome
    Click Element      //*[@id="header"]/div[2]/div/div/nav/div[1]/a
    Input Text      xpath=//*[@id="email"]     alvingz+1@gmail.com
    Click Element    //*[@id="SubmitLogin"]/span
    Input Text   xpath=//*[@id="passwd"]    citroen6y50
    Click Element   xpath=//*[@id="SubmitLogin"]/span


Valid Login
    Open Browser  to login Page
    Input Username
    Input Password    citroen6y50
    Submit Credentials
    Welcome Page Should Be Open
    [Teardown]    Close Browser