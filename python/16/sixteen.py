import math

num = 2**1000
string = str(num)

sum = 0
print string
for i in range(0,len(string)):
  sum += int(string[i:i+1])

print sum
