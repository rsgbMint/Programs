#include<stdio.h>
int average(int num);
int compare(int avrg1, int avrg2, int avrg3);

int main(){
	int avrg1, avrg2, avrg3 = 0;
	int lowest_avrg;
	avrg1 = average(5);
	printf("The average 1 is: %d\n\n", avrg1);

	avrg2 = average(6);
	printf("The average 2 is: %d\n\n", avrg2);

	avrg3 = average(11);
	printf("The average 3 is: %d\n\n", avrg3);

	lowest_avrg = compare(avrg1, avrg2, avrg3);
	printf("The lowest average is: %d\n", lowest_avrg);
}

int average(int num){
	int avrg = 0;
	int sum = 0;
	int age = 0;

	for(int i = 1; i <= num; i++){
		printf("Enter the age %d : ", i);
		scanf("%d", &age);
		sum = sum + age;
	}
	avrg = sum/num;
	return avrg;
}

int compare(int avrg1, int avrg2, int avrg3){
	int menor = 0;
	if (avrg1 < avrg2){
		menor = avrg1;
		if (menor > avrg3){
			menor = avrg3;
		}
	}
	else{
		menor = avrg2;
	}
}

