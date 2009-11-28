
def sum(str):
  sum = 0
  for i in range(0,len(str)):
    sum += int(str[i])

  return sum

largest = 0
for a in range(1,100):
  for b in range(1,100):
    string = str(a**b)
    s = sum(string)
    if s > largest:
      largest = s

print largest

