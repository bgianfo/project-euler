#include <iostream>
#include <ostream>


bool even(int i)
{
  return i % 2 == 0;
}

int functor(int i, int call)
{
  if (i == 1)
  { 
    return 1+call;  
  }
  else if (even(i))
  {
    return functor( i/2, 1 + call);
  }
  else
  {
    return functor( 3*i+1, 1 + call);
  }
}

int main() 
{
  int largest = 0;
  for(int i = 999999; i >= 0; i--)
  {
    int cur = functor(i, 0);
    if (cur > largest)
    {
      largest = cur;
      std::cout << cur << std::endl;
    }
  }
}
