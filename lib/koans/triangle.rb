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
def triangle(a, b, c)

  validate_triangle a,b,c

  # WRITE THIS CODE
  if a == b && b == c
    :equilateral
  elsif (a == b && b != c) || (a == c && b != c) || (b ==c && a != c)
    :isosceles
  else
    :scalene
  end
end

def validate_triangle(a,b,c)
  if a <= 0 || b <=0 || c <= 0
    raise TriangleError, "<= 0 side not allowed."
  end
  if (a + b <= c) || (a >= b + c) || (b >= a + c)
    raise TriangleError, "A side cannot be greater than the sum of the 2 other sides."
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
