
#include <stdio.h>
#include <stdlib.h>

int main() {
	FILE *fh;
	long int sum = 0;
	char *line = NULL;
	size_t len = 0;
	ssize_t read;

	fh = fopen("test.txt", "r");
	if (fh == NULL) {
		printf("Error opening file. \n");
		return 1;
	}

	while ((read=getline(&line,&len,fh)) != -1) {
		if (line[-1] == '\n') {
			line[-1] = '\0';
		}

		if (*line != '\n') {
			sum += atoll(line);
		} 
		else {
			printf("Error reading line:\n");
			printf(line);
		}
	}
	printf("Sum = %li\n", sum);
	
	fclose(fh);	
	if (line) free(line);

	return 0;
}
