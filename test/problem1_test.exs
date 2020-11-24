defmodule Problem1Test do
  use ExUnit.Case

  test "handles general case" do
    assert Advent2019.Problem1.solve([12, 14]) == 4
  end

  test "mass 1" do
    assert Advent2019.Problem1.solve([1]) == 0
  end

  test "mass 1969" do
    assert Advent2019.Problem1.solve([1969]) == 654
  end
end
