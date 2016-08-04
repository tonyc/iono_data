defmodule IonoData.Parser do
  def parse(filename) do
    IO.puts "Reading file: #{filename}"

    File.stream!(filename)
    |> Stream.filter_map(&read_line?/1, &IonoData.Record.from_line/1)
    |> Enum.each(&IO.inspect/1)
  end

  defp read_line?(line) do
    non_comments(line) && no_data?(line)
  end

  defp non_comments(line) do
    !String.match?(line, ~r/[:#]/)
  end

  defp no_data?(line) do
    !String.match?(line, ~r/^No data available/)
  end
end
