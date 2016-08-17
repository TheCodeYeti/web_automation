Feature: In order to shop on the Loblaws site users must be able to start a new order
  Scenario: start a new order with a store
    Given I am on the Loblaws home page
    When I click on the "button" with the "class" "trigger-store-selector-modal"
    And I wait for "6" seconds
    And I write "M5E 1Z2" in the "enter-new-search-term" "text field"
    And I hit the "enter" key
    And I wait for "6 " seconds
    And I note the name and address for store "1079"
    And I click on the "link" with the "data-store-id" "1079"
    And I wait for "5" seconds
    Then the name and address should match the previous page
