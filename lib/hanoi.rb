class Hanoi
  attr_accessor :first_col, :second_col, :third_col

  def initialize
    @first_col = [1,2].reverse
    @second_col = []
    @third_col = []
    @columns =   { 1 => @first_col, 2 => @second_col, 3 => @third_col }
  end

  def move(start, dest)
    starter = nil
    unless @columns[dest].empty?
      raise ArgumentError.new("Bad move") if @columns[dest].last < @columns[start].last
    end
    @columns[dest] << @columns[start].pop
  end

  def won?
    return @first_col.empty? && (@second_col.empty? || @third_col.empty?)
  end

  def play
    until won?
      begin
        print "#{@first_col} \n #{@second_col} \n #{@third_col}"
        input = gets.chomp.split(",").map(&:to_i)
        start, dest = input
        move(start, dest)
      rescue ArgumentError => e
        puts "#{e.message}"
        retry
      end
    end
  end
end
