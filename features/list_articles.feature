Feature: List articles on the landing page
  As a visitor,
  when I visit the landing page of the application
  i would like to see a list of all articles

  Scenario: View list of articles on the landing page
    When I visit the site
    Then I should see "A breaking news item"
    And I should see "Some really breaking action"