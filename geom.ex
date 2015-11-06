defmodule Geom do
  def area(:rectangle, a, b) do
   a * b
  end

  def area(:triangle, a, b) do
   a * b / 2.0
  end

  def area(:ellipse, a, b) do
    a * b * :math.pi
  end
end

ExUnit.start

defmodule MyTest do
  use ExUnit.Case

  test 'rectangle' do
    assert Geom.area(:rectangle, 2, 10) == 20
  end

  test :triangle do
    assert Geom.area(:triangle, 2, 10) == 10.0
  end

  test :ellipse do
    assert_in_delta Geom.area(:ellipse, 2, 10), 62.8, 0.1
  end  
end
