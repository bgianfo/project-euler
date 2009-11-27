import math

def fact(x): return (1 if x==0 else x * fact(x-1))

num = fact(100)
string = str(num)

sum = 0
print string
for i in range(0,len(string)):
  sum += int(string[i:i+1])

print sum
