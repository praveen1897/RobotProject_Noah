*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/Variablesverzuim.robot
Resource    ../Helpers/Loginpagina_helper.robot

*** Variables ***
 ${gebruikersnaam}    h.awai@gmail.com
 ${wachtwoord}        Tsc1234!
 ${wachtwoordfout}     Ditiseenfoutwachtwoord
 ${button}            //button[text() ='Inloggen'] 

*** Keywords ***
ik op de loginpagina ben
    Open Browser    ${URL}    ${BROWSER}
      
    
ik een geldig gebruikersnaam en wachtwoord invoer
    Input gebruikersnaam     ${gebruikersnaam}
    Input wachtwoord         ${wachtwoord}

 zie ik de applicatie overzicht pagina
    Click Button    ${Button}
    
  #scenario 2
Ik een geldig gebruikersnaam, maar een ongeldig wachtwoord invoer
      Input gebruikersnaam     ${gebruikersnaam}
      Input wachtwoordfout     ${wachtwoordfout}
      
zie ik de fout bij inloggen validatie banner
    Click Button    ${Button} 
    wachtenOpFoutmeldingbanner    
    
    #scenario 3
ik zonder gebruikersnaam en wachtwoord probeer in te loggen 
    wachtopdeknop
    
zie ik twee validatiemeldingen bij de gebruikersnaam en wachtwoord
    wachtenopvalidatiemelding
    