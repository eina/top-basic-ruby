def substrings(matcher, dictionary)  
  dictionary.each_with_index do |val, idx|
    puts matcher[val]
    return matcher[val]
  end
  
end