***Settings***
Resource            variables/variables.robot
Resource            settings/settings.robot

Suite Setup         Set Screenshot Directory           C:/Users/Thanut/Desktop/Hello World/Work/Coding/RobotFramework/Practice/sertis/q1/screenshots

***Keywords***
Open website
    Open Browser        ${url}      browser=chrome
    Maximize Browser Window

Click Phones tab
    Sleep               ${time}
    Click Element       ${phones_tab}

Click Next button
    Sleep               ${time}
    Click button        ${next_btn}

Click Previous button
    Sleep               ${time}
    Click button        ${previous_btn}

Select Samsung galaxy s7
    Sleep               ${time}
    Click Element       ${galaxy_s7}

Select Sony xperia z5
    Sleep               ${time}
    Click Element       ${xperia_z5}

Select HTC One M9 
    Sleep               ${time}
    Click Element       ${one_m9}  

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
PN_1 Verify when click Phones tab will see only phones product displayed
    Open website
    Click Phones tab
    Capture screenshot for verify         PN_1.png
    Close website

PN_2 Verify that Previous and Next button will disabled when there is only one page displayed
    Open website
    Click Phones tab
    Capture screenshot for verify         PN_2_error.png    #will see Previous and Next button disabled
    Close website

PN_3 Verify product detail UI page when click on any phone product   
    Open website
    Click Phones tab
    Select Samsung galaxy s7
    Capture screenshot for verify         PN_3.png
    Close website

PN_4 Verify when click Add to cart button will add phone product to Cart page  
    Open website
    Click Phones tab
    Select Samsung galaxy s7
    Click Add to cart button
    Click Home tab
    Click Phones tab
    Select Sony xperia z5
    Click Add to cart button
    Click Home tab
    Click Phones tab
    Select HTC One M9
    Click Add to cart button
    Click Cart tab
    Capture screenshot for verify         PN_4.png
    Close website
