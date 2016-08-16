Feature: In order to shop on the Loblaws site users must be able to add products to their cart
  Scenario: Add product to cart
    Given I am on the Loblaws home page
    When I click on the "link" with the "href" "store-locator"
    And I click on the "first" "button" with the "class" "shop-or-browse-store"
    And I click on the "div" with the "class" "search-button"
    And I write "apples" in the "search-bar" "text field"
    And I hit the "enter" key
    And I click on the "first" "button" with the "class" "btn-add-to-cart"
    Then my shopping cart should update
