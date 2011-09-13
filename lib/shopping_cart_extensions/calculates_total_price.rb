module ShoppingCartExtensions
  module CalculatesTotalPrice
    def total_price
      products.map(&:price).inject(0, &:+)
    end
  end
end
