#include <stdio.h>

int main() {
  int x = 0;
  char input[10];

  scanf("%s", input);
  if (x == 0xdeadbeef) {
    puts("done");
  } else {
    printf("You got: %0x\n", x);
  }

  return 0;
}
