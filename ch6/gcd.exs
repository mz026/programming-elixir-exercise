defmodule Exercise do
  def gcd(x, 0), do: x
  def gcd(x, y) do
    if x > y do
      larger = x
      smaller = y
    else
      larger = y
      smaller = x
    end

    gcd(smaller, rem(larger, smaller))
  end
end
