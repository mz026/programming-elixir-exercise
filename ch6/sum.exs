defmodule Exersice do
  def sum(0), do: 0
  def sum(1), do: 1
  def sum(n), do: n + sum_from_1(n-1)
end
