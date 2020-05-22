require_relative '../substrings'

describe "substrings" do    
  it "should be able to find the same word in an array" do
    dictionary = ["below", "weather"]
    expect(substrings("below", dictionary)).to include("below")
  end

  it "should be able to find a substring" do
    dictionary = ["low", "weather"]
    expect(substrings("below", dictionary)).to include("low")
  end  

  it "should be able to find multiple substrings" do
    dictionary = ["low", "below", "weather"]
    expect(substrings("below", dictionary)).to include("low", "below")
  end
end