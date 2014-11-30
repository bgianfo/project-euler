# Question:
#
#   2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
#   What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
#
# Solution:

first = 0..100 |> Enum.map(fn x -> x*x end) |> Enum.sum
second = 0..100 |> Enum.sum
second = second * second

result = second - first

IO.puts "second: #{second} - first: #{first} = #{result}"
