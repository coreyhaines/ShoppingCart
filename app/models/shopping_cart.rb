class ShoppingCart < ActiveRecord::Base
  include ShoppingCartExtensions::CalculatesTotalPrice

  has_many :shopping_cart_products, dependent: :destroy
  has_many :products, :through => :shopping_cart_products

end
