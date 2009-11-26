
sum_of_squares = 0
for i in range(1,101):
  sum_of_squares += i**2


sum = 0
for i in range(1,101):
  print i
  sum += i

sqr_sum = sum**2

print sqr_sum - sum_of_squares 
