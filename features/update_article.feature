Feature: in order to please users I want to be able to edit my posts
  As a blogger
  In order to keep my content accurate
  I would like to be able to edit my articles

  Background:
    Given The following article exists
    | title         |  content      |
    | Green is good |  Always green |

  Scenario: Blogger should be able to edit post
    Given We have written a article about "Green is good"
    And visit the "/articles/Greenisgood" page
    And I click "Edit" button
    Then I will be directed to the edit page
    And I fill in "title" with "Green is awesome"
    And I fill in "content" with "Always green, Always green, Always green"
    And I click "Save" button
    Then I will be directed to the "Green is awesome" page
    And I should see "Green is awesome."
    And I should see "Always green, Always green, Always green"