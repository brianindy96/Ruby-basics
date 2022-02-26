def stock_picker(stock)
    #initial price first element in array
    min_price = stock[0]
    min_index = 0
    profit = 0
    #start day 0,0
    days = [0, 0]

    #loop through each stock to get it's price and it's index
    stock.each_with_index do |price, index|
      if price < min_price 
        min_price = price
        min_index = index
      end

      if price - min_price > profit
        profit = price - min_price
        days = [min_index, index]
      end
    end

    days
end


stock_picker([17,3,6,9,15,8,6,1,10])
stock_picker([3,2,6,25,6,26,74,4,23,15,3,6,5])