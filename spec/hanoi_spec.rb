require 'hanoi'

describe Hanoi do
  let(:hanoi) { Hanoi.new }
  describe "#initialize" do
    it "initializes the game with 3 arrays" do
      expect(hanoi.first_col).to eq([2,1])
      expect(hanoi.second_col).to eq([])
      expect(hanoi.third_col).to eq([])
    end
  end

  describe "#move" do
    it "moves one disk to another column" do
      hanoi.move(1,2)
      expect(hanoi.first_col).to eq([2])
      expect(hanoi.second_col).to eq([1])
    end
    it "throws an error if bigger disc is moved onto smaller disc" do
      hanoi.move(1,2)
      print hanoi.second_col
      print hanoi.first_col
      expect {hanoi.move(1,2)}.to raise_error("Bad move")
    end
  end

  # describe "#play" do
    # it "loops until won?" do


end
