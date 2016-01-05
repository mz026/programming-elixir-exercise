defmodule Summer do
  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)

  def sum_w_acc(list, total \\ 0)
  def sum_w_acc([], total), do: total
  def sum_w_acc([head | tail], total), do: sum_w_acc(tail, head + total)
end
