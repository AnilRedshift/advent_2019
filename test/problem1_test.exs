defmodule Problem1Test1a do
  use ExUnit.Case

  test "handles general case" do
    assert Advent2019.Problem1.solve([12, 14], 1) == 4
  end

  test "mass 1" do
    assert Advent2019.Problem1.solve([1], 1) == 0
  end

  test "mass 1969" do
    assert Advent2019.Problem1.solve([1969], 1) == 654
  end
end

defmodule Problem1Test1b do
  use ExUnit.Case

  test "handles general case" do
    assert Advent2019.Problem1.solve([14], 2) == 2
  end

  test "handles 1969" do
    assert Advent2019.Problem1.solve([1969], 2) == 966
  end
end
