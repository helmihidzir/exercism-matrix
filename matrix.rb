class Matrix
  attr_reader :array_numbers

  def initialize(array_numbers)
    @array_numbers = array_numbers
  end

  def rows
    array_numbers.each_line.map do |row|
      row.split.map do |row|
        row.to_i
      end
    end
  end

  def columns
    rows.transpose
  end
end