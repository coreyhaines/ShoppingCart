module ShoppingCartExtensions
  class CalculatesPrices
    def total_price(things_with_prices)
      things_with_prices.map(&:price).inject(&:+)
    end
  end
end
