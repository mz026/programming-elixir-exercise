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

  def _filter([], _func, selected), do: selected
  def _filter([head|tail], func, selected) do
    if func.(head) do
      _filter(tail, func, [head|selected])
    else
      _filter(tail, func, selected)
    end
  end

end
