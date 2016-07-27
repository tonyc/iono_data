defmodule IonoData.Record do

  # YR MO DA  HHMM    foF2 hmF2 MUF(D) D  h'F yF2 fMUF  h'  fxI foF1  foE hmE foEs fbEs  ITEC
  #-------------------------------------------------------------------------------------------
  # 2016 06 20  0000     4.5 250  2.98   -1 250  89  4.0 348  5.2 -1.0 -1.0  -1  2.2  1.7   5.1
  def from_line(line) do
    [year, month, day, time, f_of_f2, _, muf_d | _] = String.strip(line) |> String.split(~r/\ +/)

    IO.puts "f_of_f2: #{f_of_f2}"
    IO.puts "muf_d: #{muf_d}"

    {hours, mins} = String.split_at(time, 2)

    parsed_f_of_f2 = String.to_float(f_of_f2)
    parsed_muf_d = String.to_float(muf_d)
    
    muf_3k = parsed_muf_d * parsed_muf_d

    {IonoRecord, 
      %{date: %{year: year, month: month, day: day},
        time: %{hours: hours, mins: mins},
        f_of_f2: parsed_f_of_f2,
        muf_d: parsed_muf_d,
        muf_3k: muf_3k
      }
    }
  end
end
