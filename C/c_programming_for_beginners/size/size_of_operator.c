#include <stdio.h>

int main(){
	size_t tamaño = 1024;

	printf("El tamaño es %zu bytes\n", tamaño);
	printf("Tamaño para entero: %zu\n", sizeof(int));
	printf("Tamaño para double: %zu\n", sizeof(double));
	printf("Tamaño para float: %zu\n", sizeof(float));
	printf("Tamaño para char: %zu\n", sizeof(char));

	return 0;
}
