# Question
#   The prime factors of 13195 are 5, 7, 13 and 29.
#   What is the largest prime factor of the number 600851475143 ?
#
# Solution:

defmodule Primes do
  @moduledoc """
  Prime factoring functions.
  """
  def factors(n) do
    factors(n, 2, [])
  end

  def factors(1, _, acc) do
    acc
  end

  def factors(n, k, acc) when rem(n, k) == 0 do
    factors(div(n, k), k, acc ++ [k])
  end

  def factors(n, k, acc) do
    factors(n, k+1, acc)
  end

end

ExUnit.start

defmodule PrimeTest do

  use ExUnit.Case, async: true

  test "1" do
    assert Primes.factors(1) == []
  end

  test "2" do
    assert Primes.factors(2) == [2]
  end

  test "3" do
    assert Primes.factors(3) == [3]
  end

  test "4" do
    assert Primes.factors(4) == [2, 2]
  end

  test "6" do
    assert Primes.factors(6) == [2, 3]
  end

  test "8" do
    assert Primes.factors(8) == [2, 2, 2]
  end

  test "9" do
    assert Primes.factors(9) == [3, 3]
  end

  test "27" do
    assert Primes.factors(27) == [3, 3, 3]
  end

  test "625" do
    assert Primes.factors(625) == [5, 5, 5, 5]
  end

  test "901255" do
    assert Primes.factors(901255) == [5, 17, 23, 461]
  end
end

max = Primes.factors( 600851475143 ) |> Enum.max 
IO.puts max
