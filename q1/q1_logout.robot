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

Click Log out tab
    Sleep                ${time}
    Click Element        ${logout_tab}

Capture screenshot for verify
    Sleep               ${timescreen}
    [Arguments]         ${picname}
    Capture Page Screenshot         filename=${picname}   

Close website
    Sleep                ${time}
    Close Browser

***Test Cases***
LO_1 Verify when click Log out tab user will signoff from system
    Open website
    Click Login tab
    Enter username            Thanut Test
    Enter password            Thanut1234
    Click Log in button
    Click Log out tab
    Close website

LO_2 Verify error notification will display when system didn't logout after click "Log out" tab 
    Open website
    Click Login tab
    Enter username            Thanut Test
    Enter password            Thanut1234
    Click Log in button
    Click Log out tab         
    Capture screenshot for verify         LO_2_error.png           #maybe close internet connection before click log out tab
    Close website
