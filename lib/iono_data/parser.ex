defmodule IonoData.Parser do

  def parse(file_contents) do
    file_contents
    |> String.split("\n")
    |> Stream.filter_map(&accept_line?/1, &IonoData.Record.from_line/1)
  end

  defp accept_line?(line) do
    line !== "" && non_comments(line) && data_line?(line)
  end

  defp non_comments(line) do
    !String.match?(line, ~r/[:#]/)
  end

  defp data_line?(line) do
    !String.match?(line, ~r/^No data available/)
  end
end
