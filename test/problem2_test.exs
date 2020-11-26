defmodule Problem2Tests do
  use ExUnit.Case

  test "99 halts" do
    assert Advent2019.Problem2.solve([99], 0) == 99
  end

  [
    {[1, 9, 10, 3, 2, 3, 11, 0, 99, 30, 40, 50], 3500},
    {[1, 0, 0, 0, 99], 2},
    {[2, 3, 0, 3, 99], 2},
    {[2, 4, 4, 5, 99, 0], 2},
    {[1, 1, 1, 4, 99, 5, 6, 0, 99], 30}
  ]
  |> Enum.each(fn {input, expected} ->
    test_name = Enum.join(input, ",")

    test test_name do
      assert Advent2019.Problem2.solve(unquote(input), 0) == unquote(expected)
    end
  end)
end
