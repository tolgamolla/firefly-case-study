*** Settings ***
Library           AppiumLibrary

*** Variables ***
${PRODUCT_NAME}                     com.pozitron.hepsiburada:id/productName
${ADD_TO_BASKET_BUTTON}             com.pozitron.hepsiburada:id/product_detail_add_to_cart_text
${GO_TO_BASKET_BUTTON}              com.pozitron.hepsiburada:id/goBasketTxt

*** Keywords ***
Product Detail Page Opened
    Sleep                           1
    Wait Until Element Is Visible   ${PRODUCT_NAME}
    Element Text Should Be          ${ADD_TO_BASKET_BUTTON}      Sepete ekle

Add To Basket
    Wait Until Element Is Visible   ${ADD_TO_BASKET_BUTTON}
    Click Element                   ${ADD_TO_BASKET_BUTTON}

Go To Basket
    Wait Until Element Is Visible   ${GO_TO_BASKET_BUTTON}
    Click Element                   ${GO_TO_BASKET_BUTTON}