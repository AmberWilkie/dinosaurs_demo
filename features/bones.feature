Feature: A dinosaur has bones

  Background:
    Given the following dinosaur exist:
      | name | museum_number |
      | Jack | 20            |

  Scenario: Create a bone
    Given I visit "Jack" dinosaur's page
    Then I should see "Jack's awesome profile"
    And I shouldn't see "Jack's bones"
    When I click on "Add a bone"
    Then I should see "New bone for Jack"
    When I fill in "Name" with "neckbones"
    And I click "Submit"
    Then I should be on "Jack" dinosaur's page
    And I should see "Jack's bones"
    And I should see "neckbones"
