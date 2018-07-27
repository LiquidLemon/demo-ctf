#include <stdio.h>
#include <string.h>

int main() {
  char password[100];
  printf("password> ");
  fflush(stdout);
  scanf("%99s", password);

  if (strcmp(password, "correctHorseBatteryStaple") == 0) {
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
