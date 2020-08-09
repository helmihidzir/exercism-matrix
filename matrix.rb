class Matrix
  attr_accessor :array_numbers

  def initialize(array_numbers)
    @array_numbers = array_numbers
  end

  def rows
    array_numbers.split(/\n/).map { |row| row.split(' ').map { |row| row.to_i  } }
  end

  def columns
    array_numbers.split(/\n/).map { |row| row.split(' ').map { |row| row.to_i  } }.transpose
  end
end