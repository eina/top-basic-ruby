require_relative '../caesar_cipher'

describe "caesar_cipher" do
  before do
    @encrypted = caesar_cipher('test', 5)
  end
  
  it "encrypts a single letter with a left shift of 3" do
    expect(caesar_cipher("e")).to eq("b")
  end

  it "returns something" do 
    expect(@encrypted).not_to be_nil
  end
end