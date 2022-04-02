*** Settings ***
Library       Browser

*** Variables ***
${BRAND_FILTER}     input.searchbox-searchInput
${PRICE_FILTER}     //input[@value = '250-500']
${COLOR_FILTER}     //div[text() = 'Renk']
${COLOR_BlACK}      //div[text() = 'Siyah']
${JBL_BRAND}        //div[text() = 'JBL']
${PRODUCTS}         //div[@data-test-id = 'product-card-container']

*** Keywords ***
Search Results Page Opened
  Wait Until Element Is Visible    ${BRAND_FILTER}
  Element Should Be Visible        ${BRAND_FILTER}

Apply Filter
  [Arguments]                       ${brand_text}
  Wait Until Element Is Enabled     ${BRAND_FILTER}
  Input Text                        ${BRAND_FILTER}       ${brand_text}
  Wait Until Element Is Enabled     ${JBL_BRAND}
  Click Element                     ${JBL_BRAND}
  Wait Until Element Is Enabled     ${PRICE_FILTER}
  Click Element                     ${PRICE_FILTER}
  Wait Until Element Is Enabled     ${COLOR_FILTER}
  Click Element                     ${COLOR_FILTER}
  Wait Until Element Is Enabled     ${COLOR_BlACK}
  Click Element                     ${COLOR_BlACK}

Click Product
  Wait Until Element Is Enabled     ${PRODUCTS}
  Click Element                     ${PRODUCTS}