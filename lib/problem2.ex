defmodule Advent2019.Problem2 do
  def solve(program, 0) do
    program = _list_to_map(program)

    execute(program, Map.get(program, 0), 0)
    |> Map.get(0)
  end

  def solve(program, 1) do
    program =
      _list_to_map(program)
      |> Map.put(1, 12)
      |> Map.put(2, 2)

    execute(program, Map.get(program, 0), 0)
    |> Map.get(0)
  end

  def solve(program, 2) do
    program = _list_to_map(program)

    try do
      for i <- 0..99 do
        for j <- 0..99 do
          new_program =
            program
            |> Map.put(1, i)
            |> Map.put(2, j)

          result =
            execute(new_program, Map.get(new_program, 0), 0)
            |> Map.get(0)

          if result == 19_690_720 do
            throw({:result, 100 * i + j})
          end
        end
      end
    catch
      {:result, result} -> result
    end
  end

  def execute(program, 99, _opcode_index) do
    program
  end

  def execute(program, 1, opcode_index) do
    indexA = Map.get(program, opcode_index + 1)
    indexB = Map.get(program, opcode_index + 2)
    indexResult = Map.get(program, opcode_index + 3)
    a = Map.get(program, indexA)
    b = Map.get(program, indexB)
    program = Map.put(program, indexResult, a + b)
    next_opcode_index = opcode_index + 4
    next_opcode = Map.get(program, next_opcode_index)
    execute(program, next_opcode, next_opcode_index)
  end

  def execute(program, 2, opcode_index) do
    indexA = Map.get(program, opcode_index + 1)
    indexB = Map.get(program, opcode_index + 2)
    indexResult = Map.get(program, opcode_index + 3)
    a = Map.get(program, indexA)
    b = Map.get(program, indexB)
    program = Map.put(program, indexResult, a * b)
    next_opcode_index = opcode_index + 4
    next_opcode = Map.get(program, next_opcode_index)
    execute(program, next_opcode, next_opcode_index)
  end

  def _list_to_map(list) do
    Enum.with_index(list)
    |> Enum.into(%{}, fn {x, y} -> {y, x} end)
  end
end
