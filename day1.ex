defmodule AOC.Day1 do
  # 3210097
  def solve_part1(input) do
    input
    |> String.split("\n")
    |> Enum.reduce(0, fn line, acc -> acc + calc_fuel(line) end)
  end

  defp calc_fuel(""), do: 0
  defp calc_fuel(line) when is_binary(line) do
    String.to_integer(line) |> calc_fuel()
  end

  defp calc_fuel(mass) when is_integer(mass) do
    div(mass, 3) - 2
  end

  # 4812287
  def solve_part2(input) do
    input
    |> String.split("\n")
    |> Enum.reduce(0, fn line, acc -> acc + calc_fuel2(line) end)
  end

  defp calc_fuel2(""), do: 0
  defp calc_fuel2(line), do: String.to_integer(line) |> calc_fuel2(0)

  defp calc_fuel2(mass, acc) do
    case div(mass, 3) - 2 do
      fuel when fuel <= 0 -> acc
      fuel -> calc_fuel2(fuel, acc + fuel)
    end
  end
end

