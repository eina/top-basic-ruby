require_relative '../substrings'

describe "substrings" do  
  it "should be able to find the same word in an array" do
    dictionary = ["meh", "weather"]
    expect(substrings("below", dictionary)).to eq("below")
  end

  it "should be able to find a substring" do
    dictionary = ["low", "weather"]
    expect(substrings("below", dictionary)).to eq("low")
  end  
end