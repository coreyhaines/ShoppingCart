require 'spec_helper'

describe ShoppingCartsController do
  describe "GET /show" do
    before do
      ShoppingCart.stub(:find) { stub(products: []) }
      Product.stub(:all)
    end
    it "shows my shopping cart" do
      cart = stub.as_null_object
      ShoppingCart.stub(:find) { cart }
      get :show, 'id' => '1'
      assigns[:shopping_cart].should == cart
    end

    it "provides access to available products" do
      products = stub
      Product.stub(:all) { products }
      get :show, 'id' => '1'
      assigns[:available_products].should == products
    end

    it "calculates the total of products" do
      products = [stub(price: 10), stub(price: 20)]
      ShoppingCart.stub(:find) { stub(products: products) }
      get :show, 'id' => '1'
      assigns[:total_price].should == 30
    end
  end
end
