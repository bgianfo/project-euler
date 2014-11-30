# Question:
#
#  A palindromic number reads the same both ways.
#  The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#
#  Find the largest palindrome made from the product of two 3-digit numbers.
#
# Solution:

defmodule Palindrome do

  def is_palindrome(n) do
    str = Integer.to_string(n)
    rev = String.reverse(str)

    str == rev
  end


  def largest_with_two_three_digit_numbers() do
      for x <- 100..999,
          y <- 100..999,
          is_palindrome(x*y)
      do
          {x, y, x*y}
      end
  end

end

ExUnit.start

defmodule PalindromTest do

  use ExUnit.Case, async: true

  test "is_palindrome" do
    assert Palindrome.is_palindrome(9009)
    assert Palindrome.is_palindrome(11)
    assert Palindrome.is_palindrome(98089)
  end

  test "is_palindrome negative" do
    assert Palindrome.is_palindrome(23) == false
    assert Palindrome.is_palindrome(123) == false
  end

end

max = Palindrome.largest_with_two_three_digit_numbers() |> Enum.max_by(fn x -> elem(x, 2) end)

{x, y, result} = max

IO.puts "X: #{x}, Y: #{y}, Result: #{result}"
