Feature: User can comment on articles
  As a reader
  In order to express my opions
  I would like to be able to comment on an article

Background:
  Given the following articles exist
    | title                | content                          | author |
    | A breaking news item | Some really breaking action      | Thomas |
    | Learn Rails 5        | Build awesome rails applications | Faraz  |

Scenario: User adds a comment
  Given I visit the site
  And I click on "Learn Rails 5"
  And show me the page
  And I fill in "Comment" with "Green is good"
  And I fill in "Email" with "Holger@test.com"
  And I click on "Submit Comment"
  Then I should see "Your comment has been succesfully created"
  And I should see "Holger@test.com"
  And I should see "Green id good"
