***Settings***
Resource            variables/variables.robot
Resource            settings/settings.robot

Suite Setup         Set Screenshot Directory           C:/Users/Thanut/Desktop/Hello World/Work/Coding/RobotFramework/Practice/sertis/q1/screenshots

***Keywords***
Open website
    Open Browser        ${url}      browser=chrome
    Maximize Browser Window

Click Login tab
    Sleep                ${time}
    Click Element        ${login_tab}

Enter username
    Sleep               ${time}
    [Arguments]         ${username}
    Input Text          ${username_login_field}        ${username}

Enter password
    Sleep               ${time}
    [Arguments]         ${password}
    Input Text          ${password_login_field}        ${password}    

Click Log in button 
    Sleep                ${time}
    Click Button         ${login_btn}
    Sleep                ${timescreen} 

Click OK Prompt
    Sleep               ${time}
    Handle Alert        ACCEPT

Click Close Button
    Sleep                ${time}
    Click Button         ${login_cancel_btn}

Click Close Symbol
    Sleep                ${time}
    Click Button         ${login_cancel_sym}

Capture screenshot for verify
    Sleep               ${timescreen}
    [Arguments]         ${picname}
    Capture Page Screenshot         filename=${picname}   

Close website
    Sleep                ${time}
    Close Browser

***Test Cases***
LI_1 Verify Login popup UI
    Open website
    Click Login tab
    Capture screenshot for verify        LI_1.png
    Close website

LI_2 Verify that user are able to login 
    Open website
    Click Login tab
    Enter username            Thanut Test
    Enter password            Thanut1234
    Click Log in button
    Close website

LI_3 Verify that user will see error notification if login with invalid data  
    Open website
    Click Login tab
    Enter username            Thanut Test123
    Enter password            Thanut1234
    Click Log in button                       #will see error prompt displayed "User does not exist."
    Click OK Prompt
    Enter username            Thanut Test
    Enter password            Thanut1234567
    Click Log in button                       #will see error prompt displayed "Wrong password"
    Click OK Prompt
    Close website

LI_4 Verify that user will see error notification if login with invalid data  
    Open website
    Click Login tab
    Click Log in button                       #will see error prompt displayed "Please fill out Username and Password."
    Close website

LI_5 Verify that login popup will close when user click close symbol or Close button
    Open Website
    Click Log in tab 
    Click Close Symbol
    Click Log in tab
    Click Close Button
    Close Website

LI_6 Verify on Login popup that every input field are able to enter 49 characters
    Open website
    Click Log in tab
    Enter Username                    ThanutUser12345ThanutUser12345ThanutUser12345Than     
    Enter Password                    PasswordThanut123PasswordThanut123PasswordThanut1
    Click Log in button
    Close website

LI_7 Verify on Login popup that every input field are able to enter 50 characters
    Open website
    Click Log in tab
    Enter Username                    ThanutUser12345ThanutUser12345ThanutUser12345Thanu     
    Enter Password                    PasswordThanut123PasswordThanut123PasswordThanut12
    Click Log in button
    Close website

LI_8 Verify on Login popup that every input field unable to enter 51 characters
    Open website
    Click Log in tab
    Enter Username                    ThanutUser12345ThanutUser12345ThanutUser12345Thanut     
    Enter Password                    PasswordThanut123PasswordThanut123PasswordThanut123
    Click Log in button               #will see error prompt displayed "Username and Password exceed maximum characters allowed."
    Close website
