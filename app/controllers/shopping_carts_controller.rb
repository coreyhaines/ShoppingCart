class ShoppingCartsController < ApplicationController
  def show
    @shopping_cart = ShoppingCart.find params[:id]
    @available_products = Product.all
    @total_price = @shopping_cart.products.map(&:price).inject(&:+)
  end
end
