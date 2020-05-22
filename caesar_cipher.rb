def caesar_cipher(string, shift=-3)
  @shift = shift  

  def shift_char(char)    
    # shift = -3, left, shift = 3, right    

    if(char == " ")
      shifted_char = " "
    else 
      char_num = char.ord
      shifted_num = char.ord + @shift    

      # within 'a' && 'z'
      if(char_num >= 97 && char_num <=122)
        shifted_num = ((shifted_num - 97) % 26) + 97
        # shifted_num = ((char_num - 97 + @shift) % 26) + 97
      end      

      shifted_char = shifted_num.chr
    end
        

    shifted_char
  end
  
  shifted_string = string.chars.map { |char| shift_char(char) }  

  # puts shifted_string
  puts shifted_string.join

  shifted_string.join
end

caesar_cipher('hello world', 5)
# caesar_cipher('b')