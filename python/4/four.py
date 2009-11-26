

largest = 0
for i in range(100,999):
  for j in range(100,999):
    string = str(i*j)

    if string[0:3] == (string[3:6])[::-1]:
      if i*j > largest:
        largest = i*j
        print string




print "Greatest: ", largest
