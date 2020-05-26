require_relative '../stock_picker'

describe "stock_picker" do
  it "should return the pair of days representing the best day to buy and best day to sell" do
    expect(stock_picker([12,3,6,9,15, 6,1,10])).to eq([1, 4])
  end
end