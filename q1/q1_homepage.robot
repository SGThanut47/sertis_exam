***Settings***
Resource            variables/variables.robot
Resource            settings/settings.robot

Suite Setup         Set Screenshot Directory           C:/Users/Thanut/Desktop/Hello World/Work/Coding/RobotFramework/Practice/sertis/q1/screenshots

***Keywords***
Open Website
    Open Browser        ${url}      browser=chrome
    Maximize Browser Window

Click Cart Tab
    Sleep                ${time}
    Click Element        ${cart_tab}     

Click Home Tab
    Sleep                ${time}
    Click Element        ${home_tab}   

Click Website Logo 
    Sleep                ${time}
    Click Element        ${weblogo} 

Capture Screenshot for verify
    Sleep               ${timescreen}
    [Arguments]         ${picname}
    Capture Page Screenshot         filename=${picname}   

Close Website
    Sleep                ${time}
    Close Browser

***Test Cases***
HP_1 Verify Homepage UI
    Open Website
    Capture Screenshot for verify        HP_1.png
    Close Website

HP_2 Verify when click Home tab will direct to Homepage
    Open Website
    Click Cart Tab
    Click Home Tab
    Close Website

HP_3 Verify when click website logo will direct back to Homepage
    Open Website
    Click Cart Tab
    Click Website Logo
    Close Website
