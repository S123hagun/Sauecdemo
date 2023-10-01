Feature: Checkout process

  Scenario: Verify user is able to place the order
    Given User logged in to sauce demo with eligible data
    When User should lands on product page and add products
    Then User places the order successfully

