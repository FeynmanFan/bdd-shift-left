Feature: Telemetry Monitoring
Monitor real-time data and ensure that it is correct using the simulator.

Scenario: Normal telemetry for velocity
    Given the rocket has launched successfully
    And the telemetry system is active
    When the rocket reaches altitude of 100km
    Then the velocity should be within 7 to 8km per second

Scenario: Normal telemetry for velocity
    Given the rocket has launched successfully
    And the telemetry system is active
    When the rocket reaches altitude of 100km
    Then the velocity should be within 7 to 8km per second

