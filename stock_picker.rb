def stock_picker(stonks)  
  sum = 0;
  result = [];

  stonks.each_with_index do |stonk, idx|    
    stonks[idx + 1..-1].each_with_index do |next_days_stonk, next_idx|
      profit = next_days_stonk - stonk      
      if profit > sum        
        sum = profit        
        # add two: +1 for 0 index and +1 for starting at stonks's 2nd element
        result = [idx, next_idx + 2]      
      end
      # puts "idx: #{idx}, next day index: #{next_idx + 2}"
      puts "tomorrow: #{next_days_stonk} - today: #{stonk} = #{next_days_stonk - stonk}"
    end
  end
  
  # if result is empty, it means there were no good days to buy
  result.size == 0 ? "Sorry, looks like you should hold on to those stocks a little longer" : result  

end

# p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
# p stock_picker([2, 4, 6, 8, 10])
# p stock_picker([10, 8, 6, 4, 2, 0])