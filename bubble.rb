# n - 1, where n is the number of elements
# the largest bubble up in the right side

def bubble(sort_me)    
  loop do
    swapped = false
    # -2: n - 1 + 1 for the next index
    0.upto(sort_me.size - 2) do |idx|
      if sort_me[idx] > sort_me[idx + 1]        
        sort_me[idx], sort_me[idx + 1] = sort_me[idx + 1], sort_me[idx]                
        swapped = true
      end
    end
    break unless swapped
  end    
    
  sort_me
end

# p bubble([6, 3])
p bubble([6, 3, 9])