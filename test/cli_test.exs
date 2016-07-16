defmodule CliTest do
  use ExUnit.Case

  doctest IonoData

  import IonoData.CLI, only: [ parse_args: 1 ]

  test ":help returns by option parsing with -h and --help options" do
    assert parse_args(["-h", "anything"]) == :help
    assert parse_args(["--help", "anything"]) == :help
  end
end
