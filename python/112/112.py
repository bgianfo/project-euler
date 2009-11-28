
def increasing(n):
  cur = int(n[0])
  for c in range(1,len(n)):
    if not int(n[c]) >= cur:
      return False
    cur = int(n[c])

  return True

def decreasing(n):
  cur = int(n[0])
  for c in range(1,len(n)):
    if not int(n[c]) <= cur:
      return False

    cur = int(n[c])

  return True


def bouncy(n):
  string = str(n)
  if increasing(string) or decreasing(string):
    return False

  return True


bouncers = 0
nums = 0

for i in range(1,9000000):
  if bouncy(i):
    bouncers += 1
  nums+=1

  ratio = float(bouncers)/float(nums)
  
  if ratio >= .99:
    print i
    print ratio
    break
 
