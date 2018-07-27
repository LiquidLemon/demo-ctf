#include <stdio.h>
#include "flag.h"

int main() {
  int x = 0;
  char buffer[10];

  printf("> ");
  fflush(stdout);
  gets(buffer);
  if (x) {
    printf("The flag: %s\n", FLAG);
  } else {
    puts("Try again");
  }
  return 0;
}
