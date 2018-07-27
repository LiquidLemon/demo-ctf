#include <stdio.h>
#include "flag.h"

int main() {
  int x = 0;
  char input[10];

  printf("> ");
  fflush(stdout);
  scanf("%s", input);
  if (x == 0xdeadbeef) {
    printf("The flag: %s\n", FLAG);
  } else {
    printf("Not quite right, you got: %0x\n", x);
  }

  return 0;
}
