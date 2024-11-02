defmodule AOC.Day1 do
  # 3210097
  def solve_part1(input) do
    input
    |> String.split("\n")
    |> Enum.reduce(0, fn line, acc ->
      acc + get_mass_from_line(line) |> calc_fuel()
    end)
  end

  defp calc_fuel(mass), do: div(mass, 3) - 2

  # 4812287
  def solve_part2(input) do
    input
    |> String.split("\n")
    |> Enum.reduce(0, fn line, acc ->
      acc + get_mass_from_line(line) |> calc_fuel2()
    end)
  end

  defp calc_fuel2(mass, acc) do
    case div(mass, 3) - 2 do
      fuel when fuel <= 0 -> acc
      fuel -> calc_fuel2(fuel, acc + fuel)
    end
  end

  defp get_mass_from_line(""), do: 0
  defp get_mass_from_line(line), do: String.to_integer(line)
end

