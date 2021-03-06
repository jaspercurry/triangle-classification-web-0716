require 'pry'

class Triangle



  attr_reader :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1.to_f
    @side2 = side2.to_f
    @side3 = side3.to_f
  end

  def kind
    tricheck
    if side1 == side2 && side2 == side3
      :equilateral
    elsif side1 == side2 || side2 == side3 || side1 == side3
      :isosceles
    elsif side1 != side2 && side2 != side3 && side1 != side3
      :scalene
    else
      binding.pry
      raise TriangleError
    end
  end

  def tricheck
    if side1 == 0 || side2 == 0 || side3 == 0
      raise TriangleError
    elsif side1 < 0 || side2 < 0 || side3 < 0
      raise TriangleError
    elsif side1 + side2 > side3 && side2 + side3 > side1 && side3 + side1 > side2
      #elsif side1 + side2 < side3 || side2 + side3 < side1 || side3 + side1 < side2
      # raise TraingleError does not work - why?
      nil
    else
      raise TriangleError
    end
  end
end



class TriangleError < StandardError
end