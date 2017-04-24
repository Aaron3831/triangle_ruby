require('rspec')
require('triangles')

describe('triangles') do
  it("will check if triangle is an equilateral triangle") do
    new_triangle = Triangle.new(10,10,10)
    expect(new_triangle.length3()).to(eq(10))
    end
  end
