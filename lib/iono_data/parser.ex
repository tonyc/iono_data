defmodule IonoData.Parser do
  def parse(filename) do
    IO.puts "Reading file: #{filename}"

    File.stream!(filename)
    |> Stream.filter_map(&non_comments/1, &IonoData.Record.from_line/1)
    |> Enum.each(&IO.inspect/1)
  end

  defp non_comments(line) do
    !String.match?(line, ~r/[:#]/)
  end
end
