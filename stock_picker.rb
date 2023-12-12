require 'pry-byebug'

def stock_picker(array)

  buy_day = 0
  sell_day = 0
  max_profit = 0
  min_price = array[0]

  array.each_with_index do | current_price , today |
    if min_price > current_price && sell_day > today
      min_price = current_price
      buy_day = today
    end
    profit = current_price - min_price
    if profit > max_profit
      max_profit = profit
      sell_day = today
    end
  end

  p [buy_day, sell_day]

end

stock_picker([17,3,6,9,15,8,6,1,10])