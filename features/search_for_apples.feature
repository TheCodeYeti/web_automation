Feature: In order to shop on the Loblaws site users must be able to search for products
  Scenario: Search for apples
    Given I am on the Loblaws home page
    Then I click on the "search-button" "div"
    Then I write "apples" in the "search-bar" "text field"
    Then I hit the "enter" key
    Then I wait for the "page-search-results" "div" to load
    Then I click on the "price-asc" "button"
    Then I should see a list of "products" sorted by "price"
