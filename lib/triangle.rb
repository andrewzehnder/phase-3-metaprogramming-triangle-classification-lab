class Triangle

  attr_accessor :one, :two, :three, :kind

  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end
  
  def kind
    # sum of the lengths of any two sides of a triangle always exceeds the length of the third side
    #Each side must be larger than 0
    if (@one + @two) <= @three || (@two + @three) <= @one || (@three + @one) <= @two
      raise TriangleError

    elsif @one == @two && @one == @three
      self.kind = :equilateral

    elsif @one == @two || @one == @three || @two == @three
      self.kind = :isosceles

    else
      self.kind = :scalene

    end

  end

  class TriangleError < StandardError
    #triangle error code
  end

end
