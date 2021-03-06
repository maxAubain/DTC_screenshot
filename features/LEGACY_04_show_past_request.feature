Feature: User makes a query to view a past screenshot request
  "As a user,
  In order to see the result of a past request,
  I want the generate screen shots and their corresponding URLs on a page."

  Scenario: Go to a new view that shows images from a named past request
    Given that I visit the index page
    And I click "Screenshot Request"
    And I fill "Name" with "2019/08/02 submission"
    And I fill "URL" with "https://www.google.com/; https://www.google.com/maps/"
    And I click "Submit Request"
    When I should see "Past Request Names"
    Then I should see "2019/08/02 submission"
    When I should see "See screenshot results from past request"
    And I fill "Name" with "2019/08/02 submission"
    And I click "View Results"
    Then I should see "https://www.google.com/"
    And I should see "https://www.google.com/maps/"