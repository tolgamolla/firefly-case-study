*** Settings ***
Library       Browser

*** Variables ***
${HB_LOGO}              //a[@href='/']
${SEARCH_TEXTBOX}       .desktopOldAutosuggestTheme-input
${SEARCH_BUTTON}        //div[text() = 'ARA']

*** Keywords ***
Home Page Opened
  Wait Until Element Is Visible    ${HB_LOGO}
  Element Should Be Visible        ${HB_LOGO}
  Wait Until Element Is Visible    ${SEARCH_TEXTBOX}
  Element Should Be Visible        ${SEARCH_TEXTBOX}
  Wait Until Element Is Visible    ${SEARCH_BUTTON}
  Element Should Be Visible        ${SEARCH_BUTTON}

Input SearchText
    [Arguments]                       ${search_text}
    Wait Until Element Is Enabled     ${SEARCH_TEXTBOX}
    Input Text                        ${SEARCH_TEXTBOX}       ${search_text}