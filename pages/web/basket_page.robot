*** Settings ***
Library       Browser

*** Variables ***
${BASKET_HEADER}            //*[contains(@class, 'basket_headerTop')]
${CONTINUE_STEP_BUTTON}     button#continue_step_btn

*** Keywords ***
Basket Page Opened
  Wait For Elements State     ${BASKET_HEADER}
  Wait For Elements State     ${CONTINUE_STEP_BUTTON}
