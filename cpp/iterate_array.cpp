#include <iostream>

int main()
{
	/* std::string students[] = {"Spongebob", "Patrick", "Squidward", "Sandy", "Plankton"}; */

	// iterate over an array
	/* for(int i = 0; i < sizeof(students)/sizeof(std::string); i++) */
	/* { */
	/* 	std::cout << students[i] << '\n'; */
	/* } */

	// example# 2
	char grades[] = {'A', 'B', 'C', 'D', 'F'};

	for(int i=0; i<sizeof(grades)/sizeof(char); i++)
	{
		std::cout << grades[i] << ' ';
	}

	std::cout << '\n';

	return 0;
}
