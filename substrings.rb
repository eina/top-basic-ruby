def substrings(matcher, dictionary)
  # create a new hash w/ 0 as the default value for all keys
  @result = Hash.new(0)
  matcher = matcher.downcase().split(" ") 
  @dictionary = dictionary

  def match_and_count(match_string)
    @dictionary.each do |dictionary_string|    
      if match_string.include?(dictionary_string)
        @result[dictionary_string] += 1
      end
    end
  end
  
  matcher.each {|match_string| match_and_count(match_string)}
    
  puts @result
  return @result
  
end