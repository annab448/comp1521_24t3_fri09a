#include <stdio.h>

struct point {
	int x;
	int y;
};


int main(void) {
	struct point P = {6, 10};

	printf("%d\n", P.x + P.y);
	
	P.x *= 2;

	return 0;
}
