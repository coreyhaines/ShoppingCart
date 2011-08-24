class ShoppingCartProduct < ActiveRecord::Base
  belongs_to :shopping_cart
  belongs_to :product
end
