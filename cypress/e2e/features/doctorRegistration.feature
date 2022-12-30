Feature: Doctor Registration

  @DORE001 @Sanity @NotAutomated @Regression @DoctorRegistration @Doctor
  Scenario Outline:User navigates to the Doctor Registration and signs up
    Given user navigates to the "<Page Type>" page
    When user enters value "<Name>" in the "fullname" input field
    And user selects checkbox with value "<GenderType>"
    And user enter value in the "Email" input field
    And user enter value in the "mobilenumber" input field
    And user enters value "<Password>" in the "Password" input field
    And user enters value "<Password>" in the "confirm password" input field
    When user clicks on the "register button"
    Then user can view message "Signed up successfully!"
    Examples:
      | Name         | Password    | GenderType | Page Type           |
      | Hunter Brown | 9797@Qwerty | Male       | Doctor Registration |


  # # @DORE002 @DoctorRegistration @Regression @NotAutomated @Doctor
  Scenario Outline:User navigates to the Doctor Registration and signs up with invalid data
    Given user navigates to the "<Page Type>" page
    When user enters value "<Name>" in the "fullname" input field
    And user enters value "<Mobile Number>" in the "mobilenumber" input field
    And user enters value "<Email>" in the "Email" input field
    And user selects checkbox with value "<GenderType>"
    Then user can view message "<ErrorMessage>"

    Examples:
      | Name  | Email       | Mobile Number | Page Type           | ErrorMessage                                 | GenderType |
      | sam.1 | abc@abc.com | 9541108298    | Doctor Registration | Please enter a valid name!                   | Male       |
      | sam+- | abc@abc.com | 9876543211    | Doctor Registration | Please enter a valid name!                   | Male       |
      | sam   | ab.com      | 9541108297    | Doctor Registration | Please enter a valid e-mail address          | Male       |
      | sam   | .com        | 9876543211    | Doctor Registration | Please enter a valid e-mail address          | Male       |
      | sam   | abc@abc.com | 954110829     | Doctor Registration | Please enter a valid 10-digit mobile number! | Male       |
      | sam   | abc@abc.com | 98765432      | Doctor Registration | Please enter a valid 10-digit mobile number! | Male       |

  # # # # # # # # # # # # @DORE003 @DoctorRegistration @Regression @NotAutomated @Doctor
  Scenario Outline:User is not able to register with invalid password
    Given user navigates to the "<Page Type>" page
    When user enters value "<Name>" in the "fullname" input field
    And user selects checkbox with value "<GenderType>"
    And user enter value in the "Email" input field
    And user enter value in the "mobilenumber" input field
    And user enters value "<Password>" in the "Password" input field
    And user enters value "<RePassword>" in the "confirm password" input field
    Then user can view message "<Rule>"

    Examples:
      | Name      | GenderType | Password       | RePassword     | Rule                                                                                                                   | Page Type           |
      | Test User | Male       | Alp@1          | Alp@1          | Must contain at least 6 characters.                                                                                    | Doctor Registration |
      | Test User | Male       | Alpha123       | Alpha123       | Must contain at least one special character.                                                                           | Doctor Registration |
      | Test User | Male       | alpha@123      | alpha@123      | Must contain uppercase letter.                                                                                         | Doctor Registration |
      | Test User | Male       | ALPHA@12       | ALPHA@12       | Must contain lowercase letter.                                                                                         | Doctor Registration |
      | Test User | Male       | 12345678       | 12345678       | Must contain at least one special character.Must contain uppercase letter.Must contain at least one special character. | Doctor Registration |
      | Test User | Male       | Alphaitsystems | Alphaitsystems | Must contain at least one special character.Must contain at least one number.                                          | Doctor Registration |
      | Test User | Male       | !@#$%^         | !@#$%^         | Must contain lowercase letter.Must contain uppercase letter.Must contain at least one number.                          | Doctor Registration |
      | Test User | Male       | Alpha@12       | Alpha@1233     | Passwords must match.                                                                                                  | Doctor Registration |

  # # # # # # # @DORE004 @DoctorRegistration @Regression @NotAutomated @Doctor
  Scenario Outline:User is not able to register with existing mobile number & email
    Given user navigates to the "<Page Type>" page
    When user enters value "<Name>" in the "fullname" input field
    And user selects checkbox with value "<GenderType>"
    And user enter value in the "Email" input field
    And user enter value in the "mobilenumber" input field
    And user enters value "<Password>" in the "Password" input field
    And user enters value "<Password>" in the "confirm password" input field
    When user clicks on the "register button"
    Then user can view message "Signed up successfully!"
    And user enters value in the "mobilenumber" input field
    And user enters value in the "Email" input field
    And user enters value "<Password>" in the "Password" input field
    Then user can view message "<Error Message>"

    Examples:
      | Name         | Password    | GenderType | Page Type           | Error Message                 |
      | Hunter Brown | 9797@Qwerty | Male       | Doctor Registration | Mobile number already exists! |
      # | Hunter Brown | 9797@Qwerty | Male       | Doctor Registration | Email address already exists! |
