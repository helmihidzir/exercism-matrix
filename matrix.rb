class Matrix
  attr_reader :array_numbers

  def initialize(array_numbers)
    @array_numbers = array_numbers
  end

  def rows
    array_numbers.each_line.map { |row| row.split.map { |row| row.to_i  } }
  end

  def columns
    rows.transpose
  end
end