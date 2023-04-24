
#include <stdio.h>

int main() {
	FILE *fh;
	int i;

	fh = fopen("test.txt", "w");
	if (fh == NULL) {
		printf("Error opening file. \n");
		return 1;
	}
	
	for (int i=1; i<=100000; i++) {
		fprintf(fh, "%d\n", i);
	}

	fclose(fh);
	printf("Successfully written! \n");
	return 0;
}
