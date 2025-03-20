Feature: Secure User login with failure lockout
As a business analyst, 
I want to implement failure lockout after multiple failed attempts
So that I can mitigate the risk of a scripted brute-force attack

Scenario: Account lockout after multiple failed attempts
    Given a user has an active Account
    And the system allows a maximum of 3 failed login attempts before lockout
    When the user enters an incorrect password for the 3rd consecutive time within 10 minutes
    Then the system locks the Account
    And displays a warning message