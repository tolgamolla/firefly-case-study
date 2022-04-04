*** Settings ***
Library       Browser

*** Variables ***
${HB_LOGO}                          //a[@href='/']
${SEARCH_TEXTBOX}                   .desktopOldAutosuggestTheme-input
${SEARCH_BUTTON}                    //div[text() = 'ARA']

*** Keywords ***
Home Page Opened
  Wait For Elements State           ${HB_LOGO}                  visible
  Wait For Elements State           ${SEARCH_TEXTBOX}           visible
  Wait For Elements State           ${SEARCH_BUTTON}            visible
  Get Text                          ${SEARCH_BUTTON}            ==                 ARA

Search With Text
  [Arguments]                       ${search_text}
  Type Text                         ${SEARCH_TEXTBOX}           ${search_text}
  Click                             ${SEARCH_BUTTON}