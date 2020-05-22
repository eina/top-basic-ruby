require_relative '../caesar_cipher'

describe "caesar_cipher" do    
  it "encrypts a single letter with a left shift of 3" do
    expect(caesar_cipher("e")).to eq("b")
  end

  it "expects characters to wrap around the alphabet" do 
    expect(caesar_cipher("b")).to eq("y")
    expect(caesar_cipher("y", 3)).to eq("b")
  end

  it "should encrypt 'hello' to 'ebiil' with a left shift of 3" do
    expect(caesar_cipher("hello")).to eq("ebiil")
  end

  it "should encrypt 'hello world' to 'mjqqt btwqi' with a right shift of 5" do
    expect(caesar_cipher("hello world", 5)).to eq("mjqqt btwqi")
  end

  it "should encrypt 'What a string!' to 'Bmfy f xywnsl!' with a right shift of 5" do
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end
end