defmodule IonoData.CLI do
  @default_count 4

  def run(argv) do
    parse_args(argv)
    IO.puts "Hi"
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
