
for a in range(1,1000):
  for b in range(1,1000):
    for c in range(1,1000):
      if a < b and b < c:
        if a**2+ b**2 == c**2:
          if (a+b+c) == 1000:
            print "a: %s b: %s c: %s " % (a, b ,c)
            print "product: ", a*b*c
			break
