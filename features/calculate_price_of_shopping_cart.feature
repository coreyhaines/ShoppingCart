Feature: Calculating the price of my shopping cart
  In order to know if I have enough money for my shopping spree
  As a shopper
  I want to see the total price of my shopping cart

  Background:
    Given the following available products
      | description | price |
      | book       | 10 |
      | video      | 5  |
    Given I have a shopping cart

  Scenario: Choosing a single item
    Given I am on my product selection page
    When I add "book" to my cart
    Then the total price should be 10

  Scenario: Choosing multiple items
    Given I am on my product selection page
    When I add "book" to my cart
    When I add "video" to my cart
    Then the total price should be 15
