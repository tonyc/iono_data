defmodule Mix.Tasks.ParseIono do
  use Mix.Task

  @shortdoc "Parses Iono Data"
  
  def run(args \\ []) do
    url = List.first(args) || "http://legacy-www.swpc.noaa.gov/ftpdir/lists/iono_day/Boulder_iono.txt"

    IO.puts "******************"
    IO.puts "Fetching #{url}"

    case HTTPoison.get(url) do
      {:ok, response} -> IonoData.Parser.parse(response.body)
    end

  end
end
