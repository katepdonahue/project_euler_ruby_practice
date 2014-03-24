class Stock
  attr_reader :stock_prices_yesterday

  def initialize(stock_hash)
    @stock_prices_yesterday = stock_hash
  end

  def best_profit
    # lowest = stock_prices_yesterday["1"]
    # first, the slowest way
    max_diff = 0
    stock_prices_yesterday.each do |mins1, price1|
      stock_prices_yesterday.each do |mins2, price2|
        if mins2 > mins1
          profit = price2 - price1
          if profit > max_diff
            max_diff = profit
          end
        end
      end
    end
    max_diff
  end

end