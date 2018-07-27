#include <stdio.h>
#include <string.h>
#include <stdbool.h>

bool validate(char *password) {
  if (password[0] != 'f') return false;
  if (password[1] != 'o') return false;
  if (password[2] != 'o') return false;
  if (password[3] != 'b') return false;
  if (password[4] != 'a') return false;
  if (password[5] != 'r') return false;
  if (password[6] != '\0') return false;
  return true;
}

int main() {
  char password[100];
  printf("password> ");
  fflush(stdout);
  scanf("%99s", password);

  if (validate(password)) {
    char flag[100];
    FILE *file = fopen("flag.txt", "r");
    fscanf(file, "%s", flag);
    fclose(file);

    printf("The flag: %s\n", flag);
  } else {
    puts("Wrong password");
  }
  return 0;
}
