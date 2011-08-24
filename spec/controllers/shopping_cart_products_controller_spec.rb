require 'spec_helper'

describe ShoppingCartProductsController do

  describe "POST /create" do
    before do
      ShoppingCartProduct.stub(:create)
    end

    it "create the shopping cart product" do
      ShoppingCartProduct.should_receive(:create).with  "shopping_cart_id" => "1", "product" => "10"
      post :create, :shopping_cart_product => { "shopping_cart_id" => "1", "product" => "10"}
    end

    it "redirects to showing the shopping cart" do
      post :create, :shopping_cart_product => { "shopping_cart_id" => "1", "product" => "10"}
      response.should redirect_to(shopping_cart_url(:id => "1"))
    end
  end

end
