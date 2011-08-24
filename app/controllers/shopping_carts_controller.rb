class ShoppingCartsController < ApplicationController
  def show
    @shopping_cart = ShoppingCart.find params[:id]
    @available_products = Product.all
  end
end
