# Question:
#
#   The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
#   Find the sum of all the primes below two million.
#
# Solution:

defmodule Primes do

  def is_prime(x) do
    if (rem(x, 10000) == 0) do
      IO.puts x
    end
    case x do
      x when  (x <= 3) -> x > 1
      x when  (rem(x, 2) == 0 or rem(x,3) == 0) -> false
      _ -> !(Stream.iterate(5, &(&1+6)) |> Stream.take_while(&(&1 * &1 <= x)) |> Stream.filter(fn i -> rem(x, i) == 0 or rem(x, i+2) == 0 end) |> Enum.any?)
    end
  end

end

0..2_000_000 |> Stream.filter(fn n -> Primes.is_prime(n) end) |> Enum.sum |> IO.puts
