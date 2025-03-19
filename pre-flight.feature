Feature: Rocket Launch Preparation
  As a mission controller,
  I want to ensure all pre-launch checks are completed,
  So that the rocket can launch safely and on schedule.

  Scenario: Successful pre-launch checklist completion
    Given the rocket is on the launch pad
    And the fuel tanks are fully loaded
    And the weather conditions are within acceptable limits
    When the mission controller runs the pre-launch checklist
    Then all systems should report "green"
    And the launch countdown should begin

 Scenario: Failed pre-launch checklist due to weather
    Given the rocket is on the launch pad
    And the fuel tanks are fully loaded
    But the weather conditions are outside acceptable limits
    When the mission controller runs the pre-launch checklist
    Then the weather system should report "red"
    And the launch countdown should not start