*** Settings ***
Library    Selenium2Library     #This will invoke selenium library
Resource   variable.robot       #This resource file is used to save variables and encapsulate important data like username & password

*** Test Cases ***
Test Mark Attendance
    Open Browser    ${URL}   browser=${BROWSER}     #This will open the browser and search empxtrack
    input text  ${path1}    ${user_name}            #This input is used to provide username
    input text  ${path2}    ${pass}                 #This input is used to provide password
    input text  ${path3}    ${company_name}         #This input is used to provide company name
    click element    ${login_button}                #This click button will click on loginn button
    click element    ${attan_icon}                  #This click button will click on attendance icon
    wait until page contains element   ${month_icon}
    click element    ${month_icon}                  #This click button will click on monthly icon under attendance icon
    click element    ${mark_atten}                  #This click button will click on mark attandance icon
    close browser                                   #This will close browser after executing all above steps
