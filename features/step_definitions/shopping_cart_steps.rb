Given /^I have a shopping cart$/ do
  ShoppingCart.create
end

Given /^the following available products$/ do |table|
  table.hashes.each do |product_info|
    Product.create product_info
  end
end

When /^I add "([^"]*)" to my cart$/ do |item_to_add|
  product = Product.find_by_description item_to_add
  within("#product_#{product.id}") do
    click_button "Add to cart"
  end
end

Then /^the total price should be (\d+)$/ do |total_price|
  within("#total_price") do
    page.should have_content(total_price)
  end
end

