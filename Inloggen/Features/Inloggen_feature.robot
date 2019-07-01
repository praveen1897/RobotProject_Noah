*** Settings ***
Library    SeleniumLibrary    
Resource   ../Steps/Inloggen_steps.robot


*** Test Cases ***
Scenario: Happyflow -Inloggen met geldige gebruikersnaam en wachtwoord
    Given ik op de loginpagina ben
    When ik een geldig gebruikersnaam en wachtwoord invoer
    Then zie ik de applicatie overzicht pagina
    
Scenario: validatiecheck-Inloggen met geldige gebruikersnaam en ongeldig wachtwoord
    Given Ik op de loginpagina ben
    When Ik een geldig gebruikersnaam, maar een ongeldig wachtwoord invoer
    Then zie ik de fout bij inloggen validatie banner

Scenario: Validatiecheck - Inloggen zonder gebruikersnaam en wachtwoord
    Given Ik op de loginpagina ben
    When ik zonder gebruikersnaam en wachtwoord probeer in te loggen
    Then zie ik twee validatiemeldingen bij de gebruikersnaam en wachtwoord