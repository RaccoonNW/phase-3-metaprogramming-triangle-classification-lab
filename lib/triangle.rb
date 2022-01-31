require 'pry'

class Triangle
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    check_valid
    if side_1 == side_2 && side_2 == side_3
      :equilateral
    elsif side_1 == side_2 || side_2 == side_3 || side_1 == side_3
      :isosceles
    elsif side_1 != side_2 || side_2 != side_3 || side_1 != side_3
      :scalene
    end
  end

  def sides_great_zero?
    side_1 > 0 && side_2 > 0 && side_3 > 0
  end

  def valid_triangle?
    side_1 + side_2 > side_3 && side_2 + side_3 > side_1 && side_1 + side_3 > side_2
  end

  def check_valid
    raise TriangleError unless sides_great_zero? && valid_triangle?
  end

  class TriangleError < StandardError
  end




end
