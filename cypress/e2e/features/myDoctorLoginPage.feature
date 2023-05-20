Feature: Login Section

    # # @Regression @Complete
    Scenario Outline: Sucessfully Login with valid credential
        Given user navigates to the "<Page Type>" page
        When user clicks on the "login button"
        And user enters the users "<email>" in the "email" input field
        And user enters the users "<password>" in the "Password" input field
        # And user clicks on the "Submit button"
        Then user should navigate to the "homepage"

        Examples:
            | Page Type | email        | password        |
            | homepage  | DOCTOR_EMAIL | DOCTOR_PASSWORD |
