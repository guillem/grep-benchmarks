
#include <stdio.h>
#include <string.h>
#include <sys/time.h>

int main (int argc, char **argv) {

	struct timeval tv;

	gettimeofday(&tv, NULL);
	double t0 = tv.tv_sec + tv.tv_usec / 1e6;

	FILE *file = fopen(argv[2], "r");
	char line[4096];
	int counter = 0;
	while (fgets(line, sizeof(line), file)) {
		if(strstr(line, argv[1])) {
			counter++;
		}
	}
	fclose(file);
	printf("%d\n", counter);

	gettimeofday(&tv, NULL);
	double t1 = tv.tv_sec + tv.tv_usec / 1e6;

	printf("%f\n", t1 - t0);

	return 0;

}

