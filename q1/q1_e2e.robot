***Settings***
Resource            variables/variables.robot
Resource            settings/settings.robot

Suite Setup         Set Screenshot Directory           C:/Users/Thanut/Desktop/Hello World/Work/Coding/RobotFramework/Practice/sertis/q1/screenshots

***Keywords***
Open website
    Open Browser        ${url}      browser=chrome
    Maximize Browser Window

Click Sign up tab
    Sleep                ${time}
    Click Element        ${signup_tab}

Sign up username
    Sleep               ${time}
    [Arguments]         ${signup_username}
    Input Text          ${username_signup_field}        ${signup_username}

Sign up password
    Sleep               ${time}
    [Arguments]         ${signup_password}
    Input Text          ${password_signup_field}        ${signup_password}    

Click Sign up button 
    Sleep                ${time}
    Click Button         ${signup_btn}
    Handle Alert         ACCEPT
    Sleep                ${timescreen} 

Click Log in tab
    Sleep                ${time}
    Click Element        ${login_tab}

Log in username
    Sleep               ${time}
    [Arguments]         ${login_username}
    Input Text          ${username_login_field}        ${login_username}

Log in password
    Sleep               ${time}
    [Arguments]         ${login_password}
    Input Text          ${password_login_field}        ${login_password}    

Click Log in button 
    Sleep                ${time}
    Click Button         ${login_btn}
    Sleep                ${timescreen}    

Click Close button
    Sleep                ${time}
    Click Button         ${signup_cancel_btn}

Click Cart tab
    Sleep               ${time}
    Click Element       ${cart_tab}

Click Home tab
    Sleep                ${time}
    Click Element        ${home_tab}       

Select Samsung galaxy s6
    Sleep               ${time}
    Click Element       ${galaxy_s6}

Select Sony vaio i5
    Sleep               ${time}
    Click Element       ${vaio_i5}

Select Apple monitor 24
    Sleep               ${time}
    Click Element       ${apple_monitor_24}    

Click Next button
    Sleep               ${time}
    Click button        ${next_btn}

Click Add to cart button
    Sleep               ${time}
    Click Element       ${addtocart_btn}
    Handle Alert        Accept

Click Place order button
    Sleep               ${time}
    Click Button        ${place_order_btn}

Enter Name 
    Sleep               ${time}
    [Arguments]         ${name}
    Input Text          ${name_field}           ${name}

Enter Country
    Sleep               ${time}
    [Arguments]         ${country}
    Input Text          ${country_field}        ${country}   

Enter City
    Sleep               ${time}
    [Arguments]         ${city}
    Input Text          ${city_field}           ${city}

Enter Credit card
    Sleep               ${time}
    [Arguments]         ${card}
    Input Text          ${card_field}           ${card}  

Enter Month
    Sleep               ${time}
    [Arguments]         ${month}
    Input Text          ${month_field}          ${month}

Enter Year
    Sleep               ${time}
    [Arguments]         ${year}
    Input Text          ${year_field}           ${year} 

Click OK Prompt
    Sleep               ${time}
    Handle Alert        ACCEPT

Click Purchase button
    Sleep               ${time}
    Click Button        ${purchase_btn}   

Click OK button
    Sleep               ${time}
    Click Button        ${ok_btn}   

Capture screenshot for verify
    Sleep               ${timescreen}
    [Arguments]         ${picname}
    Capture Page Screenshot         filename=${picname}   

Close website
    Sleep                ${time}
    Close Browser

***Test Cases***
E2E_1 Verify that guest user are able to purchase a product
    Open website
    Select Samsung galaxy s6   
    Click Add to cart button
    Click Home tab
    Select Sony vaio i5   
    Click Add to cart button
    Click Home tab
    Click Next button
    Select Apple monitor 24   
    Click Add to cart button
    Click Cart tab
    Click Place order button
    Enter Name                    Thanut     
    Enter Country                 Thailand
    Enter City                    Bangkok
    Enter Credit card             1111 2222 4444 3333 
    Enter Month                   March
    Enter Year                    2024
    Click Purchase button
    Click OK button
    Close website

E2E_2 Verify that new user are able to purchase a product
    Open website
    Click Sign up tab
    Sign up username            Thanut Test852047
    Sign up password            Thanut1234852047
    Click Sign up button
    Click Close button
    Click Log in tab
    Log in username             Thanut Test852047
    Log in password             Thanut1234852047
    Click Log in button
    Select Samsung galaxy s6   
    Click Add to cart button
    Click Home tab
    Select Sony vaio i5   
    Click Add to cart button
    Click Home tab
    Click Next button
    Select Apple monitor 24   
    Click Add to cart button
    Click Cart tab
    Click Place order button
    Enter Name                    Thanut     
    Enter Country                 Thailand
    Enter City                    Bangkok
    Enter Credit card             1111 2222 4444 3333 
    Enter Month                   March
    Enter Year                    2024
    Click Purchase button
    Click OK button
    Close website

E2E_3 Verify that existing user are able to purchase a product
    Open website
    Click Log in tab
    Log in username             Thanut Test
    Log in password             Thanut1234
    Click Log in button
    Select Samsung galaxy s6   
    Click Add to cart button
    Click Home tab
    Select Sony vaio i5   
    Click Add to cart button
    Click Home tab
    Click Next button
    Select Apple monitor 24   
    Click Add to cart button
    Click Cart tab
    Click Place order button
    Enter Name                    Thanut     
    Enter Country                 Thailand
    Enter City                    Bangkok
    Enter Credit card             1111 2222 4444 3333 
    Enter Month                   March
    Enter Year                    2024
    Click Purchase button
    Click OK button
    Close website
