defmodule Geom do
  def area(:rectangle, a, b) when a >= 0 and b >= 0 do
   a * b
  end

  def area(:triangle, a, b) when a >= 0 and b >= 0 do
   a * b / 2.0
  end

  def area(:ellipse, a, b) when a >= 0 and b >= 0 do
    a * b * :math.pi
  end

  def area(_, _, _) do
    0
  end
end

ExUnit.start

defmodule MyTest do
  use ExUnit.Case

  test :return_zero do
    assert Geom.area(:pentagon, 3, 4) == 0
    assert Geom.area(:ellipse, -1, 5) == 0
    assert Geom.area(:triangle, 5, -1) == 0
  end
end
