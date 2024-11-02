defmodule AOC.Solve do
  alias AOC.Day1

  def main() do
    System.argv() |> do_main()
  end

  defp do_main([day, input_file]) do
    file_content = File.read!(input_file)
    solve(day, file_content) |> show_solutions()
  end

  defp do_main(_args) do
    IO.puts("Usage: elixir solve.exs <day_number> <input_file>")
  end

  defp solve("1", input), do: {Day1.solve_part1(input), Day1.solve_part2(input)}
  defp solve(day, _input), do: IO.puts("Unknown AOC day: #{day}")

  defp show_solutions({part1, part2}) do
    IO.puts("Part 1: #{part1}\nPart 2: #{part2}")
  end
end

AOC.Solve.main()

