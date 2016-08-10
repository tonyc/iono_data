defmodule IonoData.Mixfile do
  use Mix.Project

  def project do
    [app: :iono_data,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     escript: escript,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [
      applications: [:logger, :postgrex, :httpoison],
      mod: { IonoData, [] }
    ]
  end

  def escript do
    [main_module: IonoData.ParserApp]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      { :ecto, "~> 2.0" },
      { :postgrex, "0.11.2" },
      { :httpoison, "0.9.0" }
    ]
  end
end
