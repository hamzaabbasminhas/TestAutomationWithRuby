Feature: Login

  Scenario: User perform Login action
    And User goes to the url of website
    And User enters login details
    And User clicks on login
    Then System verifies the login is done successfully or not