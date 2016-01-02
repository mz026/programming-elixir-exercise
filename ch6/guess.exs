defmodule Chop do
  def guess(answer, low..high) do
    guess_val = div(low + high, 2)

    IO.puts "is it #{guess_val}?"

    if guess_val == answer do
      IO.puts answer
    else
      if guess_val > answer do
        guess(answer, low..guess_val)
      else
        guess(answer, guess_val..high)
      end
    end
  end


end
