
require 'tdd'

describe "#my_unique" do
  let(:array) { [1,1,2,2,3,4,4,5,6] }
  it "Return only unique elements in array" do
    expect(array.my_unique).to eq([1,2,3,4,5,6])
  end
end

describe "#two_sum" do
  let(:array) {[-1, 0, 2, -2, 1]}
  it "Returns an array of indices where the values equal 0" do
    expect(array.two_sum).to eq([[0, 4], [2, 3]])
  end
end

describe "#my_transpose" do
  let(:array) { [[0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]}
  it "returns an array with the rows and cols swapped" do
    expect(my_transpose(array)).to eq([[0, 3, 6],
      [1, 4, 7],
      [2, 5, 8]])
    end
  end

describe "#stock_picker" do
  let(:array) { [10, 8, 7, 12, 11, 9] }
  it "returns the most profitable days to buy/sell stock" do
    expect(stock_picker(array)).to eq([2, 3])
  end
end 
