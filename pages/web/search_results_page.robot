*** Settings ***
Library       Browser

*** Variables ***
${BRAND_FILTER}     (//input[@class = 'searchbox-searchInput'])[1]
${PRICE_FILTER}     //div[text() = '250 - 500 TL']
${COLOR_FILTER}     //div[text() = 'Renk']
${COLOR_BlACK}      //div[text() = 'Siyah']
${JBL_BRAND}        //div[text() = 'JBL']
${PRODUCTS}         (//div[@data-test-id = 'product-card-container'])[1]

*** Keywords ***
Search Results Page Opened
  Wait For Elements State          ${BRAND_FILTER}      visible

Apply Filter
  [Arguments]                       ${brand_text}
  Wait For Elements State           ${PRICE_FILTER}     visible
  Click                             ${PRICE_FILTER}
  Wait For Elements State           ${COLOR_FILTER}     visible
  Click                             ${COLOR_FILTER}
  Wait For Elements State           ${COLOR_BlACK}      visible
  Click                             ${COLOR_BlACK}
  Wait For Elements State           ${BRAND_FILTER}     visible         timeout=2 s
  Click                             ${BRAND_FILTER}     delay=100 ms
  Type Text                         ${BRAND_FILTER}     ${brand_text}   delay=100 ms
  Wait For Elements State           ${JBL_BRAND}        visible         timeout=2 s
  Click                             ${JBL_BRAND}

Click Product
  Wait For Elements State           ${PRODUCTS}         visible
  Click                             ${PRODUCTS}         delay=100ms