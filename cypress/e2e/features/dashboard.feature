Feature: Dashboard

  @DA001 @Regression @NotAutomated @Dashboard @Patient @MYD-76
  Scenario Outline: Checking the visibility of UI element
    Given user navigates to the "<Page Type>" page
    And corresponding page appears with the expected "section":"<Item>"
    Examples:
      | Page Type | Item                          |
      | homepage  | 20+ Specialities,100+ Doctors |

  # @DA002 @Regression @Sanity @NotAutomated @Dashboard @SpecialitiesCard @Patient @MYD-76
  Scenario Outline: Check the functionality of Specialities Card
    Given user navigates to the "<Page Type>" page
    When user clicks on the "<Speciality Card>"
    Then corresponding page appears with the expected "Showing results for text":"<Item>"

    Examples:
      | Page Type | Speciality Card        | Item                   |
      | homepage  | First Speciality Card  | First Speciality Card  |
      | homepage  | Second Speciality Card | Second Speciality Card |

  # # @DA003 @Regression @NotAutomated @Dashboard @SpecialitiesCard @Patient @MYD-76
  Scenario Outline: Check the functionality of View all specialities link
    Given user navigates to the "<Page Type>" page
    When user clicks on the "view all specialities"
    Then corresponding page appears with the expected "section":"<Item>"

    Examples:
      | Page Type | Item                                                                       |
      | homepage  | Cosmetology,Development Behavioral Pediatrics,Child ,Diabetology,Audiology |


  # # @DA004 @Regression @Sanity @NotAutomated @Dashboard @DoctorCard @Patient @MYD-76
  Scenario Outline: Check the functionality of Doctor card
    Given user navigates to the "<Page Type>" page
    When user clicks on the "<Doctor Card>"
    Then corresponding page appears with the expected "section":"<Item>"

    Examples:
      | Page Type | Doctor Card       | Item                                            |
      | homepage  | First Doctor Card | Consultation Fee,Specialities,Experience,Review |

  # @DA005 @Regression @NotAutomated @Dashboard @Pagination @Patient @MYD-31
  Scenario Outline: Check the functionality of pagination on Doctor cards by clicking on number
    Given user navigates to the "<Page Type>" page
    And user can view list of "doctor cards"
    And User is on "<Page>" "pagination page"
    When user clicks on "pagination page" "<Button>"
    Then User is on "<Value>" "pagination page"

    Examples:
      | Page Type | Page | Button | Value |
      | homepage  | 1    | 2      | 2     |
      | homepage  | 3    | 2      | 2     |
      | homepage  | 5    | 1      | 1     |