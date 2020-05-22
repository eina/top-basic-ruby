require_relative '../substrings'

describe "substrings" do  
  it "should be able to find the same word in an array" do
    dictionary = ["below", "weather"]
    expect(substrings("below", dictionary)).to eq("below" => 1)
  end

  it "should be able to find a substring" do
    dictionary = ["low", "weather"]
    expect(substrings("below", dictionary)).to eq("low" => 1)
  end  
end