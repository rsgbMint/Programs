/*
 int			(4 bytes) | %d for printing
 double			(8 bytes) | %lf for printing
 float			(4 bytes) | %f for printing
 char			(1 byte)  | %f for printing
 */

#include <stdio.h>
#include <limits.h>
int main(){
	
	int age = 10;
	printf("Age = %d\n", age);
	printf("The maximun integer value is: %d\n", INT_MAX);
	printf("The size of an integer is: %zu bytes\n", sizeof(int));
	return 0;
}
