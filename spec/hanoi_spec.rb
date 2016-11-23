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
      expect {hanoi.move(1,2)}.to raise_error("Bad move")
    end
  end

  describe "#won" do
    it "returns true when game is over?" do
      hanoi.move(1,2)
      hanoi.move(1,3)
      hanoi.move(2, 3)
      expect(hanoi.won?).to be true
    end
  end


end
