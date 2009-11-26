#include <iostream>

int m = 1;

int main() {

  while (1) { 

    int cur = 21*m;

    bool good = true;
    for(int i = 1; i <= 21; i++) {
      if ( ( cur % i ) != 0) {
        good = false;
      }
    }

    if (good) {
      std::cout << cur << std::endl;
    }

    m++;

  }
}


