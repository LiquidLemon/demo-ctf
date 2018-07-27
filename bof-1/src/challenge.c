#include <stdio.h>

int main() {
  int x = 0;
  char buffer[10];

  gets(buffer);
  if (x) {
    puts("done");
  } else {
    puts("not yet");
  }
  return 0;
}
