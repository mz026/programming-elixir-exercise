defmodule Summer do
  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)

  def sum_w_acc(list, total \\ 0)
  def sum_w_acc([], total), do: total
  def sum_w_acc([head | tail], total), do: sum_w_acc(tail, head + total)

  def map([], _func), do: []
  def map([head | tail], func), do: [func.(head) | map(tail, func)]

  def mapsum list, func do
    l = map(list, func)
    sum(l)
  end

  def max([head | tail]), do: _max(tail, head)
  defp _max([], m), do: m
  defp _max([head | tail], local) when head > local, do: _max(tail, head)
  defp _max([head | tail], local) when head <= local, do: _max(tail, local)

  def caesar([head | tail], n) when head + n > ?z, do: [head + n - 26 | caesar(tail, n)]
  def caesar([head | tail], n) when head + n < ?z, do: [head + n | caesar(tail, n)]
  def caesar([], _n), do: []
end
