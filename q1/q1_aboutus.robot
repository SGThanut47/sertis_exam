***Settings***
Resource            variables/variables.robot
Resource            settings/settings.robot

Suite Setup         Set Screenshot Directory           C:/Users/Thanut/Desktop/Hello World/Work/Coding/RobotFramework/Practice/sertis/q1/screenshots

***Keywords***
Open Website
    Open Browser        ${url}      browser=chrome
    Maximize Browser Window

Click About us Tab
    Sleep                ${time}
    Click Element        ${about_tab}     

Click Video Player
    Sleep                ${time}
    Click Element        ${vdo_player} 
    Sleep                ${time}

Click Close Symbol
    Sleep                ${time}
    Click Element        ${au_cancel_sym}

Click Close Button
    Sleep                ${time}
    Click Button         ${au_cancel_btn}

Capture Screenshot for verify
    Sleep               ${timescreen}
    [Arguments]         ${picname}
    Capture Page Screenshot         filename=${picname}   

Close Website
    Sleep                ${time}
    Close Browser

***Test Cases***
AU_1 Verify About us Popup UI
    Open Website
    Click About us Tab
    Capture Screenshot for verify        AU_1.png
    Close Website

AU_2 Verify that user able to see About us video 
    Open Website
    Click About us Tab
    Click Video Player
    Close Website

AU_3 Verify that About us popup UI will close when user click close symbol or Close button
    Open Website
    Click About us Tab
    Click Close Symbol
    Click About us Tab
    Click Close Button
    Close Website
