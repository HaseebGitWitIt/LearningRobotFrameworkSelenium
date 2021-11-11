*** Settings ***
Library          Selenium2Library

*** Variables ***
${BROWSER}       Firefox

*** Test Cases ***
Test Search Selenium in Google
   Set Selenium Speed   .5 seconds
   Open Browser   http://www.google.ca   ${BROWSER}
   Input Text   name=q   Selenium
   Click Button   name=btnK
   Sleep   2s
   Page Should Contain Link   Selenium - WebMD
   [Teardown]   Close Browser

Test Why People Take Selenium
   Set Selenium Speed   .5 seconds
   Open Browser   http://www.google.ca   ${BROWSER}
   Input Text   name=q   Selenium
   Click Button   name=btnK
   Sleep   2s
   Click Link   Selenium - WebMD
   Sleep   2s
   Page Should Contain   Why do people take selenium?
   [Teardown]   Close Browser

*** Keywords ***
