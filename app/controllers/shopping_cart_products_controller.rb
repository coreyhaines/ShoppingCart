class ShoppingCartProductsController < ApplicationController
  def create
    ShoppingCartProduct.create params[:shopping_cart_product]
    redirect_to shopping_cart_url(:id => "1")
  end
end
