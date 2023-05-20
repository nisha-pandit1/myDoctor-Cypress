Feature: Doctor Profile Page functionality
    # https://team-1628225445927.atlassian.net/browse/MYD-388
    # @Regression
    # @MYD-388
    #1
    #         Scenario Outline: Check user navigates to Personal Information page and submenu items get displayed
    #         Given User logs in with "<Role>" credentials
    #         When user clicks on the "Dashboard"
    #         And user clicks on the "Doctor Profile"
    #         Then "Submenu items" should be "displayed"
    #         And "Personal Information page" should be "displayed"
    #         And "Personal Information item" should be "focused"
    #         Examples:
    #             | Role   |
    #             | Doctor |

    # #         #     # https://team-1628225445927.atlassian.net/browse/MYD-388
    # #         #     @Regression
    # #         #     @MYD-388
    #         Scenario Outline: Check user navigates Qualification submenu item of Doctor Profile
    #         Given User logs in with "<Role>" credentials
    #         And "Submenu items" should be "displayed"
    #         And "Personal Information item" should be "focused"
    #         When user clicks on the "Qualification"
    #         Then "Qualification page" should be "displayed"
    #         And "Qualification item" should be "focused"
    #         And "Personal Information item" should be "un-focused"
    #         Examples:
    #             | Role   |
    #             | Doctor |

    #     #     # https://team-1628225445927.atlassian.net/browse/MYD-388
    #     #     @Regression
    #     #     @MYD-388
    #     #3
    # Scenario Outline: Check user navigates to Experience submenu item of Doctor Profile
    #     Given User logs in with "<Role>" credentials
    #     And "Submenu items" should be "displayed"
    #     When user clicks on the "Doctor Profile"
    #     And user clicks on the "Experience"
    #     Then "Experience page" should be "displayed"
    #     And "Qualification item" should be "un-focused"
    #     And "Experience item" should be "focused"
    #     Examples:
    #         | Role   |
    #         | Doctor |


    #     #     # https://team-1628225445927.atlassian.net/browse/MYD-388
    #     #     @Regression
    #     #     @MYD-388
    #     #4
    # Scenario Outline: Check submenu Items get hidden
    #     Given User logs in with "<Role>" credentials
    #     And "Submenu items" should be "displayed"
    #     And "Experience page" should be "displayed"
    #     And "Experience item" should be "focused"
    #     When user clicks on the "Dashboard"
    #     Then "Dashboard page" should be "displayed"
    #     And "Dashboard item" should be "focused"
    #     And "Submenu items" should be "displayed"
    #     Examples:
    #         | Role   |
    #         | Doctor |
    # #     # https://team-1628225445927.atlassian.net/browse/MYD-388
    # #     @Regression
    # #     @MYD-388
    # #5
    Scenario Outline: Check Perosnal Information page functionality
        Given User logs in with "<Role>" credentials
        And "Submenu items" should be "displayed"
        When user clicks on the "Doctor Profile"
        And "Personal Information page" should be "displayed"
        And "Personal Information item" should be "focused"
        Then Corresponding "<fields>" along with "<fields input>" should get Displayed
        And "All fields" should be "disabled"


        Examples:
            | Role   | fields       | fields input                                                |
            # | Doctor | Name              | Daktuur Mehta                                               |
            # | Doctor | Consultation Fee* | 2000                                                        |
            | Doctor | Phone Number | 8789845651                                                  |
            | Doctor | Gender       | Male                                                        |
            | Doctor | Email        | sibu@1234gmail.com                                          |
            | Doctor | Bio          | Hello Guys I Am Doctor Abc I Am Specialized In Cardiologist |

# # https://team-1628225445927.atlassian.net/browse/MYD-388
# # #     @Regression
# # #   @MYD-388
# #6
# # Scenario Outline: Check Update  Perosnal Information functionality
# #      Given User logs in with "<Role>" credentials
# #     And Doctor Profile's submenu items are displayed
# #     And "Personal Information" page should be displayed
# #     And "Personal Information" item should be focused
# #     And "<Name>","<Consultaion Fee>","<Phone Number>","<Gender>","<Email>","<Languages>" and "<Bio>" field should get Displayed
# #     When Doctor clicks on "Edit button"
# #    #### Then "<Name>","<Consultaion Fee>","<Phone Number>","<Gender>","<Email>","<Languages>" and "<Bio>" should be editable
# #    ### And save button should be visible
# #    ## And all fileds should contain previous data
# #     Examples:

# #    | Role      |Name      | ConsultaionFee | PhoneNumber | Gender | Email              | Languages              | Bio                                                        |
# #         | Doctor  |Tony Wani |   2000         | 8789845651  | Male   | sibu@1234gmail.com | Arabic, English, Hindi |Hello Guys I Am Doctor Abc I Am Specialized In Cardiologist|
# # #
# #     # https://team-1628225445927.atlassian.net/browse/MYD-388
# #     @Regression
# #     @MYD-388
# #7
Scenario Outline: Check Personal Information fields with valid data
     Given User logs in with "<Role>" credentials
    And Doctor Profile's submenu items are displayed
    And "Personal Information" page should be displayed
    And "Personal Information" item should be focused
    When Doctor clicks on "Edit button"
   Then user updates "<field>" with valid input
    And user should be able to save the changes

    Examples:

      | Role |Name        | ConsultaionFee | PhoneNumber | Gender   | Email              | Languages              | Bio                                                        |
       |Doctor |Tony kakar  |   2000         | 8789845651  | Male     | sibu@1234gmail.com | Arabic, English, Hindi |Hello Guys I Am Doctor Abc I Am Specialized In Cardiologist |
# #         |Tony kakar  |   2001         | 8789845651  | Male     | sibu@1234gmail.com | Arabic, English, Hindi |Hello Guys I Am Doctor Abc I Am Specialized In Cardiologist |
# #         |Tony kakar  |   2001         | 8789845652  | Male     | sibu@1234gmail.com | Arabic, English, Hindi |Hello Guys I Am Doctor Abc I Am Specialized In Cardiologist |
# #         |Tony kakar  |   2001         | 8789845652  | Female   | sibu@12345gmail.com| Arabic, English, Hindi |Hello Guys I Am Doctor Abc I Am Specialized In Cardiologist |
# #         |Tony kakar  |   2001         | 8789845652  | Female   | sibu@12345gmail.com| Arabic, English, urdu  |Hello Guys I Am Doctor Abc I Am Specialized In Cardiologist |
# #         |Tony kakar  |   2001         | 8789845652  | Female   | sibu@12345gmail.com| Arabic, English, urdu  |Hello Guys I Am Doctor AbCd I Am Specialized In Radiology   |

# #     # https://team-1628225445927.atlassian.net/browse/MYD-388
# #     @Regression
# #     @MYD-388
# #8
# #     Scenario Outline: Check Personal Information fields with invalid data
# #          Given User logs in with "<Role>" credentials
# #         And Doctor Profile's submenu items are displayed
# #         And Personal Information page  is displayed
# #         And Personal Information item is focused
# #         When Doctor clicks on "Edit button"
# #         Then <field> should be editable
# #         When user updates "<field>" with invalid input
# #         Then user should not be able to save the changes
# #         And user should sees "<errormessage>""

# #         Example:

# #             |Name        | ConsultaionFee | PhoneNumber | Gender   | Email              | Languages              | Bio                                                        | erro message                        |
# #             |            |   2000         | 8789845651  | Male     | sibu@1234gmail.com | Arabic, English, Hindi |Hello Guys I Am Doctor Abc I Am Specialized In Cardiologist |Please enter a valid name!           |
# #             |123         |   2001         | 8789845651  | Male     | sibu@1234gmail.com | Arabic, English, Hindi |Hello Guys I Am Doctor Abc I Am Specialized In Cardiologist |Please enter a valid name!           |
# #             |@23434      |   2001         | 8789845652  | Male     | sibu@1234gmail.com | Arabic, English, Hindi |Hello Guys I Am Doctor Abc I Am Specialized In Cardiologist |Please enter a valid name!           |
# #             |@3412#%     |   2001         | 8789845652  | Female   | sibu@12345gmail.com| Arabic, English, Hindi |Hello Guys I Am Doctor Abc I Am Specialized In Cardiologist |Please enter a valid name!           |
# #             |Tony kakar  |   5001         | 8789845652  | Female   | sibu@12345gmail.com| Arabic, English, urdu  |Hello Guys I Am Doctor Abc I Am Specialized In Cardiologist |Please enter a value between 0 & 5000|
# #             |Tony kakar  |   60000        | 8789845652  | Female   | sibu@12345gmail.com| Arabic, English, urdu  |Hello Guys I Am Doctor AbCd I Am Specialized In Radiology   |Please enter a value between 0 & 5000|
# #             |Tony kakar  |   -1           | 8789845652  | Female   | sibu@12345gmail.com| Arabic, English, urdu  |Hello Guys I Am Doctor AbCd I Am Specialized In Radiology   |Please enter a value between 0 & 5000|
# #             |Tony kakar  |   -200         | 8789845652  | Female   | sibu@12345gmail.com| Arabic, English, urdu  |Hello Guys I Am Doctor AbCd I Am Specialized In Radiology   |Please enter a value between 0 & 5000|
# #             |Tony kakar  |   @#%^&        | 8789845652  | Female   | sibu@12345gmail.com| Arabic, English, urdu  |Hello Guys I Am Doctor AbCd I Am Specialized In Radiology   |Please enter a value between 0 & 5000|
# #             |Tony kakar  |   20%0         | 8789845652  | Female   | sibu@12345gmail.com| Arabic, English, urdu  |Hello Guys I Am Doctor AbCd I Am Specialized In Radiology   |Please enter a value between 0 & 5000|
# #             |Tony kakar  |   shaw         | 8789845652  | Female   | sibu@12345gmail.com| Arabic, English, urdu  |Hello Guys I Am Doctor AbCd I Am Specialized In Radiology   |Please enter a value between 0 & 5000|
# #             |Tony kakar  |   2000         | +-.8765432  | Female   | sibu@12345gmail.com| Arabic, English, urdu  |Hello Guys I Am Doctor AbCd I Am Specialized In Radiology   |Please enter a valid 10 digit Number |
# #             |Tony kakar  |   2000         | 1234567     | Female   | sibu@12345gmail.com| Arabic, English, urdu  |Hello Guys I Am Doctor AbCd I Am Specialized In Radiology   |Please enter a valid 10 digit Number |
# #             |Tony kakar  |   2000         | 0122345678  | Female   | sibu@12345gmail.com| Arabic, English, urdu  |Hello Guys I Am Doctor AbCd I Am Specialized In Radiology   |Please enter a valid 10 digit Number |
# #             |Tony kakar  |   2000         | 12345678e1  | Female   | sibu@12345gmail.com| Arabic, English, urdu  |Hello Guys I Am Doctor AbCd I Am Specialized In Radiology   |Please enter a valid 10 digit Number |
# #             |Tony kakar  |   2000         | .123456678  | Female   | sibu@12345gmail.com| Arabic, English, urdu  |Hello Guys I Am Doctor AbCd I Am Specialized In Radiology   |Please enter a valid 10 digit Number |
# #             |Tony kakar  |   2000         | 8789845652  | Female   | sibu@12345gmail.c  | Arabic, English, urdu  |Hello Guys I Am Doctor AbCd I Am Specialized In Radiology   |Please enter a valid email address   |
# #             |Tony kakar  |   2000         | 8789845652  | Female   |                    | Arabic, English, urdu  |Hello Guys I Am Doctor AbCd I Am Specialized In Radiology   |Please enter a valid email address   |
# #             |Tony kakar  |   2000         | 8789845652  | Female   | 1@abc.com          | Arabic, English, urdu  |Hello Guys I Am Doctor AbCd I Am Specialized In Radiology   |Please enter a valid email address   |
# #             |Tony kakar  |   2000         | 8789845652  | Female   | 122@b.com          | Arabic, English, urdu  |Hello Guys I Am Doctor AbCd I Am Specialized In Radiology   |Please enter a valid email address   |
# #             |Tony kakar  |   2000         | 8789845652  | Female   | abc#abc.com        | Arabic, English, urdu  |Hello Guys I Am Doctor AbCd I Am Specialized In Radiology   |Please enter a valid email address   |
# #             |Tony kakar  |   2000         | 8789845652  | Female   | abc@@abc.com       | Arabic, English, urdu  |Hello Guys I Am Doctor AbCd I Am Specialized In Radiology   |Please enter a valid email address   |
# #             |Tony kakar  |   2000         | 8789845652  | Female   | a b c@abc.com      | Arabic, English, urdu  |Hello Guys I Am Doctor AbCd I Am Specialized In Radiology   |Please enter a valid email address   |
# #             |Tony kakar  |   2000         | 8789845652  | Female   | abc@abc..com       | Arabic, English, urdu  |Hello Guys I Am Doctor AbCd I Am Specialized In Radiology   |Please enter a valid email address   |
# #             |Tony kakar  |   2000         | 8789845652  | Female   | .abc@abc.com       | Arabic, English, urdu  |Hello Guys I Am Doctor AbCd I Am Specialized In Radiology   |Please enter a valid email address   |
# #             |Tony kakar  |   2000         | 8789845652  | Female   | sibu@12345gmail.com|                        |Hello Guys I Am Doctor AbCd I Am Specialized In Radiology   |                                     |
# #             |Tony kakar  |   2000         | 8789845652  | Female   | sibu@12345gmail.com| Arabic, English, urdu  |                                                            |Please enter valid bio               |
# #             |Tony kakar  |   2000         | 8789845652  | Female   | sibu@12345gmail.com| Arabic, English, urdu  | iadf adsfe                                                 |Please enter valid bio               |

# #    # https://team-1628225445927.atlassian.net/browse/MYD-388
# #     @Regression
# #     @MYD-388
# #9
# #     Scenario Outline: Check functionality of Languages field
# #          Given User logs in with "<Role>" credentials
# #         And Doctor Profile's submenu items are displayed
# #         And Personal Information menu is selected
# #         When Doctor clicks on "Edit button"
# #         And Languages field should be editable
# #         And Doctor clicks on "Languages field"
# #         Then drop down of Languages should be displayed

# #     # https://team-1628225445927.atlassian.net/browse/MYD-388
# #     @Regression
# #     @MYD-388
# #10
# #     Scenario Outline: check for Multiple selection  of Languages field
# #          Given User logs in with "<Role>" credentials
# #         And Doctor Profile's submenu items are displayed
# #         And Personal Information page  is displayed
# #         And Personal Information item is focused
# #         When Doctor clicks on "Edit button"
# #         Then Languages field should be editable
# #         When Doctor clicks on "Languages field"
# #         Then drop down of Languages should be displayed
# #         When user clicks on "<item 1>" of Languages drop down field
# #         Then "<item 1>" should be visible in Languages textfield
# #         When user clicks "<item 2>" of Languages drop down field
# #         Then "<item 2>" of should be visible in Languages textfield

# #     # https://team-1628225445927.atlassian.net/browse/MYD-388
# #     @Regression
# #     @MYD-388
# #     Scenario Outline: check for deletion of single chip item  of Languages field
# #          Given User logs in with "<Role>" credentials
# #         And Doctor Profile's submenu items are displayed
# #         And Personal Information page  is displayed
# #         And Personal Information item is focused
# #         When Doctor clicks on "Edit button"
# #         Then Languages field should be editable
# #         Given Languages field contains "<item 1>" ,"<item 2>","<item 3>" chip items
# #         When octor clicks on "cross icon" of chip "<item 1>"
# #         <item 1> should be invisible in Languages field

# #    # https://team-1628225445927.atlassian.net/browse/MYD-388
# #     @Regression
# #     @MYD-388
# #     Scenario Outline: check for All deletion of chip items  of Languages field
# #          Given User logs in with "<Role>" credentials
# #         And Doctor Profile's submenu items are displayed
# #         And Personal Information page  is displayed
# #         And Personal Information item is focused
# #         When user clicks Edit button
# #         Then Languages field should be editable
# #         Given Languages field contains <item 1> <item 2> <item 3> chip items
# #         When user clicks on cross icon of Languages filed
# #         Then <item 1> <item 2> <item 3> should be invisible

# #     # https://team-1628225445927.atlassian.net/browse/MYD-388
# #     @Regression
# #     @MYD-388
# #     Scenario Outline: check for functionality of Qualification page for user logged in first time
# #         Given Doctor Profile gets creatd after registration
# #         And Doctor loggedin with newly created Account
# #         And Doctor clicks on Doctor Profile
# #         And Doctor Profile's submenu items are displayed
# #         When Doctor clicks on Qualification item
# #         Then Qualification page  should be displayed
# #         And  Qualification item should be focused
# #         And <message> should be displayed

# #         Example:

# #             |Message                                  |
# #             | No Qualifications added yet             |

# #     # https://team-1628225445927.atlassian.net/browse/MYD-388
# #     @Regression
# #     @MYD-388
# #     Scenario Outline: check for Edit  and Save functionality of Qualification page
# #          Given User logs in with "<Role>" credentials
# #         And Doctor Profile's submenu items are displayed
# #         And Qualification page  is displayed
# #         And Qualification item is focused
# #         When user clicks Edit button
# #         Then card should be displayed with empty textfields of <Degree/Qualification> ,<Institute Name>, <Year of Completion> and delete icon
# #         And cancel, save and addMore button should be visible
# #         And save button should be disabled
# #         When user fills <Degree/Qualification> with valid input
# #         And user fills <iInstitute Name> with valid input
# #         And user fills Year of Completion> with valid input
# #         Then save button should be enabled
# #         When user clicks on save button
# #         Then cancel ,save and addMore button should get invisible
# #         And a row of card should get displayed with textfields of <Degree/Qualification> ,<Institute Name>, <Year of Completion>

# #         Example:

# #             |Degree/Qualification                    |InstituteName                          |YearofCompletion                 |
# #             |Doctrate of Medicine                    | AIIMS Delhi                           | 2017                            |

# #     # https://team-1628225445927.atlassian.net/browse/MYD-388
# #     @Regression
# #     @MYD-388
# #     Scenario Outline: check for addmore button functionality of Qualification page
# #          Given User logs in with "<Role>" credentials
# #         And Doctor Profile's submenu items are displayed
# #         And Qualification page  is displayed
# #         And Qualification item is focused
# #         And user clicks Edit button
# #         And card is displayed with textfields of <Degree/Qualification> ,<Institute Name>, <Year of Completion> and delete icon
# #         And cancel, save and addMore button should be visible
# #         And save button should be enabled
# #         When user clicks on addMore button
# #         Then save button should get disabled
# #         And a row of card with empty textfields of <Degree/Qualification> ,<Institute Name>, <Year of Completion> and delete icon should get added

# #         Example:

# #             |Degree/Qualification                    |InstituteName                          |YearofCompletion                 |
# #             |Doctrate of Medicine                    | AIIMS Delhi                           | 2017                            |
# #             |                                        |                                       |                                 |

# #     # https://team-1628225445927.atlassian.net/browse/MYD-388
# #     @Regression
# #     @MYD-388
# #     Scenario Outline: check for Cancel button functionality of Qualification page
# #          Given User logs in with "<Role>" credentials
# #         And Doctor Profile's submenu items are displayed
# #         And Qualification page  is displayed
# #         And Qualification item is focused
# #         And user clicks Edit button
# #         And card is displayed with textfields of <Degree/Qualification> ,<Institute Name>, <Year of Completion> and delete icon
# #         And cancel, save and addMore button should be visible
# #         And save button should be enabled
# #         And user clicks on addMore button
# #         And a row of card with empty textfields of <Degree/Qualification> ,<Institute Name>, <Year of Completion> and delete icon should get added
# #         And save button is disabled
# #         And user fills <Degree/Qualification> wiht input valid
# #         And user fills <Institute Name> with input valid
# #         And user fills <Year of Completion> with input valid

# #         Example:

# #             |Degree/Qualification                    |InstituteName                          |YearofCompletion                 |
# #             |Doctrate of Medicine                    | AIIMS Delhi                           | 2017                            |
# #             |Masters of Medicine                     | Apollo Hospital                       | 2019                            |

# #         When user clicks cancel button
# #         Then cancel, save, addMore button should get invisible
# #         and a single row of card with textfields of <Degree/Qualification> ,<Institute Name>, <Year of Completion> should get displayed

# #         Example:

# #             |Degree/Qualification                    |InstituteName                          |YearofCompletion                 |
# #             |Doctrate of Medicine                    | AIIMS Delhi                           | 2017                            |

# #     # https://team-1628225445927.atlassian.net/browse/MYD-388
# #     @Regression
# #     @MYD-388
# #     Scenario Outline: check for delete icon functionality of card in Qualification page
# #          Given User logs in with "<Role>" credentials
# #         And Doctor Profile's submenu items are displayed
# #         And Qualification page  is displayed
# #         And Qualification item is focused
# #         And user clicks Edit button
# #         And card is displayed with textfields of <Degree/Qualification> ,<Institute Name>, <Year of Completion> and delete icon
# #         And cancel, save and addMore button should be visible
# #         And save button should be enabled
# #         When user clicks on delete icon of card
# #         Then card should not visible

# #         Example:
# #             |                                        |                                        |                                   |

# #     # https://team-1628225445927.atlassian.net/browse/MYD-388
# #     @Regression
# #     @MYD-388
# #     Scenario Outline: check for Qualification page fields with valid input data
# #          Given User logs in with "<Role>" credentials
# #         And Doctor Profile's submenu items are displayed
# #         And Qualification page  is displayed
# #         And Qualification item is focused
# #         And user clicks Edit button
# #         And cancel, save and addMore button should be visible
# #         And save button should be disabled
# #         And user clicks addMore button
# #         When user fills <Degree/Qualification> with valid input
# #         And user fills <Degree/Qualification> with valid input
# #         And user fills <Degree/Qualification> with valid input
# #         Then save button should be enabled

# #         Example:

# #             |Degree/Qualification                     |Institute Name                          |Year of Completion                 |
# #             |Masters of surgery                       | GMC Jammu                              |2017                               |
# #             |certifided Cardiologist                  | Annad Bahi Johsi hospital              |2019                               |

# #     # https://team-1628225445927.atlassian.net/browse/MYD-388
# #     @Regression
# #     @MYD-388
# #     Scenario Outline: check for Qualification page fields with invalid input data
# #          Given User logs in with "<Role>" credentials
# #         And Doctor Profile's submenu items are displayed
# #         And Qualification page  is displayed
# #         And Qualification item is focused
# #         And user clicks Edit button
# #         And cancel, save and addMore button should be visible
# #         And save button should be enabled
# #         And user clicks addMore button
# #         And save button should be disabled
# #         When user fills <Degree/Qualification> with invalid input
# #         And user fills <Degree/Qualification> with invalid input
# #         And user fills <Degree/Qualification> with invalid input
# #         Then save button should be disabled
# #         And <errormessage> should be displayed

# #         Example:

# #             |Degree/Qualification       |Institute Name                |Year of Completion      |error message                          |
# #             |                           | GMC Jammu                    |2017                    |Please enter valid degree name         |
# #             |123                        | Annad Bahi Johsi hospital    |2019                    |Please enter valid degree name         |
# #             |123@34                     | Annad Bahi Johsi hospital    |2019                    |Please enter valid degree name         |
# #             |@!#$%^                     | Annad Bahi Johsi hospital    |2019                    |Please enter valid degree name         |
# #             |sh                         | Annad Bahi Johsi hospital    |2019                    |Please enter valid degree name         |
# #             |sh@123                     | Annad Bahi Johsi hospital    |2019                    |Please enter valid degree name         |
# #             |sha123bar                  | Annad Bahi Johsi hospital    |2019                    |Please enter valid degree name         |
# #             |Masters of surgery         |                              |2019                    |Please enter valid institute name      |
# #             |Masters of surgery         |123                           |2019                    |Please enter valid institute name      |
# #             |Masters of surgery         |123@34                        |2019                    |Please enter valid institute name      |
# #             |Masters of surgery         ||@!#$%^                       |2019                    |Please enter valid institute name      |
# #             |Masters of surgery         |sh                            |2019                    |Please enter valid institute name      |
# #             |Masters of surgery         |sh@123                        |2019                    |Please enter valid institute name      |
# #             |Masters of surgery         |sha123bar                     |2019                    |Please enter valid institute name      |
# #             |Masters of surgery         |Annad Bahi Johsi hospital     |                        |Please enter a valid year              |
# #             |Masters of surgery         |Annad Bahi Johsi hospital     |1234                    |Please enter a valid year              |
# #             |Masters of surgery         |Annad Bahi Johsi hospital     |123@34                  |Please enter a valid year              |
# #             |Masters of surgery         |Annad Bahi Johsi hospital     |@!#$%^                  |Please enter a valid year              |
# #             |Masters of surgery         |Annad Bahi Johsi hospital     |sh                      |Please enter a valid year              |
# #             |Masters of surgery         |Annad Bahi Johsi hospital     |sh@123                  |Please enter a valid year              |
# #             |Masters of surgery         |Annad Bahi Johsi hospital     |20194                   |Please enter a valid year              |
# #             |Masters of surgery         |Annad Bahi Johsi hospital     |-2021                   |Please enter a valid year              |
# #             |Masters of surgery         |Annad Bahi Johsi hospital     |.212                    |Please enter a valid year              |
# #             |Masters of surgery         |Annad Bahi Johsi hospital     |.212                    |Please enter a valid year              |
# #             |Masters of surgery         |Annad Bahi Johsi hospital     |1880                    |Please enter a valid year              |
# #             |Masters of surgery         |Annad Bahi Johsi hospital     |2022                    |Please enter a valid year              |

# #     # https://team-1628225445927.atlassian.net/browse/MYD-388
# #     @Regression
# #     @MYD-388
# #     Scenario Outline: check for functionality of MY Experience page for user logged in first time
# #         Given Doctor Profile gets creatd after registration
# #         And Doctor loggedin with newly created Account
# #         And Doctor clicks on Doctor Profile
# #         And Doctor Profile's submenu items are displayed
# #         When Doctor clicks on My Experience item
# #         Then My Experience page  should be displayed
# #         And  My Experience item should be focused
# #         And row of disabled empty textfields of <Licence Number>, <Speciality(ies)> should be displayed

# #         Example:

# #             |Licence Number                           |Speciality(ies)                                         |
# #             |                                         |                                                        |
# #     # https://team-1628225445927.atlassian.net/browse/MYD-388
# #     @Regression
# #     @MYD-388
# #     Scenario Outline: check for functionality edit button in My Experience page
# #          Given User logs in with "<Role>" credentials
# #         And Doctor Profile's submenu items are displayed
# #         And My Experience page  is displayed
# #         And My Experience item is focused
# #         When user clicks Edit button
# #         Then cancel, save, addMore button is visible
# #         And save button is disabled
# #         And <Licence Number> is editable
# #         And <Speciality(ies)> is editable

# #         Example:

# #             |Licence Number     |Speciality(ies)       |
# #             |                   |                      |

# #     # https://team-1628225445927.atlassian.net/browse/MYD-388
# #     @Regression
# #     @MYD-388
# #     Scenario Outline: check for functionality of addMore button in My Experience page
# #          Given User logs in with "<Role>" credentials
# #         And Doctor Profile's submenu items are displayed
# #         And My Experience page  is displayed
# #         And My Experience item is focused
# #         And user clicks Edit button
# #         And cancel, save, addMore button is visible
# #         When user clicks addMore button
# #         Then empty <Position>,<Start Date>,<Hospital/Clinic>,<End Date> text field should be added
# #         And empty switch <Currently Working> should be added
# #         And save button should be disabled

# #         Example:

# #             |Licence Number     |Speciality(ies)      |Position      | Hospital/Clinic   | StartDate  | EndDate   | CurrentlyWorking |
# #             |                   |                     |              |                   |            |           |                  |

# #    # https://team-1628225445927.atlassian.net/browse/MYD-388
# #     @Regression
# #     @MYD-388
# #     Scenario Outline: check for functionality of save button in My Experience page
# #          Given User logs in with "<Role>" credentials
# #         And Doctor Profile's submenu items are displayed
# #         And My Experience page  is displayed
# #         And My Experience item is focused
# #         And user clicks Edit button
# #         And cancel, save, addMore button is visible
# #         And user clicks addMore button
# #         And save button is disabled
# #         And user fills <Licence Number>,<Speciality(ies)>,<Position>,<Start Date>,<Hospital/Clinic>,<End Date>,<Currently Working> with valid input data
# #         And save button is enabled
# #         When user clicks save button
# #         Then cancel, addmore and save button should get invisible
# #         And  <Licence Number>,<Speciality(ies)>,<Position>,<Start Date>,<Hospital/Clinic>,<End Date><CurrentlyWorking> should get displayed

# #         Example:

# #             |Licence Number     |Speciality(ies)      |Position                | Hospital/Clinic   | StartDate  | EndDate   | CurrentlyWorking |
# #             |alpha@123          |anaesthesiology      |Head of anaesthesiology | GMC Jammu         | 11/2016    | 11/2019   |   off            |
# #             |alpha@123          |anaesthesiology      |Head of Cardiology      | GMC Jammu         | 11/2015    | 11/2018   |   off            |
# #             |alpha@123          |anaesthesiology      |Head of Radiology       | GMC Jammu         | 11/2018    |           |   on             |

# #     # https://team-1628225445927.atlassian.net/browse/MYD-388
# #     @Regression
# #     @MYD-388
# #     Scenario Outline: check for functionality of Cancel button in My Experience page
# #          Given User logs in with "<Role>" credentials
# #         And Doctor Profile's submenu items are displayed
# #         And My Experience page  is displayed
# #         And My Experience item is focused
# #         And user clicks Edit button
# #         And cancel, save, addMore button is visible
# #         And user clicks addMore button
# #         And save button is disabled
# #         And user fills <Licence Number>,<Speciality(ies)>,<Position>,<Start Date>,<Hospital/Clinic>,<End Date>,<Currently Working> with valid input data
# #         Example:

# #             |Licence Number     |Speciality(ies)      |Position                | Hospital/Clinic   | StartDate  | EndDate   | CurrentlyWorking |
# #             |alpha@123          |anaesthesiology      |                        | GMC Jammu         | 11/2016    |           |   on            |
# #             |alpha@123          |anaesthesiology      |Head of Cardiology      |                   | 11/2015    | 11/2018   |   off            |
# #             |alpha@123          |anaesthesiology      |Head of Radiology       | GMC Jammu         | 11/2018    |           |   on             |
# #             |alpha@123          |anaesthesiology      |                        |                   |            |           |                  |

# #         when user clicks cancel button
# #         Then  <Licence Number>,<Speciality(ies)>,<Position>,<Start Date>,<Hospital/Clinic>,<End Date><CurrentlyWorking> should get displayed
# #         And cancel, save, addMore button is invisible

# #         Example:

# #             |Licence Number     |Speciality(ies)      |Position                | Hospital/Clinic   | StartDate  | EndDate   | CurrentlyWorking |
# #             |alpha@123          |anaesthesiology      |Head of anaesthesiology | GMC Jammu         | 11/2016    | 11/2019   |   off            |
# #             |alpha@123          |anaesthesiology      |Head of Cardiology      | GMC Jammu         | 11/2015    | 11/2018   |   off            |
# #             |alpha@123          |anaesthesiology      |Head of Radiology       | GMC Jammu         | 11/2018    |           |   on             |

# #     # https://team-1628225445927.atlassian.net/browse/MYD-388
# #     @Regression
# #     @MYD-388
# #     Scenario Outline: check for functionality of delete icon in My Experience page
# #          Given User logs in with "<Role>" credentials
# #         And Doctor Profile's submenu items are displayed
# #         And My Experience page  is displayed
# #         And My Experience item is focused
# #         And user clicks Edit button
# #         And cancel, save, addMore button is visible
# #         When user clicks delete icon of card
# #         Example:

# #             |Licence Number     |Speciality(ies)      |Position                | Hospital/Clinic   | StartDate  | EndDate   | CurrentlyWorking |DeletIcon clicked
# #             |alpha@123          |anaesthesiology      |                        | GMC Jammu         | 11/2016    |           |   on             | yes
# #             |alpha@123          |anaesthesiology      |Head of Cardiology      |                   | 11/2015    | 11/2018   |   off            |
# #             |alpha@123          |anaesthesiology      |Head of Radiology       | GMC Jammu         | 11/2018    |           |   on             |

# #          Then  <Licence Number>,<Speciality(ies)>,<Position>,<Start Date>,<Hospital/Clinic>,<End Date><CurrentlyWorking> should get displayed

# #         Example:

# #             |Licence Number     |Speciality(ies)      |Position                | Hospital/Clinic   | StartDate  | EndDate   | CurrentlyWorking |
# #             |alpha@123          |anaesthesiology      |Head of Cardiology      |                   | 11/2015    | 11/2018   |   off            |
# #             |alpha@123          |anaesthesiology      |Head of Radiology       | GMC Jammu         | 11/2018    |           |   on             |

# #     # https://team-1628225445927.atlassian.net/browse/MYD-388
# #     @Regression
# #     @MYD-388
# #     Scenario Outline: check for functionality of Currently Working switch in My Experience page
# #          Given User logs in with "<Role>" credentials
# #         And Doctor Profile's submenu items are displayed
# #         And My Experience page  is displayed
# #         And My Experience item is focused
# #         And user clicks Edit button
# #         And cancel, save, addMore button is visible
# #         When user turn on <Currently Working>
# #         Then EndDate should be disabled

# #     # https://team-1628225445927.atlassian.net/browse/MYD-388
# #     @Regression
# #     @MYD-388
# #     Scenario Outline: check input fields for valid data in My Experience page
# #          Given User logs in with "<Role>" credentials
# #         And Doctor Profile's submenu items are displayed
# #         And My Experience page  is displayed
# #         And My Experience item is focused
# #         And user clicks Edit button
# #         And cancel, save, addMore button is visible
# #         And user clicks addMore button
# #         And save button is disabled
# #         When user fills <Licence Number>,<Speciality(ies)>,<Position>,<Start Date>,<Hospital/Clinic>,<End Date>,<Currently Working> with valid input data
# #         Then save button is enabled

# #         Example:

# #             |Licence Number     |Speciality(ies)      |Position                | Hospital/Clinic   | StartDate  | EndDate   | CurrentlyWorking |
# #             |alpha@123          |anaesthesiology      |Head of anaesthesiology | GMC Jammu         | 11/2016    | 11/2019   |   off            |
# #             |alpha@123          |anaesthesiology      |Head of Cardiology      | GMC Jammu         | 11/2015    | 11/2018   |   off            |
# #             |alpha@123          |anaesthesiology      |Head of Radiology       | GMC Jammu         | 11/2018    |           |   on             |

# #     # https://team-1628225445927.atlassian.net/browse/MYD-388
# #     @Regression
# #     @MYD-388
# #     Scenario Outline: check input fields for valid data in My Experience page
# #          Given User logs in with "<Role>" credentials
# #         And Doctor Profile's submenu items are displayed
# #         And My Experience page  is displayed
# #         And My Experience item is focused
# #         And user clicks Edit button
# #         And cancel, save, addMore button is visible
# #         And user clicks addMore button
# #         And save button is disabled
# #         When user fills <Licence Number>,<Speciality(ies)>,<Position>,<Start Date>,<Hospital/Clinic>,<End Date>,<Currently Working> with invalid input data
# #         Then save button should be disabled
# #         And <errormessage> should be displayed

# #         Example:

# #             |Licence Number     |Speciality(ies)      |Position                | Hospital/Clinic   | StartDate  | EndDate   | CurrentlyWorking |errormessage                       |
# #             |                   |anaesthesiology      |Head of anaesthesiology | GMC Jammu         | 11/2016    | 11/2019   |   off            |Please enter valid licences number |
# #             |123                |anaesthesiology      |Head of Cardiology      | GMC Jammu         | 11/2015    | 11/2018   |   off            |Please enter valid licences number |
# #             |@!@##$$%           |anaesthesiology      |Head of Radiology       | GMC Jammu         | 11/2018    |           |   on             |Please enter valid licences number |
# #             |sg                 |anaesthesiology      |Head of Radiology       | GMC Jammu         | 11/2018    |           |   on             |Please enter valid licences number |
# #             |96@34              |anaesthesiology      |Head of Radiology       | GMC Jammu         | 11/2018    |           |   on             |Please enter valid licences number |
# #             |alpha@123          |anaesthesiology      |                        | GMC Jammu         | 11/2018    |           |   on             |Please enter a valid position      |
# #             |alpha@123          |anaesthesiology      |123                     | GMC Jammu         | 11/2018    |           |   on             |Please enter valid licences number |
# #             |alpha@123          |anaesthesiology      |@!@##$$%                | GMC Jammu         | 11/2018    |           |   on             |Please enter valid licences number |
# #             |alpha@123          |anaesthesiology      |sg                      | GMC Jammu         | 11/2018    |           |   on             |Please enter valid licences number |
# #             |alpha@123          |anaesthesiology      |96@34                   | GMC Jammu         | 11/2018    |           |   on             |Please enter valid licences number |
# #             |alpha@123          |anaesthesiology      |Head of Radiology       |                   | 11/2018    |           |   on             |Please enter a valid hospital name |
# #             |alpha@123          |anaesthesiology      |Head of Radiology       |123                | 11/2018    |           |   on             |Please enter a valid hospital name |
# #             |alpha@123          |anaesthesiology      |Head of Radiology       |@!@##$$%           | 11/2018    |           |   on             |Please enter a valid hospital name |
# #             |alpha@123          |anaesthesiology      |Head of Radiology       |sg                 | 11/2018    |           |   on             |Please enter a valid hospital name |
# #             |alpha@123          |anaesthesiology      |Head of Radiology       |96@34              | 11/2018    |           |   on             |Please enter a valid hospital name |
# #             |alpha@123          |anaesthesiology      |Head of Radiology       | GMC Jammu         |            |           |   on             |Please enter a valid date          |
# #             |alpha@123          |anaesthesiology      |Head of Radiology       |96@34              | 11/2018    |           |   off            |Please enter a valid date          |
# #             |alpha@123          |anaesthesiology      |Head of Radiology       |96@34              | 11/2018    | 11/2018   |   off            |Please enter a valid date          |
# #             |alpha@123          |anaesthesiology      |Head of Radiology       |96@34              | 11/2018    | 10/2018   |   off            Please enter a valid date           |
# #             |alpha@123          |anaesthesiology      |Head of Radiology       |96@34              | 11/2018    | 12/2004   |   off            |Please enter a valid date          |
# #             |alpha@123          |anaesthesiology      |Head of Radiology       |96@34              | 123        | 12/2004   |   off            |Please enter a valid date          |
# #             |alpha@123          |anaesthesiology      |Head of Radiology       |96@34              | 11/2018    | 12345     |   off            |Please enter a valid date          |





