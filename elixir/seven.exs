# Question
#
#  By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#  What is the 10,001st prime number?
#
# Solution:

defmodule Primes do

  def is_prime(x) do
    case x do
      x when  (x <= 3) -> x > 1
      x when  (rem(x, 2) == 0 or rem(x,3) == 0) -> false
      _ -> !(Stream.iterate(5, &(&1+6)) |> Stream.take_while(&(&1 * &1 <= x)) |> Stream.filter(fn i -> rem(x, i) == 0 or rem(x, i+2) == 0 end) |> Enum.any?)
    end
  end

end

Stream.iterate(0, &(&1 + 1)) |> Stream.filter(fn n -> Primes.is_prime(n) end) |> Enum.at(10001-1) |> IO.puts
