#include <stdio.h>

int main (void)
{
	int n, triangleNumber;

	printf ("TABLE OF TRIANGLE NUMBERS\n\n");
	printf (" n     Sum from 1 to n\n");
	printf ("---    ---------------\n");

	triangleNumber = 0;

	for ( n = 1; n <= 20; ++n) {
		triangleNumber += n; 
		printf ("%2i      %i\n", n, triangleNumber);
	}

	return 0;

}
