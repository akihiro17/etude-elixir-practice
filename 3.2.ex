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
end

ExUnit.start

defmodule MyTest do
  use ExUnit.Case

  test :no_function do
    assert_raise FunctionClauseError, fn ->
      Geom.area(:rectangle, -3, 4)
    end
  end
end
