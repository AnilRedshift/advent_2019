defmodule Advent2019.Problem1 do
  def solve(nums, _part = 1) do
    Enum.map(nums, &calculate_fuel/1)
    |> Enum.sum()
  end

  def solve(nums, _part = 2) do
    Enum.map(nums, &calculate_recursive_fuel/1)
    |> Enum.sum()
  end

  @spec calculate_recursive_fuel(number) :: integer
  def calculate_recursive_fuel(mass) when mass <= 0, do: 0

  def calculate_recursive_fuel(mass) do
    fuel = calculate_fuel(mass)
    fuel + calculate_recursive_fuel(fuel)
  end

  @spec calculate_fuel(number) :: integer
  def calculate_fuel(mass) when mass < 6, do: 0

  def calculate_fuel(mass) do
    floor(mass / 3) - 2
  end
end
