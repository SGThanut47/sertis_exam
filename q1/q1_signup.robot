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

Enter username
    Sleep               ${time}
    [Arguments]         ${username}
    Input Text          ${username_signup_field}        ${username}

Enter password
    Sleep               ${time}
    [Arguments]         ${password}
    Input Text          ${password_signup_field}        ${password}    

Click Sign up button 
    Sleep                ${time}
    Click Button         ${signup_btn}
    Sleep                ${timescreen} 

Click OK Prompt
    Sleep               ${time}
    Handle Alert        ACCEPT

Click Close button
    Sleep                ${time}
    Click Button         ${signup_cancel_btn}

Click Close symbol
    Sleep                ${time}
    Click Button         ${signup_cancel_sym}

Capture screenshot for verify
    Sleep               ${timescreen}
    [Arguments]         ${picname}
    Capture Page Screenshot         filename=${picname}   

Close website
    Sleep                ${time}
    Close Browser

***Test Cases***
SIGN_1 Verify Sign up popup UI
    Open website
    Click Sign up tab
    Capture screenshot for verify        LI_1.png
    Close website

SIGN_2 Verify that user are able to sign up
    Open website
    Click Sign up tab
    Enter username            Thanut Test
    Enter password            Thanut1234
    Click Sign up button
    Close website

SIGN_3 Verify that user will see error notification if sign up with invalid data 
    Open website
    Click Sign up tab
    Enter username            @!@$
    Enter password            **&*!
    Click Sign up button                       #will see error prompt displayed "Wrong format data."
    Close website

SIGN_4 Verify that user will see error notification if sign up with empty data  
    Open website
    Click Sign up tab
    Click Sign up button                       #will see error prompt displayed "Please fill out Username and Password."
    Close website

SIGN_5 Verify that user will see error notification if sign up with existing user data 
    Open website
    Click Sign up tab
    Enter username            Thanut Test
    Enter password            Thanut1234
    Click Sign up button                       #will see error prompt displayed "This user already exist."
    Close website

SIGN_6 Verify that Sign up popup will close when user click close symbol or Close button
    Open Website
    Click Sign up tab 
    Click Close Symbol
    Click Sign up tab
    Click Close Button
    Close Website

SIGN_7 Verify on Sign up popup that every input field are able to enter 49 characters
    Open website
    Click Sign up tab
    Enter Username                    ThanutUser12345ThanutUser12345ThanutUser12345Than     
    Enter Password                    PasswordThanut123PasswordThanut123PasswordThanut1
    Click Sign up button
    Close website


SIGN_8 Verify on Sign up popup that every input field are able to enter 50 characters
    Open website
    Click Sign up tab
    Enter Username                    ThanutUser12345ThanutUser12345ThanutUser12345Thanu     
    Enter Password                    PasswordThanut123PasswordThanut123PasswordThanut12
    Click Sign up button
    Close website

SIGN_9 Verify on Sign up popup that every input field unable to enter 51 characters
    Open website
    Click Sign up tab
    Enter Username                    ThanutUser12345ThanutUser12345ThanutUser12345Thanut     
    Enter Password                    PasswordThanut123PasswordThanut123PasswordThanut123
    Click Sign up button               #will see error prompt displayed "Username and Password exceed maximum characters allowed."
    Close website
