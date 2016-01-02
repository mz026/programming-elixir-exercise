defmodule Chop do
  def guess(answer, low..high) do
    guess_val = div(low + high, 2)

    IO.puts "is it #{guess_val}?"
    test(answer, low..high, guess_val)
  end

  def test(answer, _, guess_val) when guess_val == answer do
    IO.puts answer
  end

  def test(answer, low.._, guess_val) when guess_val > answer do
    guess(answer, low..guess_val)
  end

  def test(answer, _..high, guess_val) when guess_val < answer do
    guess(answer, guess_val..high)
  end

end
