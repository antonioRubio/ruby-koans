# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def less_than_zero(a, b, c)
	return (a < 0 or b < 0 or c < 0)
end

def wrong_sum_triangle_sides(a, b, c)
	return ((a + b + c <= 0) and ((a + b < c) or (a + c < b) or (c + b < a)))
end

def error_triangle(a, b, c)
	return  (less_than_zero(a, b,c) or wrong_sum_triangle_sides(a, b, c))
end

def triangle(a, b, c)
	if error_triangle(a, b, c)
		raise TriangleError
	end
	if a == b and b == c
    	:equilateral 
  	elsif a == b or b == c or a == c
    	:isosceles
  	else
    	:scalene    
  	end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
