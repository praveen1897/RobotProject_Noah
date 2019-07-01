*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${button}             xpath=//*[@data-ta-id=mijnuwv-inlog__btn_digidmachtigen"]

*** Keywords ***
wachtopbutton
    Sleep    20
    Wait Until Element Is Visible    ${button}
    Click Button    ${button}
            