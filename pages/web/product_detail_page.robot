*** Settings ***
Library       Browser

*** Variables ***
${ADD_TO_BASKET_BUTTON}         button#addToCart
${MY_BASKET_BUTTON}             span#shoppingCart

*** Keywords ***
Product Page Opened
  Switch Page                   NEW
  Wait For Elements State       ${ADD_TO_BASKET_BUTTON}      visible
  Get Text                      ${ADD_TO_BASKET_BUTTON}      ==                 Sepete Ekle

Add To Basket
  Click                         ${ADD_TO_BASKET_BUTTON}      delay=100ms

Go To Basket
  Click                         ${MY_BASKET_BUTTON}          delay=300ms