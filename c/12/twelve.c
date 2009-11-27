#include <iostream>
#include <ostream>


int triangle(int n)
{
  int sum = 0;
  for(int i = 0; i <= n; i++) 
  {
    sum += i;
  }
  return sum;
}

int divisorsfn(int n)
{
  int numdivs = 0;
  int i = 0;
  if (n == 1){
    return 1;
  }
  while (true)
  {
    i += 1;
    if (i == n) {
      break;
    }

    if (n % i == 0){
      numdivs++;
    }
  }
  return numdivs;
}


int main() 
{
  int i = 0;
  while(true) {
    i++;
    int numsum = triangle(i);
    int divs = divisorsfn(numsum);
    std::cout << numsum  << " " << divs << std::endl;
    if (divs >= 500)
    {
      std::cout << numsum << std::endl;
      break;
    }
  }
}
