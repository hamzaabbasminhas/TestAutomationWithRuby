Feature: Delete

  Scenario: User perform delete tuition action
    And User goes to the url of website
    And User login the application
    And User deletes a tutiton
    Then system veirfies weather the tuition is deleted successfully or not
