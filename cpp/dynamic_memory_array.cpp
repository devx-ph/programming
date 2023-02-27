#include <iostream>

int main()
{
	char *p_grades = NULL;
	int size;

	std::cout << "How many grades to enter in?: ";
	std::cin >> size;

	p_grades = new char[size];

	for(int i = 0; i < size; i++)
	{
		std::cout << "Enter grade #: " << i + 1 <<  ": ";
		std::cin >> p_grades[i];
	}

	for(int i = 0; i < size; i++)
	{
		std::cout << p_grades[i] << " ";
	}

	std::cout << '\n';

	delete[] p_grades;

	return 0;
}
