package main

import (
  "fmt";
)

func fact(x uint64) uint64 {
   if x == 0 {
      return 1;
   }
   return x * fact(x - 1);
}


func thing(n uint64, r uint64) uint64 {
  return fact(n)/(fact(r)*fact(n-r));
}

func main() {
  sum := 0;
  for n := uint64(1); n <= 100; n++ {
    fmt.Println(n);
    for r := uint64(1); r <= n; r++ {
      if thing(n,r) > 1000000 {
        sum++;
      }
    }
  }
}
