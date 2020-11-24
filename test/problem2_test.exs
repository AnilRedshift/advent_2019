defmodule Problem2Tests do
  use ExUnit.Case

  test "99 halts" do
    assert Advent2019.Problem2.solve([99]) == [99]
  end
end
