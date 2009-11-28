
#
def palindrome(phrase):
  return (phrase == phrase[::-1])

def lynch(n, iter):
  n2 = int(str(n)[::-1])

  if iter >= 50:
    return True
  elif palindrome(str(n+n2)):
    return False

  return lynch(n2+n,iter+1)

num = 0
for i in range(1,10001):
  if lynch(i,0):
    num += 1

print num
