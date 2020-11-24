defmodule Advent2019.Solver do
  def solve_1a do
    File.read('input.txt')
    |> elem(1)
    |> String.split()
    |> Advent2019.Parser.parse_as_integers()
    |> Advent2019.Problem1.solve(1)
  end

  def solve_1b do
    File.read('input.txt')
    |> elem(1)
    |> String.split()
    |> Advent2019.Parser.parse_as_integers()
    |> Advent2019.Problem1.solve(2)
  end
end
