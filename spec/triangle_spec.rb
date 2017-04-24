require('rspec')
require('triangles')

describe('triangles') do
  it("will check length3") do
    new_triangle = Triangle.new(10,10,10)
    expect(new_triangle.length3()).to(eq(10))
    end
  it("it will check if a triangle is equilateral")  do
    new_triangle = Triangle.new(5, 5, 5)
    expect(new_triangle.equilateral?()).to(eq(true))
  end
  it("it will check if a triangle is an isosceles with length1 and length2 being equal")  do
    new_triangle = Triangle.new(5, 5, 6)
    expect(new_triangle.isosceles?()).to(eq(true))
  end
  it("it will check if a triangle is an isosceles with length2 and length3 being equal")  do
    new_triangle = Triangle.new(6, 5, 5)
    expect(new_triangle.isosceles?()).to(eq(true))
  end
  it("it will check if a triangle is an isosceles with length1 and length3 being equal")  do
    new_triangle = Triangle.new(5, 6, 5)
    expect(new_triangle.isosceles?()).to(eq(true))
  end
  it("it will check if none of the sides are equal")  do
    new_triangle = Triangle.new(5, 6, 7)
    expect(new_triangle.scalene?()).to(eq(true))
  end
  it("it will check if the sum of the lengths of any two sides of a triangle is less than or equal to the length of the third side")  do
    new_triangle = Triangle.new(3, 3, 6)
    expect(new_triangle.not_a_triangle?()).to(eq(true))
  end
  it("it will check if the sum of the lengths of any two sides of a triangle is less than or equal to the length of the third side")  do
    new_triangle = Triangle.new(3, 6, 3)
    expect(new_triangle.not_a_triangle?()).to(eq(true))
  end
  it("it will check if the sum of the lengths of any two sides of a triangle is less than or equal to the length of the third side")  do
    new_triangle = Triangle.new(6, 3, 3)
    expect(new_triangle.not_a_triangle?()).to(eq(true))
  end
end
