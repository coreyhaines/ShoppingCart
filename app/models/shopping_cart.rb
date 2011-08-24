class ShoppingCart < ActiveRecord::Base
  has_many :shopping_cart_products
  has_many :products, :through => :shopping_cart_products
end
