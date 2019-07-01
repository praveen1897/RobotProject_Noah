*** Settings ***
Library    SeleniumLibrary
Resource   ../4-Resources/Setup.robot
Resource    ../3-Helpers/DigiD_helper.robot


*** Variables ***
${button}            xpath=//*[@data-ta-id=mijnuwv-inlog__btn_digidmachtigen"] 

*** Keywords ***
ik op de keuzepagina ben
    Open Browser    ${URL}    ${BROWSER}
    
ik kies voor - Inloggen voor iemand anders met machtiging - en inlog via DigiD
    wachtopbutton 
    Click Button    ${button}    