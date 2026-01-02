*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://localhost:7272/StarterFiles/Registration.html

*** Test Cases ***
Register Fail Empty Phone Number
    Open Browser    ${URL}    chrome
    Sleep    2s

    Input Text    id=firstname       Somyod
    Input Text    id=lastname        Sodsai
    Input Text    id=organization    CS KKU
    Input Text    id=email           somyod@kkumail.com

    Click Button    id=registerButton
    Sleep    2s

    Title Should Be    Registration
    Page Should Contain    *Please enter your phone number!!

    Close Browser