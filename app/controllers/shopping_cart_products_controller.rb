class ShoppingCartProductsController < ApplicationController
  def create
    product = ShoppingCartProduct.create params[:shopping_cart_product]
    redirect_to shopping_cart_url(id: product.shopping_cart_id)
  end
end
