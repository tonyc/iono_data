defmodule IonoData.CLI do
  @default_count 4

  def run() do
    # parse_args(argv)
    filename = (System.argv |> List.first) || "sample_data/Dourbes_iono.txt"
    IO.puts "Using #{filename}"
    IonoData.Parser.parse(filename)
  end

  @doc """
  `argv` can be -h or --help, which returns: help.
  """

  def parse_args(argv) do
    parse = OptionParser.parse(argv, switches: [ help: :boolean],
                                    aliases:  [ h: :help])

    case parse do
      { [ help: true ], _, _ }
        -> :help

      { _, [user, project, count ], _ }
        -> { user, project, count }

      { _, [ user, project], _ }
        -> { user, project, @default_count }

      _ -> :help


    end
  end

end
