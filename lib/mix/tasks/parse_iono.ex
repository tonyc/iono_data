defmodule Mix.Tasks.ParseIono do
  use Mix.Task

  def run(args \\ []) do
    filename = List.first(args) || "sample_data/Dourbes_iono.txt"

    IonoData.Parser.parse(filename)
  end
end