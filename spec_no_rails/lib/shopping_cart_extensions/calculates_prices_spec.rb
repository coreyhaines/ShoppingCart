require 'shopping_cart_extensions/calculates_prices'

describe ShoppingCartExtensions::CalculatesPrices do
  describe "#total_price" do
    it "returns the sum of the prices" do
      calculator = ShoppingCartExtensions::CalculatesPrices.new
      calculator.total_price([stub(price: 10), stub(price: 5)]).should == 15
    end
  end
end
