multiples = fn x -> rem(x,3) == 0 || rem(x,5) == 0 end
sum = 1..999 |> Enum.filter(multiples) |> Enum.sum
IO.puts sum

