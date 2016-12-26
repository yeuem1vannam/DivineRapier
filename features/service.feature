Feature: Service
  In order to run a service
  As a CLI
  I want to be as objective as possible


  Scenario: Service invoke docker-compose
    When I run `dr web`
    Then the output should contain "docker-compose!"

  Scenario: Service recognize name
    When I run `dr web`
    Then the output should contain "web!"

  Scenario: Run web service
    When I run `dr web rails c`
    Then the output should contain "rails"
