defmodule Mix.Tasks.ParseIono do
  use Mix.Task

  @shortdoc "Parses Iono Data"
  
  def run(args \\ []) do
    filename = List.first(args) || "sample_data/Dourbes_iono.txt"

    IonoData.Parser.parse(filename)
  end
end