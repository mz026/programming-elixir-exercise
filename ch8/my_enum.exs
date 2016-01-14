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

end
