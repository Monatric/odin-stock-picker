require 'pry-byebug'

def stock_picker(stock_price_per_day)
    stock_price_per_day.each_with_index do |first_lvl_element, first_lvl_index|
        stock_price_per_day.each_with_index do |second_lvl_element, second_lvl_index|
            if second_lvl_index == stock_price_per_day.size - 1
                next
            else
                first_day = first_lvl_element
                second_day = stock_price_per_day[1+second_lvl_index]
                p "the difference of #{first_day} and #{stock_price_per_day[1+second_lvl_index]} is"
                p profit = (first_day - second_day).abs
                # binding.pry
                # next is making a hash and returning a key value pairs
            end
        end
    end

end

p stock_picker([17,3,6,9,15,8,6,1,10])