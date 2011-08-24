require 'spec_helper'

describe ShoppingCart do
  describe "#total_price" do
    it "returns the sum of the products price" do
      cart = ShoppingCart.create
      cart.products << Product.create(:description => "book", :price => 5)
      cart.products << Product.create(:description => "video", :price => 10)
      cart.total_price.should == 15
    end
  end
end
