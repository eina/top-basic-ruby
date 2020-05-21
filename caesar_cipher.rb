def caesar_cipher(string, shift=-3)
  @shift = shift  

  def shift_char(char)    
    # shift = -3, left, shift = 3, right    

    if(char == " ")
      shifted_num = " "
    else 
      shifted_num = char.ord + @shift    
      if(shifted_num < 97)      
        distance_from_a = 97 - shifted_num
        shifted_num = 123 - distance_from_a
      end 

      if(shifted_num > 122)      
        distance_from_z = 122 - shifted_num
        shifted_num = 96 + distance_from_z.abs()
      end 
    end
        

    shifted_num.chr
  end
  
  shifted_string = string.chars.map { |char| shift_char(char) }  

  # puts shifted_string
  puts shifted_string.join

  shifted_string.join
end

caesar_cipher('hello world', 5)
# caesar_cipher('b')