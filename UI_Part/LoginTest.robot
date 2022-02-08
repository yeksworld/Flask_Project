*** Settings ***
Library     SeleniumLibrary
Resource   ../UI_Part/RegistrationKeywords.robot

*** Variable ***
${Browser}      chrome
${url}      http://localhost:8080/login
${username}     yeksworld
${password}     1234asdf
${wrong_username}   WrongUsername

*** Test Cases ***
Positive Login Test
    open my browser     ${url}  ${Browser}
    Enter UserName      ${username}
    Enter Password      ${password}
    Click Login

    sleep   3 seconds
    Verify Succesfull Login
    Close My Browser

Negative Login Test
    open my browser        ${url}  ${Browser}
    Enter UserName      ${wrong_username}
    Enter Password      ${password}
    Click Login

    sleep   3 seconds
    Verify Negative Login
    Close My Browser
