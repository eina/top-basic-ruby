def caesar_cipher(string, shift=-3)
  @shift = shift  

  def shift_char(char)    
    # shift = -3, left, shift = 3, right
    shifted_num = char.ord + @shift    

    if(char == " ")
      shifted_num = " "
    end
    
    if(shifted_num < 97)      
      distance_from_a = 97 - shifted_num
      shifted_num = 123 - distance_from_a
    end 

    if(shifted_num > 122)      
      distance_from_z = 122 - shifted_num
      shifted_num = 96 + distance_from_z.abs()
    end 

    shifted_num.chr
  end
  
  shifted_string = string.chars.map { |char| shift_char(char) }  

  # puts shifted_string
  # puts shifted_string.join

  shifted_string.join
end

# caesar_cipher('this is a lowercase test')
# caesar_cipher('b')