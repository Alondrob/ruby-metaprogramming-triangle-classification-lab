class Triangle


  def initialize(side_1, side_2, side_3)
        @side_1 = side_1
        @side_2 = side_2
        @side_3 = side_3
  end

    def kind
      if    @side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0
            raise TriangleError

      elsif @side_1 >= (@side_2 +@side_3) || @side_2 >= (@side_1 +@side_3) || @side_3 >= (@side_1 +@side_2)
            raise TriangleError
      else  
            if    @side_1 == @side_2 && @side_2 == @side_3
                  :equilateral
            elsif @side_1 == @side_2 || @side_2 == @side_3 || @side_1 == @side_3
                  :isosceles
            else  (@side_1 != @side_2) && (@side_2 != @side_3) && (@side_1 != @side_3)
                  :scalene
            end
      end
    end


  class TriangleError < StandardError
    def message
      puts "This is not a valid triangle"
    end
  end

end

triangle = Triangle.new(3, 4, 5)
p triangle.kind