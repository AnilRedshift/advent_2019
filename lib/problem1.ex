defmodule Advent2019.Problem1 do
  def solve(nums) do
    Enum.map(nums, &calculate_fuel/1)
    |> Enum.sum()
  end

  @spec calculate_fuel(number) :: integer
  def calculate_fuel(mass) when mass < 6, do: 0

  def calculate_fuel(mass) do
    floor(mass / 3) - 2
  end
end
