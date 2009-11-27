def fib(n):
  a, b = 0, 1
  for i in range(n):
    a, b = b, a + b
  return a


i = 0
while True:
  i+= 1

  string = str(fib(i))

  if (len(string) == 1000):
    print i, string
    break
