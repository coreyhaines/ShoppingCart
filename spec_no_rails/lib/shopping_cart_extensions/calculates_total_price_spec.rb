require 'shopping_cart_extensions/calculates_total_price'


class DummyCartWithProducts
  include ShoppingCartExtensions::CalculatesTotalPrice
end

describe "Calculating Total Price" do
  it "returns the total price of the products" do
    cart = DummyCartWithProducts.new
    products = [stub(price: 5), stub(price: 10)]
    cart.stub(:products) { products }
    cart.total_price.should == 15
  end
end
