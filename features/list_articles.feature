Feature: List articles on the landing page
  As a visitor,
  when I visit the landing page of the application
  i would like to see a list of all articles

  Scenario: View list of articles on the landing page
    Given The following articles exists
    | title                | content                         |
    | A breaking news item | Some really breaking action     |
    | Learn Rails 5        | Build awesome rails application |
    When I visit the site
    Then I should see "A breaking news item"
    And I should see "Some really breaking action"
    And I should see "Learn Rails 5"
    And I should see "Build awesome rails application"