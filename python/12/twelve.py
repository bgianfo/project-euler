

def triangle(n):
  return sum(xrange(n+1))

def divisorsfn(n, dup = False):
  divisors = []
  i = 0
  if n == 1:
    return {1: 1}
  while 1:
    i += 1
    if dup:
      break
    if i == n:
      break
    if n % i == 0:
      divisors[i:i+1] = [i]
  return divisors


i = 0
while True:

  i+=1

  numsum = triangle(i)

  divs = divisorsfn(numsum)
  size = len(divs)
  print numsum, size
  if size >= 500:
    print numsum
    break
