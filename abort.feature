Feature: Emergency abort
As a safety officer, 
I want an abort mechanism to activate in critical situations
So that the crew and mission can be protected from failure

Scenario Outline: Abort triggered by critical system failure
Given the rocket is in flight
When the "<system>" reports a critical failure
Then the rocket engines should shut down
And the crew capsule should separate from the rocket
And the parachutes should deploy

Examples:
    |   system  |
    |   main engine |
    |   guidance system|