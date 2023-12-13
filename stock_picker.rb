require 'pry-byebug'

def stock_picker(array)

  buy_day = 0
  sell_day = 0
  max_profit = 0

  array.each_with_index do | l_price , l_day | #buy
    array.each_with_index do | r_price , r_day | #sell
      profit = r_price - l_price
      if profit > max_profit && r_day > l_day
        max_profit = profit
        buy_day = l_day
        sell_day = r_day
      end
    end
  end

  p [buy_day, sell_day]

end

stock_picker([17,3,6,9,15,8,6,1,10])
