defmodule MyEnum do
  def all?([], _func), do: true
  def all? [head | tail], func do
    func.(head) && all?(tail, func)
  end

  def each([], _func), do: nil
  def each list = [head|tail], func do
    func.(head)
    each(tail, func)
    list
  end

  def filter(list, func) do
    Enum.reverse(_filter(list, func, []))
  end

  defp _filter([], _func, selected), do: selected
  defp _filter([head|tail], func, selected) do
    if func.(head) do
      _filter(tail, func, [head|selected])
    else
      _filter(tail, func, selected)
    end
  end

  def split(list, number) do
    _split(list, number, [])
  end

  defp _split([head|tail], number, current_left) when length(current_left) < number do
    _split(tail, number, [head|current_left])
  end
  defp _split(list, number, current_left) when length(current_left) >= number do
    { Enum.reverse(current_left), list }
  end

  def take list, num do
    Enum.reverse(_take(list, num))
  end

  defp _take list, num, current \\ []
  defp _take([head|tail], num, current) when length(current) < num do
    _take(tail, num, [head|current])
  end
  defp _take(_list, num, current) when length(current) >= num do
    current
  end

  def flatten([]), do: []

  def flatten([head|tail]) do
    Enum.concat(flatten(head), flatten(tail))
  end

  def flatten(el), do: [ el ]

end
