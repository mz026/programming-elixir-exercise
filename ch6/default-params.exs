defmodule DefaultTest do
  def func p1, p2 \\ 123

  def func p1, 99 do
    IO.puts "99 one"
    IO.inspect [p1]
  end

  def func p1, p2 do
    IO.puts "default one"
    IO.inspect [p1, p2]
  end
end
