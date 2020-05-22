=begin 
  The Odin Project: Caesar Cipher
  left shift (a -> z -> y) if shift is positive
  right shift (b -> c -> d) if shift is negative 

  see /spec/caesar_spec.rb for tests
=end
def caesar_cipher(string, shift=-3)
  @shift = shift  
  
  def shift_char(char)    
    char_num = char.ord
    shifted_num = char.ord + @shift    

    # uppercase
    if(char_num >= 65 && char_num <= 90)
      shifted_num = ((shifted_num - 65) % 26) + 65
      shifted_num.chr    

    # lowercase
    elsif(char_num >= 97 && char_num <= 122)
      shifted_num = ((shifted_num - 97) % 26) + 97
      shifted_num.chr

    # not a letter
    else 
      char
    end        
  end          
  
  # loop through string and map through it
  shifted_string = string.chars.map { |char| shift_char(char) }  

  # join and return
  shifted_string.join

end