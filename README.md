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

## Parse the data:

    mix escript.build
    ./iono_data [url]

## Calculating MUF:
Multiply foF2 by MUF(D), e.g.:

    # YR MO DA  HHMM    foF2 hmF2 MUF(D) D  h'F yF2 fMUF  h'  fxI foF1  foE hmE foEs fbEs  ITEC
    2018 12 23  1615     4.6 238  3.83 3000 205  26  4.5 270  5.3  3.4  2.3 115  2.3 -1.0   3.0
                         ^^^      ^^^^

    4.6 * 3.83 = 17.618 MHz
