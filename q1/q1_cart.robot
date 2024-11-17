***Settings***
Resource            variables/variables.robot
Resource            settings/settings.robot

Suite Setup         Set Screenshot Directory           C:/Users/Thanut/Desktop/Hello World/Work/Coding/RobotFramework/Practice/sertis/q1/screenshots

***Keywords***
Open website
    Open Browser        ${url}      browser=chrome
    Maximize Browser Window

Click Cart tab
    Sleep               ${time}
    Click Element       ${cart_tab}

Click Home tab
    Sleep                ${time}
    Click Element        ${home_tab}       

Select Iphone 6 32gb
    Sleep               ${time}
    Click Element       ${iphone6_32gb}

Select Sony vaio i7
    Sleep               ${time}
    Click Element       ${sony_vaio_i7}

Select Samsung galaxy s7
    Sleep               ${time}
    Click Element       ${galaxy_s7}

Select Sony xperia z5
    Sleep               ${time}
    Click Element       ${xperia_z5}

Select HTC One M9 
    Sleep               ${time}
    Click Element       ${one_m9}        

Click Add to cart button
    Sleep               ${time}
    Click Element       ${addtocart_btn}
    Handle Alert        Accept

Refresh page
    Sleep               ${time}
    Press Keys          none           F5

Remove Sony vaio i7 from cart
    Sleep               ${timescreen}
    Click Element       ${delete_sony_tab} 

Remove HTC One M9 from cart
    Sleep               ${time}
    Click Element       ${delete_htc_tab} 

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

Click Close Button
    Sleep                ${time}
    Click Button         ${cart_cancel_btn}

Click Close Symbol
    Sleep                ${time}
    Click Button         ${cart_cancel_sym}

Capture screenshot for verify
    Sleep               ${timescreen}
    [Arguments]         ${picname}
    Capture Page Screenshot         filename=${picname}   

Close website
    Sleep                ${time}
    Close Browser

***Test Cases***
CART_1 Verify Cart page UI
    Open website
    Click Cart tab
    Capture screenshot for verify        CART_1.png
    Close website

CART_2 Verify that user will still see add to cart product when refresh page
    Open website
    Select Iphone 6 32gb
    Click Add to cart button
    Click Home tab
    Select Sony vaio i7
    Click Add to cart button
    Click Cart tab
    Refresh page
    Close website

CART_3 Verify that total price product in cart are accurate
    Open website
    Select Samsung galaxy s7
    Click Add to cart button
    Click Home tab
    Select Sony xperia z5
    Click Add to cart button
    Click Home tab
    Select HTC One M9    
    Click Add to cart button
    Click Cart tab
    Capture screenshot for verify         CART_3.png        #unable to create calculate function
    Close website

CART_4 Verify that user able to remove product from Cart page
    Open website
    Select Iphone 6 32gb
    Click Add to cart button
    Click Home tab
    Select Sony vaio i7
    Click Add to cart button
    Click Cart tab
    Remove Sony vaio i7 from cart             
    Close website

CART_5 Verify that user able to purchase selected product
    Open website
    Select HTC One M9    
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

CART_6 Verify that user able to purchase duplicated product
    Open website
    Select HTC One M9                #unable to create loop function
    Click Add to cart button
    Click Home tab
    Select HTC One M9    
    Click Add to cart button
    Click Home tab
    Select HTC One M9  
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

CART_7 Verify that user able to purchase selected product after remove some product
    Open website
    Select Iphone 6 32gb
    Click Add to cart button
    Click Home tab
    Select Sony vaio i7
    Click Add to cart button
    Click Home tab
    Select HTC One M9  
    Click Add to cart button
    Click Cart tab
    Remove HTC One M9 from cart    
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

CART_8 Verify that user will see error notification when enter invalid format in every input field on Place order Popup
    Open website
    Select Iphone 6 32gb
    Click Add to cart button
    Click Cart tab 
    Click Place order button
    Enter Name                    기초적인     
    Enter Country                 기초적인
    Enter City                    기초적인
    Enter Credit card             基本的な 
    Enter Month                   基本的な
    Enter Year                    基本的な
    Click Purchase button
    Capture screenshot for verify         CART_8_Error.png        #unable to purchase and error message displayed
    Close website

CART_9 Verify that user will see error notification when enter invalid format in every input field on Place order Popup
    Open website
    Select Iphone 6 32gb
    Click Add to cart button
    Click Cart tab 
    Click Place order button
    Enter Name                    @#$%&*     
    Enter Country                 @#$%&*
    Enter City                    @#$%&*
    Enter Credit card             @#$%&* 
    Enter Month                   @#$%&*
    Enter Year                    @#$%&*
    Click Purchase button
    Capture screenshot for verify         CART_9_Error.png        #unable to purchase and error message displayed
    Close website

CART_10 Verify that user unable to purchase a product if any input field was empty
    Open website
    Select Iphone 6 32gb
    Click Add to cart button
    Click Cart tab 
    Click Place order button
    Click Purchase button
    Click OK Prompt    #unable to capture error prompt first then click ok
    Capture screenshot for verify         CART_10_Error.png        #unable to purchase and error message displayed
    Close website    

CART_11 Verify that Place order popup will close when user click close symbol or Close button
    Open Website
    Select Samsung galaxy s7
    Click Cart tab 
    Click Place order button
    Click Close Symbol
    Click Place order button
    Click Close Button
    Close Website

CART_12 Verify on Place order popup that every input field are able to enter 49 characters
    Open website
    Select Samsung galaxy s7   
    Click Add to cart button
    Click Cart tab
    Click Place order button
    Enter Name                    Email123456789Email123456789Email123456@gmail.com     
    Enter Country                 HelloWorldTestHelloWorldTestHelloWorldTestWorldTe
    Enter City                    HelloWorldTestHelloWorldTestHelloWorldTestWorldTe
    Enter Credit card             1111222244443333111122224444333311112222444433331 
    Enter Month                   HelloWorldTest123HelloWorldTest123HelloWorldTest1
    Enter Year                    HelloWorldTest123HelloWorldTest123HelloWorldTest1
    Click Purchase button
    Click OK button
    Close website

CART_13 Verify on Place order popup that every input field are able to enter 50 characters
    Open website
    Select Samsung galaxy s7   
    Click Add to cart button
    Click Cart tab
    Click Place order button
    Enter Name                    Email123456789Email123456789Email123456@gmail.come     
    Enter Country                 HelloWorldTestHelloWorldTestHelloWorldTestWorldTes
    Enter City                    HelloWorldTestHelloWorldTestHelloWorldTestWorldTes
    Enter Credit card             11112222444433331111222244443333111122224444333312 
    Enter Month                   HelloWorldTest123HelloWorldTest123HelloWorldTest12
    Enter Year                    HelloWorldTest123HelloWorldTest123HelloWorldTest12
    Click Purchase button
    Click OK button
    Close website

CART_14 Verify on Place order popup that every input field are unable to enter 51 characters
    Open website
    Select Samsung galaxy s7   
    Click Add to cart button
    Click Cart tab
    Click Place order button
    Enter Name                    Email123456789Email123456789Email123456@gmail.comet     
    Enter Country                 HelloWorldTestHelloWorldTestHelloWorldTestWorldTest
    Enter City                    HelloWorldTestHelloWorldTestHelloWorldTestWorldTest
    Enter Credit card             111122224444333311112222444433331111222244443333123 
    Enter Month                   HelloWorldTest123HelloWorldTest123HelloWorldTest123
    Enter Year                    HelloWorldTest123HelloWorldTest123HelloWorldTest123
    Click Purchase button
    Capture screenshot for verify         CART_14_Error.png        #unable to purchase and error message displayed
    Close website


CART_15 Verify on Place order popup that "Country" input field are unable to enter numbers 
    Open website
    Select Samsung galaxy s7   
    Click Add to cart button
    Click Cart tab
    Click Place order button
    Enter Name                    Thanut     
    Enter Country                 Thailand1234
    Enter City                    Bangkok
    Enter Credit card             1111 2222 3333 4444 
    Enter Month                   March
    Enter Year                    2024
    Click Purchase button
    Capture screenshot for verify         CART_15_Error.png        #unable to purchase and error message displayed
    Close website


CART_16 Verify on Place order popup that "City" input field are unable to enter numbers 
    Open website
    Select Samsung galaxy s7   
    Click Add to cart button
    Click Cart tab
    Click Place order button
    Enter Name                    Thanut     
    Enter Country                 Thailand
    Enter City                    Bang123Kok
    Enter Credit card             1111 2222 3333 4444 
    Enter Month                   March
    Enter Year                    2024
    Click Purchase button
    Capture screenshot for verify         CART_16_Error.png        #unable to purchase and error message displayed
    Close website

CART_17 Verify on Place order popup that "Credit card" input field are unable to enter english characters
    Open website
    Select Samsung galaxy s7   
    Click Add to cart button
    Click Cart tab
    Click Place order button
    Enter Name                    Thanut     
    Enter Country                 Thailand
    Enter City                    Bangkok
    Enter Credit card             1111 AAAA 5555 ASVC 
    Enter Month                   March
    Enter Year                    2024
    Click Purchase button
    Capture screenshot for verify         CART_17_Error.png        #unable to purchase and error message displayed
    Close website
