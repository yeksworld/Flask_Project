*** Settings ***
Library     SeleniumLibrary
Resource   ../UI_Part/RegistrationKeywords.robot

*** Variables ***
${Browser}      chrome
${url}      http://localhost:8080/register
${username}     yeksworld
${password}     1234asdf
${firstname}    jhon
${lastname}     rudy
${phone}    456137986

*** Test Cases ***
RegisterTest
    Open my Browser     ${url}  ${Browser}
    Enter UserName      ${username}
    Enter Password      ${password}
    Enter FirstName     ${firstname}
    Enter LastName      ${lastname}
    Enter Phone         ${phone}

    Click Register

    sleep   3 seconds
    Verify Succesfull Registration
    Close My Browser
