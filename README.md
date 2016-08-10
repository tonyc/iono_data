# IonoData

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add iono_data to your list of dependencies in `mix.exs`:

        def deps do
          [{:iono_data, "~> 0.0.1"}]
        end

  2. Ensure iono_data is started before your application:

        def application do
          [applications: [:iono_data]]
        end

## Mix tasks
  * parse data:
      mix parse_iono
