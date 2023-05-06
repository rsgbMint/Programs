/*
 int			(4 bytes) | %d for printing
 double			(8 bytes) | %lf for printing
 float			(4 bytes) | %f for printing
 char			(1 byte)  | %c for printing
 */

#include <stdio.h>
#include <limits.h>
int main(){
	
	double number = 12.45;
	double number1 = 10.4;
	double number2 = 5.5e6;

	printf("double number = %.2lf\n", number);
	printf("float number = %.1f\n", number1);
	printf("exponential number = %.0lf\n", number2);

	printf("The size of a double is: %zu bytes\n", sizeof(double));
	printf("The size of a float is: %zu bytes\n", sizeof(float));
	return 0;
}
