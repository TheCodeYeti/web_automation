Feature: In order to shop on the Loblaws site users must be able to search for products
  Scenario: Search for apples
    Given I am on the Loblaws home page
    Then I click on the "div" with the "class" "search-button"
    Then I write "apples" in the "search-bar" "text field"
    Then I hit the "enter" key
    Then I click on the "button" with the "data-sort-type" "price-asc"
    Then I wait for "5" seconds
    Then I should see a list of "products" sorted by "price"
