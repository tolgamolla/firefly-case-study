*** Settings ***
Library       Browser

*** Variables ***
${BASKET_HEADER}            //*[contains(@class, 'basket_headerTop')]
${CONTINUE_STEP_BUTTON}     button#continue_step_btn

*** Keywords ***
Basket Page Opened
  Wait Until Element Is Visible    ${BASKET_HEADER}
  Element Should Be Visible        ${BASKET_HEADER}
  Wait Until Element Is Visible    ${CONTINUE_STEP_BUTTON}
  Element Should Be Visible        ${CONTINUE_STEP_BUTTON}
