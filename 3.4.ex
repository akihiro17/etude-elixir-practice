defmodule Geom do
  def area({shape, dim1, dim2}) do
    area(shape, dim1, dim2)
  end

  defp area(:rectangle, a, b) when a >= 0 and b >= 0 do
   a * b
  end

  defp area(:triangle, a, b) when a >= 0 and b >= 0 do
   a * b / 2.0
  end

  defp area(:ellipse, a, b) when a >= 0 and b >= 0 do
    a * b * :math.pi
  end

  defp area(_, _, _) do
    0
  end
end

ExUnit.start

defmodule MyTest do
  use ExUnit.Case

  test :triangle do
    assert Geom.area({:triangle, 10, 2}) == 10.0
  end

  test :pentagon do
    assert Geom.area({:pentagon, 7, 3}) == 0
  end
end
