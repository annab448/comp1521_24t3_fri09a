#include <stdio.h>

int main(void) {
  printf("While\n");
  int i = 0;
  while (i < 10) {
    printf("%d\n", i);
    i++;
  }

  printf("For\n");
  int j;
  for (j = 0; j < 10; j++) {
	printf("%d\n", j);
  }

  printf("final num%d\n", j);
  return 0;
}
