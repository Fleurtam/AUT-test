Feature: In order to please users I want to be able to edit my posts
  As a blogger
  In order to keep my content accurate
  I would like to be able to edit my articles

  Background:
    Given the following articles exist
    | title         |  content      |
    | Green is good |  Always green |

  Scenario: Blogger should be able to edit post
    And I visit the "Green is good" article page
    And I click "Edit" button
    And I fill in "Title" with "Green is awesome"
    And I fill in "Content" with "Always green, Always green, Always green"
    Then show me the page
    And I click "Update Article" button
    Then I will be directed to the "Green is awesome" page
    And I should see "Green is awesome"
    And I should see "Always green, Always green, Always green"