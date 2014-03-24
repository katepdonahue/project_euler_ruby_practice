class Stock
  attr_reader :stock_prices_yesterday

  def initialize(stock_array)
    @stock_prices_yesterday = stock_array
  end

  def best_profit
    # lowest = stock_prices_yesterday["1"]
    # first, the slowest way
    max_diff = 0
    stock_prices_yesterday.each_with_index do |price1, mins1|
      stock_prices_yesterday.each_with_index do |price2, mins2|
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