*** Variables ***
${ANDROID_AUTOMATION_NAME}          UIAutomator2
${APP}                              /opt/hepsiburada.apk
${PLATFORM_NAME}                    Android
${APP_PACKAGE}                      com.pozitron.hepsiburada
${APP_ACTIVITY}                     com.hepsiburada.ui.startup.SplashActivity
${AUTO_GRANT_PERMISSIONS}           true
${AUTO_GRANT_PERMISSIONS_False}     false

*** Keywords ***
Open Test Application
  Open Application  http://0.0.0.0:4723/wd/hub  automationName=${ANDROID_AUTOMATION_NAME}
  ...  platformName=${PLATFORM_NAME}  platformVersion=11
  ...  app=${APP}  appPackage=${APP_PACKAGE}  appActivity=${APP_ACTIVITY}

Swipe Down
  [Arguments]               ${element}
  ${element_size}=          Get Element Size        ${element}
  ${element_location}=      Get Element Location    ${element}
  ${start_x}=               Evaluate                ${element_location['x']} + (${element_size['width']} * 0.5)
  ${start_y}=               Evaluate                ${element_location['y']} + (${element_size['height']} * 2)
  ${end_x}=                 Evaluate                ${element_location['x']} + (${element_size['width']} * 0.5)
  ${end_y}=                 Evaluate                ${element_location['y']} + (${element_size['height']} * 0.3)
  Swipe                     ${start_x}  ${start_y}  ${end_x}  ${end_y}  500
  Sleep  1