def caesar_cipher(string, shift=-3)
  @shift = shift  

  def shift_char(char)    
    # shift = -3, left, shift = 3, right
    shifted_num = char.ord + @shift
    shifted_num.chr
  end
  
  shifted_string = string.chars.map { |char| shift_char(char) }  

  # puts shifted_string
  # puts shifted_string.join

  shifted_string.join
end

caesar_cipher('this is a lowercase test')