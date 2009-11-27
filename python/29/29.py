
values = set()
for a in range(2, 101):
  for b in range(2,101):
    val = a**b
    values.add(val)

print values
print len(values)

