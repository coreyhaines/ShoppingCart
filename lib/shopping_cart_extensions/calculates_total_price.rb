module ShoppingCartExtensions
  module CalculatesTotalPrice
    def total_price
      products.map(&:price).inject(&:+)
    end
  end
end
