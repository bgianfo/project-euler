def fact(x):
 if x == 0:
    return 1
 return x * fact(x - 1)


def thing( n, r ):
  return fact(n)/(fact(r)*fact(n-r))

sum = 0
for n in range(101):
  print n
  for r in range(1,n+1):
    if (thing(n,r) > 1000000):
      sum += 1

print sum
