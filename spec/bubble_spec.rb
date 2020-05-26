require_relative '../bubble'

describe "bubble" do
  it "should sort an array with two elements from lowest to highest" do
    expect(bubble([6, 3])).to eq([3, 6])
  end

  it "should sort an array with three elements from lowest to highest" do
    expect(bubble([9, 3, 6])).to eq([3, 6, 9])
  end
end