class Triangle
  define_method(:initialize) do |length1, length2, length3|
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  define_method(:length1) do
    @length1
  end

  define_method(:length2) do
    @length2
  end

  define_method(:length3) do
    @length3
  end

  define_method(:equilateral?)do
    @length1.eql?(@length2)
    @length3.eql?(@length)
  end
end
