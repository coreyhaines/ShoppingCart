class ShoppingCart < ActiveRecord::Base
  has_many :shopping_cart_products, dependent: :destroy
  has_many :products, :through => :shopping_cart_products

  def total_price
    products.map(&:price).inject(0, &:+)
  end
end
