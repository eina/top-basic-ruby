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
    expect(substrings("below", dictionary)).to include("below", "low")
  end

  it "should be able to count instances of a substring" do
    dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    expect(substrings("howdy", dictionary)).to include("how" => 1, "howdy" => 1)
  end

  it "should be able to handle multiple words" do
    dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    expect(substrings("Howdy partner, sit down! How's it going?", dictionary)).to eq({ "down" => 1, "how" => 2, "howdy" => 1,"go" => 1, "going" => 1, "it" => 2, "i" => 3, "own" => 1,"part" => 1,"partner" => 1,"sit" => 1 })
  end

end