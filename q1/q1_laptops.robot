***Settings***
Resource            variables/variables.robot
Resource            settings/settings.robot

Suite Setup         Set Screenshot Directory           C:/Users/Thanut/Desktop/Hello World/Work/Coding/RobotFramework/Practice/sertis/q1/screenshots

***Keywords***
Open website
    Open Browser        ${url}      browser=chrome
    Maximize Browser Window

Click Laptops tab
    Sleep               ${time}
    Click Element       ${laptops_tab}

Click Next button
    Sleep               ${time}
    Click button        ${next_btn}

Click Previous button
    Sleep               ${time}
    Click button        ${previous_btn}

Select MacBook air
    Sleep               ${time}
    Click Element       ${mb_air_tab} 

Select MacBook Pro
    Sleep               ${time}
    Click Element       ${mb_pro_tab} 

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
LT_1 Verify when click Laptops tab will see only laptops product displayed
    Open website
    Click Laptops tab
    Capture screenshot for verify         LT_1.png
    Close website

LT_2 Verify that Previous and Next button will disabled when there is only one page displayed
    Open website
    Click Laptops tab
    Capture screenshot for verify         LT_2_error.png        #will see Previous and Next button disabled
    Close website

LT_3 Verify product detail UI page when click on any laptop product   
    Open website
    Click Laptops tab
    Select MacBook air
    Capture screenshot for verify         LT_3.png
    Close website

LT_4 Verify when click Add to cart button will add laptop product to Cart page 
    Open website
    Click Laptops tab
    Select MacBook air
    Click Add to cart button
    Click Home tab
    Click Laptops tab
    Select MacBook Pro
    Click Add to cart button
    Click Cart tab
    Capture screenshot for verify         LT_4.png
    Close website
