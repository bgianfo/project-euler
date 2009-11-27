
hexers = set()
tri = set()
pent = set()

def trifn(n):
  return n*(n+1)/2 

def pentfn(n):
  return n*(3*n-1)/2

def hexfn(n):
  return n*(2*n-1) 



i = 143
out = False
while True:

  i+=1

  print i
  hexers.add(hexfn(i))
  tri.add(trifn(i))
  pent.add(pentfn(i))

  """
  if (i == 5):
    print "tri: ", tri
    print "pent: ",pent
    print "hex: ",hexers
    break
  """


  for hex in hexers:
    if (hex in tri) and (hex in pent):
      print hex
      out = True
      break

  if out:
    break
        



