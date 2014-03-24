require './apple_stocks'

# I have an array stockPricesYesterday where the keys 
# are the number of minutes into the day (starting with midnight) 
# and the values are the price of Apple stock at that time. 
# For example, the stock cost $500 at 1am, so stockPricesYesterday[60] = 500.
# Write an efficient algorithm for computing the best profit 
# I could have made from 1 purchase and 1 sale of an Apple stock yesterday.


describe Stock do

  describe "#best_profit" do

    it "should calculate the largest difference between two elements in the hash" do
      stock_hash = {"1" => 500, "2" => 600, "3" => 700}
      apple_stocks = Stock.new(stock_hash)
      expect(apple_stocks.best_profit).to eq(200)
    end

    it "should not calculate a difference if the larger value comes earlier in the day" do
      stock_hash = {"1" => 700, "2" => 600, "3" => 650}
      apple_stocks = Stock.new(stock_hash)
      expect(apple_stocks.best_profit).to eq(50)
    end

    it "should return 0 if the stock is declining throughout the day" do
      stock_hash = {"1" => 700, "2" => 600, "3" => 500}
      apple_stocks = Stock.new(stock_hash)
      expect(apple_stocks.best_profit).to eq(0)
    end

  end

  
end