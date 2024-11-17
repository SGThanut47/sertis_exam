***Settings***
Resource            variables/variables.robot
Resource            settings/settings.robot

Suite Setup         Set Screenshot Directory           C:/Users/Thanut/Desktop/Hello World/Work/Coding/RobotFramework/Practice/sertis/q1/screenshots

***Keywords***
Open website
    Open Browser        ${url}      browser=chrome
    Maximize Browser Window

Click Categories tab
    Sleep               ${time}
    Click Element       ${categories_tab}

Click Next button
    Sleep               ${time}
    Click button        ${next_btn}

Click Previous button
    Sleep               ${time}
    Click button        ${previous_btn}

Select Nexus 6
    Sleep               ${time}
    Click Element       ${nexus_6}

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
CG_1 Verify when click Categories tab will see all product displayed
    Open website
    Click Categories tab
    Capture screenshot for verify         CG_1.png
    Close website

CG_2 Verify when click Previous and Next button will switch between pages
    Open website
    Click Categories tab
    Click Next button
    Capture screenshot for verify         CG_2_next.png
    Click Previous button
    Capture screenshot for verify         CG_2_prev.png
    Close website

CG_3 Verify product detail UI page when click on any product     
    Open website
    Click Categories tab
    Select Nexus 6
    Capture screenshot for verify         CG_3.png
    Close website

CG_4 Verify when click Add to cart button will add product to Cart page   
    Open website
    Click Categories tab
    Select Nexus 6
    Click Add to cart button
    Click Cart tab
    Capture screenshot for verify         CG_4.png
    Close website
