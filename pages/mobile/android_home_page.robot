*** Settings ***
Library           AppiumLibrary

*** Variables ***
${HB_LOGO}                              com.pozitron.hepsiburada:id/image_message_of_day
${ACCOUNT_ICON}                         com.pozitron.hepsiburada:id/account_icon
${TEXT_VIEW_SEARCH_BOX}                 com.pozitron.hepsiburada:id/textViewSearchBox
${ET_ACB_SEARCH_BOX}                    com.pozitron.hepsiburada:id/etACBSearchBox
${SEARCH_SUGGESTION}                    com.pozitron.hepsiburada:id/search_suggestion

*** Keywords ***
Home Page Opened
    Wait Until Element Is Visible       ${HB_LOGO}
    Wait Until Element Is Visible       ${ACCOUNT_ICON}

Search With Text
    [Arguments]                         ${search_text}
    Log to console                      ${search_text}
    Wait Until Element Is Visible       ${TEXT_VIEW_SEARCH_BOX}
    Element Text Should Be              ${TEXT_VIEW_SEARCH_BOX}     Ürün, kategori veya marka ara
    Click Element                       ${TEXT_VIEW_SEARCH_BOX}
    Input Text                          ${ET_ACB_SEARCH_BOX}        ${search_text}
    Wait Until Element Is Visible       ${SEARCH_SUGGESTION}
    Click Element                       ${SEARCH_SUGGESTION}
