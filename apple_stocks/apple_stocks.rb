class Stock
  attr_reader :stock_prices_yesterday

  def initialize(stock_array)
    @stock_prices_yesterday = stock_array
  end

  def best_profit
    low_price = stock_prices_yesterday.first
    max_diff = 0
    stock_prices_yesterday.each_with_index do |price1, mins1|
      if price1 < low_price || mins1 == 0
        stock_prices_yesterday[mins1+1..-1].each do |price2|
          profit = price2 - price1
          max_diff = profit if profit > max_diff
        end
        low_price = price1
      end
    end
    max_diff
  end

end