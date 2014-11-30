# Question:
#
#   2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
#   What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
#
# Solution:

defmodule Five do

  def divs_by_all(n) do
    if (rem(n, 100_000) == 0) do
      IO.puts n
    end

    !(1..21 |> Stream.filter(fn x -> rem(n, x) != 0 end) |> Enum.any?)
  end

end

100..1_000_000_000 |> Stream.filter(fn x -> Five.divs_by_all(x) end) |> Enum.take(1) |> Enum.min |> IO.puts

#IO.puts "Result: #{result}"
