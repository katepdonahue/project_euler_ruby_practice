require 'debugger'

class Stock
  attr_reader :stock_prices_yesterday

  def initialize(stock_array)
    @stock_prices_yesterday = stock_array
  end

  def best_profit
    low_price = stock_prices_yesterday.first
    max_profit = 0
    stock_prices_yesterday[0...-1].each_with_index do |new_price, mins|
      buy_price = [low_price, new_price].min
      sell_price = stock_prices_yesterday[mins+1]
      max_profit = [max_profit, (sell_price - buy_price)].max
    end
    max_profit
  end

end