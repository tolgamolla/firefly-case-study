*** Settings ***
Library       Browser

*** Variables ***
${ADD_TO_BASKET_BUTTON}     button#addToCart
${GO_TO_BASKET_BUTTON}     //button[text() = 'Sepete git']

*** Keywords ***
Search Results Page Opened
  Wait Until Element Is Visible    ${ADD_TO_BASKET_BUTTON}
  Element Should Be Visible        ${ADD_TO_BASKET_BUTTON}

Add To Basket
  Wait Until Element Is Enabled       ${ADD_TO_BASKET_BUTTON}
  Click Element                       ${ADD_TO_BASKET_BUTTON}

Go To Basket
  Wait Until Element Is Enabled       ${GO_TO_BASKET_BUTTON}
  Click Element                       ${GO_TO_BASKET_BUTTON}