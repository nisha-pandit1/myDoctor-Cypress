Feature: Doctor Appointment

    @DOAP001 @MYD-483 @Regression @NotAutomated @Doctor @Appointment
    Scenario Outline: Checking the visibility of UI element
        Given User logs in with "<Role>" credentials
        And user clicks on the "<Page Type>"
        And corresponding page appears with the expected "section":"<Item>"

        Examples:
            | Role   | Page Type         | Item                   |
            | Doctor | Appointments page | My Appointments,Cancel |


    @DOAP002 @MYD-483 @Regression @NotAutomated @Sanity @Doctor
    Scenario Outline: Checking the functionality of cancel button
        Given User logs in with "<Role>" credentials
        And user clicks on the "<Page Type>"
        When user clicks on the "cancel button"
        # And user clicks on the "<Confirmation button>" (NW)
        Then corresponding page appears with the expected "section":"<Item>"

        Examples:
            | Role   | Page Type         | Confirmation button | Item                                            |
            | Doctor | Appointments page | Confirm button      | Patient Patient                                 |
            | Doctor | Appointments page | cancel button       | Patient Patient,Patient Patient,Patient Patient |


    # # @DOAP003 @MYD-483 @Regression @NotAutomated @Doctor @Appointment
    Scenario Outline: Checking the functionality of appointment filter
        Given User logs in with "<Role>" credentials
        And user clicks on the "<Page Type>"
        When user clicks on the "appointment filter field"
        And user clicks on the "<Number>"
        Then user can view list of "all appointments"

        Examples:
            | Role   | Page Type         | Number              |
            | Doctor | Appointments page | appointmentDropdown |


    # # # @DOAP004 @MYD-483 @Regression @NotAutomated @Doctor @Pagination
    Scenario Outline: Checking the functionality of side navigation button
        Given User logs in with "<Role>" credentials
        And user clicks on the "<Page Type>"
        And User is on "<Page>" "pagination page"
        And user "<First Navigation Button>" button is "disabled"
        And user "<Second Navigation Button>" button is "enabled"
        # When user clicks on the "<Second Navigation Button>" (NW)
        # Then User is on "<Second Navigation Button>" "page" (NW)
        And user "<First Navigation Button>" button is "enabled"

        Examples:
            | Role   | Page Type         | Page | First Navigation Button | Second Navigation Button |
            | Doctor | Appointments page | 1    | Previous Button         | Next Button              |
            | Doctor | Appointments page | 1    | Next Button             | Previous Button          |

    # # @DOAP005 @MYD-483 @Regression @NotAutomated @Doctor @Pagination
    Scenario Outline: Checking the functionality of number navigation button
        Given User logs in with "<Role>" credentials
        And user clicks on the "<Page Type>"
        And User is on "<Page>" "pagination page"
        When user clicks on "pagination page" "<Page Number>"
        Then User is on "<Value>" "pagination page"

        Examples:
            | Role   | Page Type         | Page | Page Number | Value |
            | Doctor | Appointments page | 1    | 1           | 1     |


    # # # @DOAP006 @MYD-483 @Regression @NotAutomated @Sanity @Doctor
    Scenario Outline: Checking the functionality of join appointment button
        Given User logs in with "<Role>" credentials
        And user clicks on the "<Page Type>"
        And user checks the consult "<Time>"
        And user checks the consult "<Status>"
        # When user clicks on the "join appointment button"(nW)
        Then corresponding page appears with the expected "section":"<Item>"

        Examples:
            | Role   | Page Type         | Time        | Status          | Item                   |
            # | Doctor | Appointments page | Slot Time   | Enabled Status  | Chats,First patient Name | (nW)
            | Doctor | Appointments page | Slot Time-1 | Disabled Status | My Appointments,Cancel |

