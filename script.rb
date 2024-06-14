require 'pry-byebug'

def stock_picker(stock_price_per_day)
    hash = Hash.new
    stock_price_per_day.each_with_index do |first_lvl_element, first_lvl_index|
        stock_price_per_day.each_with_index do |second_lvl_element, second_lvl_index|
            if second_lvl_index == stock_price_per_day.size - 1 || second_lvl_index < first_lvl_index
                next
            else
                first_day = first_lvl_element
                second_day = stock_price_per_day[1+second_lvl_index]
                profit = second_day - first_day
                
                hash[[first_lvl_index, 1+second_lvl_index]] = profit
            end
        end
    end
    hash.key(hash.values.max)
end

p stock_picker([17,3,6,9,15,8,6,1,10])