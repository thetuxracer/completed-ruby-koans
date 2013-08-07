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
def triangle(*foo)
	validate_arguments(foo)
	if foo.uniq.size.eql?1
		return :equilateral
	elsif foo.uniq.size.eql?2
		return :isosceles
	elsif foo.uniq.size.eql?3
		return :scalene
	end
  # WRITE THIS CODE
end

def validate_arguments(foo)
	raise TriangleError if foo.min <= 0
	x,y,z = foo.sort
	raise TriangleError if x + y <= z
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
