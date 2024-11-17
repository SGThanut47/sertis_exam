***Variables***
#General
${url}                             https://www.demoblaze.com/index.html
${time}                            1s
${timescreen}                      3s

#Homepage
${home_tab}                        //a[@class='nav-link' and text()='Home ']
${weblogo}                         //a[@class='navbar-brand']

#Contact
${contact_tab}                     //a[@class='nav-link' and text()='Contact']
${con_email_field}                 //input[@id='recipient-email']
${con_name_field}                  //input[@id='recipient-name']
${con_msg_field}                   //textarea[@id='message-text']
${msg_btn}                         //button[@type='button' and text()='Send message']
${con_cancel_sym}                  (//button[@type='button' and @aria-label='Close'])[1]
${con_cancel_btn}                  (//button[@type='button' and text()='Close'])[1]

#About us
${about_tab}                       //a[@class='nav-link' and text()='About us'] 
${vdo_player}                      //div[@class='vjs-poster']
${au_cancel_sym}                   (//button[@type='button' and @aria-label='Close'])[4]
${au_cancel_btn}                   (//button[@type='button' and text()='Close'])[4]

#Cart
${cart_tab}                        //a[@class='nav-link' and text()='Cart']
${iphone6_32gb}                    //a[@href='prod.html?idp_=5' and text()='Iphone 6 32gb']
${sony_vaio_i7}                    //a[@href='prod.html?idp_=9']
${galaxy_s7}                       //a[@href='prod.html?idp_=4' and text()='Samsung galaxy s7']
${xperia_z5}                       //a[@href='prod.html?idp_=6' and text()='Sony xperia z5']
${one_m9}                          //a[@href='prod.html?idp_=7' and text()='HTC One M9']
${addtocart_btn}                   //a[@class='btn btn-success btn-lg' and text()='Add to cart']
${delete_sony_tab}                 (//a[text()='Delete'])[2]
${delete_htc_tab}                  (//a[text()='Delete'])[3]
${place_order_btn}                 //button[@type='button' and text()='Place Order']
${name_field}                      //input[@type='text' and @id='name']
${country_field}                   //input[@type='text' and @id='country']
${city_field}                      //input[@type='text' and @id='city']
${card_field}                      //input[@type='text' and @id='card']
${month_field}                     //input[@type='text' and @id='month']
${year_field}                      //input[@type='text' and @id='year']
${purchase_btn}                    //button[@type='button' and text()='Purchase']
${ok_btn}                          //button[@class='confirm btn btn-lg btn-primary' and text()='OK']
${cart_cancel_sym}                 (//button[@type='button' and @aria-label='Close'])[3]
${cart_cancel_btn}                 (//button[@type='button' and text()='Close'])[3]

#Sign up
${signup_tab}                      //a[@class='nav-link' and text()='Sign up']
${username_signup_field}           //input[@id='sign-username']
${password_signup_field}           //input[@id='sign-password']
${signup_btn}                      //button[text()='Sign up']
${signup_cancel_btn}               (//button[@type='button' and @aria-label='Close'])[2]
${signup_cancel_sym}               (//button[@type='button' and text()='Close'])[2]

#Log in
${login_tab}                       //a[@class='nav-link' and text()='Log in']
${username_login_field}            //input[@id='loginusername']
${password_login_field}            //input[@id='loginpassword']
${login_btn}                       //button[text()='Log in']
${login_cancel_btn}                (//button[@type='button' and @aria-label='Close'])[3]
${login_cancel_sym}                (//button[@type='button' and text()='Close'])[3]

#Log out
${logout_tab}                       //a[@class='nav-link' and text()='Log out']

#Slide preview
${left_slide}                       //a[@class='carousel-control-prev']
${right_slide}                      //a[@class='carousel-control-next']

#Categories
${categories_tab}                   //a[@class='list-group-item' and text()='CATEGORIES']
${next_btn}                         //button[@class='page-link' and text()='Next']
${previous_btn}                     //button[@class='page-link' and text()='Previous']
${nexus_6}                          //a[@href='prod.html?idp_=3' and text()='Nexus 6']

#Phones
${phones_tab}                       //a[@class='list-group-item' and text()='Phones']

#Laptops
${laptops_tab}                      //a[@class='list-group-item' and text()='Laptops']
${mb_air_tab}                       //a[@href='prod.html?idp_=11' and text()='MacBook air']  
${mb_pro_tab}                       //a[@href='prod.html?idp_=15' and text()='MacBook Pro']

#Monitors
${monitors_tab}                     //a[@class='list-group-item' and text()='Monitors']
${apple_monitor_24}                 //a[@href='prod.html?idp_=10' and text()='Apple monitor 24'] 
${asus_hd}                          //a[@href='prod.html?idp_=14' and text()='ASUS Full HD'] 

#E2E
${galaxy_s6}                        //a[@href='prod.html?idp_=1' and text()='Samsung galaxy s6']
${vaio_i5}                          //a[@href='prod.html?idp_=8' and text()='Sony vaio i5']
