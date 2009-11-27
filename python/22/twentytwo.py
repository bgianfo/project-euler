import math


def toInt(a):
  return ord(a)-64

total = 0
file = open('names.txt')
for line in file:
  list = line.split(",")
  list.sort()
  for cur, name in enumerate(list):
    print name
    sum = 0
    for i in range(1,len(name)-1):
      string = str(name)
      #print string[i:i+1], " : ", toInt(string[i:i+1])
      sum += toInt(string[i:i+1])
    print sum, " x ", cur+1, "=",sum * (cur+1)
    sum = sum * (cur+1)
    total += sum
  
print "total: ",total 
