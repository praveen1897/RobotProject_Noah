*** Settings ***
Library    SeleniumLibrary    
Resource   ../2-Steps/DigiD_steps.robot
Resource    ../3-Helpers/DigiD_Helper.robot

*** Test Cases ***
Scenario: Happy flow - Inloggen met Digi D machtigen
    Given ik op de keuzepagina ben
    and ik kies voor - Inloggen voor iemand anders met machtiging - en inlog via DigiD
    #When ik een geldig BSN invoer
    #Then zie ik de portaal namens de gene waarvoor ik gemachtigd ben

