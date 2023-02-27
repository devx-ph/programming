#include <iostream>

double get_grades(double grades[], int size);

int main()
{
	double grades[] = {96.5, 87.6, 100, 91.10};
	int size = sizeof(grades)/sizeof(grades[0]);
	double total = get_grades(grades, size);

	std::cout << "Average: " << total << '\n';

	return 0;
}

double get_grades(double grades[], int size)
{
	double average = 0;

	for(int i=0; i<size; i++)
	{
		average += grades[i]/size;
	}

	return average;
}

