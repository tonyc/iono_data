defmodule IonoData.ParserApp do
  use Application
  require HTTPoison

  def start(_type, _args) do
    import Supervisor.Spec, warn: false
    children = []
    opts = [strategy: :one_for_one, name: IonoData.ParserApp.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def main(args) do
    url = List.first(args) || "http://legacy-www.swpc.noaa.gov/ftpdir/lists/iono_day/Boulder_iono.txt"

    IO.puts "******************"
    IO.puts "Fetching #{url}"

    case HTTPoison.get(url) do
      { :ok, response } ->
        IonoData.Parser.parse(response.body)
        |> Enum.each(&IO.inspect/1)
    end
  end
end
