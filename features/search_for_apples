Feature: In order to shop on the Loblaws site users must be able to search for products
  Scenario: Search for apples and sort by price
    Given I am on the Loblaws home page
    When I click on the "div" with the "class" "search-button"
    And I write "apples" in the "search-bar" "text field"
    And I hit the "enter" key
    And I click on the "button" with the "data-sort-type" "price-asc"
    And I wait for "5" seconds
    Then I should see a list of "products" sorted by "price"

  Scenario: Search for apples and filter for promotions
    Given I am on the Loblaws home page
    When I click on the "div" with the "class" "search-button"
    And I write "apples" in the "search-bar" "text field"
    And I hit the "enter" key
    And I click on the "h5" with the "data-target" ".promotions-filters"
    And I click on the "label" with the "for" "promotions3"
    And I wait for "5" seconds
    Then the amount on the badge and the price reduction match

  Scenario: Search for apples and check the price per kg vs lbs
    Given I am on the Loblaws home page
    When I click on the "div" with the "class" "search-button"
    And I write "apples" in the "search-bar" "text field"
    And I hit the "enter" key
    And I click on the "h5" with the "data-target" ".promotions-filters"
    And I click on the "label" with the "for" "promotions3"
    And I wait for "5" seconds
    And the price in kg is equivalent to the price in lbs
