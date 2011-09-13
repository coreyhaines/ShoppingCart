class ShoppingCartsController < ApplicationController
  def index
    @shopping_carts = ShoppingCart.all
  end

  def show
    @shopping_cart = ShoppingCart.find params[:id]
    @available_products = Product.all
    @total_price = @shopping_cart.products.map(&:price).inject(0, &:+)
  end
end
