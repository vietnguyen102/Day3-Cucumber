Feature: Login Functionality
    I want to check the Login Functionality
    So I run a BDD testing to make sure it work as I expect

    Background: 
        Given The login page is opened successfully

    @sc1
    Scenario: Login successfully with valid account
    When user input "tomsmith" for the username and "SuperSecretPassword!" for the password
    Then a message "You logged into a secure area!×" should be displayed

    @sc2
    Scenario Outline: Login unsuccesfully with invalid account
    When user input "<username>" for the username and "<password>" for the password
    Then a message "<message>" should be displayed

    Examples:
        | username   | password             | message                    |
        | vietnguyen | SuperSecretPassword! | Your username is invalid!× |
        | tomsmith   | 111111               | Your password is invalid!× |
           
    