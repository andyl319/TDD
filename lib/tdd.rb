class Array
  def my_unique
    results = []
    self.each do |ele|
      results << ele unless results.include?(ele)
    end
    results
  end

  def two_sum
    results = []
    self.each_with_index do |ele, i|
      (i+1).upto(self.length-1) do |j|
        results << [i, j] if self[i] + self[j] == 0
      end
    end
    results
  end

end

def my_transpose(matrix)
  results = Array.new(matrix.length) { [] }
  0.upto(matrix.length-1) do |i|
    0.upto(matrix[i].length-1) do |j|
      results[j] << matrix[i][j]
    end
  end
  results
end

def stock_picker(stock_prices)
  results = Hash.new
  stock_prices.each_with_index do |ele, i|
    (i+1).upto(stock_prices.length-1) do |j|
      difference = stock_prices[j] - stock_prices[i]
      results[[i, j]] = difference unless difference < 0
    end
  end
  results.max_by{ |k,v| v }.first
  # largest_dif = 0
  # best days = nil
  # results.each do |key, value|
  #   if value > largest_dif
  #     best_days = key
  #   end
  # end
  # best_days
end
