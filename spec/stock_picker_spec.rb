require_relative '../stock_picker'

describe "stock_picker" do
  it "should return the pair of days representing the best day to buy and best day to sell" do
    expect(stock_picker([12,3,6,9,15, 6,1,10])).to eq([1, 4])
  end  

  it "should return an error when the best day to sell is the day you buy them" do
    expect(stock_picker([10, 8, 6, 4, 2, 0])).to eq("Sorry, looks like you should hold on to those stocks a little longer")
  end 
end