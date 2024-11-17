***Settings***
Resource            variables/variables.robot
Resource            settings/settings.robot

Suite Setup         Set Screenshot Directory           C:/Users/Thanut/Desktop/Hello World/Work/Coding/RobotFramework/Practice/sertis/q1/screenshots

***Keywords***
Open website
    Open Browser        ${url}      browser=chrome
    Maximize Browser Window

Click Monitors tab
    Sleep               ${time}
    Click Element       ${monitors_tab}

Click Next button
    Sleep               ${time}
    Click button        ${next_btn}

Click Previous button
    Sleep               ${time}
    Click button        ${previous_btn}

Select Apple monitor 24
    Sleep               ${time}
    Click Element       ${apple_monitor_24} 

Select ASUS Full HD
    Sleep               ${time}
    Click Element       ${asus_hd} 

Click Home Tab
    Sleep                ${time}
    Click Element        ${home_tab}  

Click Cart tab
    Sleep               ${time}
    Click Element       ${cart_tab}

Click Add to cart button
    Sleep               ${time}
    Click Element       ${addtocart_btn}
    Handle Alert        Accept

Capture screenshot for verify
    Sleep               ${timescreen}
    [Arguments]         ${picname}
    Capture Page Screenshot         filename=${picname}   

Close website
    Sleep                ${time}
    Close Browser

***Test Cases***
MN_1 Verify when click Monitors tab will see only monitors product displayed
    Open website
    Click Monitors tab
    Capture screenshot for verify         MN_1.png
    Close website

MN_2 Verify that Previous and Next button will disabled when there is only one page displayed
    Open website
    Click Monitors tab
    Capture screenshot for verify         MN_2_error.png        #will see Previous and Next button disabled
    Close website

MN_3 Verify product detail UI page when click on any monitors product    
    Open website
    Click Monitors tab
    Select Apple monitor 24
    Capture screenshot for verify         MN_3.png
    Close website

MN_4 Verify when click Add to cart button will add monitor product to Cart page
    Open website
    Click Monitors tab
    Select Apple monitor 24
    Click Add to cart button
    Click Home tab
    Click Monitors tab
    Select ASUS Full HD
    Click Add to cart button
    Click Cart tab
    Capture screenshot for verify         MN_4.png
    Close website
