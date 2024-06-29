stock_array = [17,3,6,9,1,15,2,8,6,1,10, 25]

def stock_picker(stock_array)
  days_to_buy_sell = Array.new(2)
  best_buy_price = 0
  best_sell_price = 0
  difference = 0
  stock_array.each_with_index do |price, index|
    sorted_sliced_array = stock_array[(index + 1)..-1].sort
    puts sorted_sliced_array
    current_price = stock_array[index]

    sorted_sliced_array.each do |price|
      if (price - current_price > difference)
        difference = price - current_price
        best_buy_price = current_price
        best_sell_price = price
      end
    end
  end
  days_to_buy_sell[0] = best_buy_price
  days_to_buy_sell[1] = best_sell_price
  return days_to_buy_sell
end

puts stock_picker(stock_array)
