module ShoppingCartExtensions
  module CalculatesTotalPrice
    def total_price
      products.map(&:price).inject(&:+) * 0.5
    end
  end
end
