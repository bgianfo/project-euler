package main

import (
  "strings";
  "fmt";
  "strconv";
)

func main() {

  var i int;
  i = 10;

	for {

    i++;
    twice  := strconv.Itoa(2*i);
    thrice := strconv.Itoa(3*i);
    quadce := strconv.Itoa(4*i);
    fithce := strconv.Itoa(5*i);
    sixice := strconv.Itoa(6*i);

    var found bool = true;
    for j := 0; j < len(sixice); j++ {
      cur := string(sixice[j]);
      test := ( strings.Count(thrice,cur) != 0 ) && (strings.Count(quadce,cur) != 0) && (strings.Count(fithce,cur) != 0) && (strings.Count(twice,cur) != 0);
      if !test {
        found = false;
      }
    }

    if found {
      fmt.Println("found: ");
      fmt.Println(i);
      break;
    }
	}
}
