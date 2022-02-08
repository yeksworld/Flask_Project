*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]     ${url}      ${Browser}
    open browser    ${url}      ${Browser}
    maximize browser window

Enter UserName
    [Arguments]     ${username}
    input text      ${txt_RegisterUserName}     ${username}

Enter Password
    [Arguments]     ${password}
    input text      ${txt_RegisterPassword}     ${password}

Enter FirstName
    [Arguments]     ${firstname}
    input text      ${txt_RegisterFirstName}     ${firstname}

Enter LastName
    [Arguments]     ${lastname}
    input text      ${txt_RegisterLastName}     ${lastname}

Enter Phone
    [Arguments]     ${phone}
    input text      ${txt_phone}     ${phone}

Click Register
    click button    ${btn_Register}

Click Login
    click button    ${btn_Login}

Verify Succesfull Registration
    ${title1}=   get title
    log to console  ${title1}
    title should be     ${title1}

Verify Succesfull Login
    ${title2}=  get title
    log to console  ${title2}
    title should be     ${title2}

Verify Negative Login
    ${title3}=  get title
    log to console  ${title3}
    title should be     ${title3}

Close My Browser
    close browser








