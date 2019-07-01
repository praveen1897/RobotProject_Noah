*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${locator_gebrnaam}     id=loginveld
${locator_wachtwoord}     id=loginpassword
${button}            //button[text() ='Inloggen'] 
   
*** Keywords ***
Input gebruikersnaam
    [Arguments]    ${input}
    Wait Until Element is Visible    //button[.//text()='Inloggen']    10
    Click Button       ${Button}
    Wait until element is visible    ${locator_gebrnaam}
    Input text                        ${locator_gebrnaam}       ${input}

Input wachtwoord
   [Arguments]      ${input}
    Wait Until Element Is Visible    ${locator_wachtwoord}    
    Input text    ${locator_wachtwoord}    ${input}
    
Input wachtwoordfout
    [Arguments]    ${input}
    Wait Until Element Is Visible    ${locator_wachtwoord} 
    Input Text    ${locator_wachtwoord}    ${input}  
    
wachtenOpFoutmeldingbanner
    sleep    5
    Wait Until Page Contains Element    css:.alert-header  
    
wachtopdeknop
    Wait Until Element is Visible    //button[.//text()='Inloggen']    10
    Click Button       ${Button}
    Wait Until Element is Visible    //button[.//text()='Inloggen']    10
    Click Button       ${Button}

wachtenopvalidatiemelding
    Wait Until Page Contains Element    css:.icon.text-hide.icon-sm.icon-help-danger        
           
    
    