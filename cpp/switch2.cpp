#include <iostream>

int main()
{
	char grade;

	std::cout << "Input grade letter: ";
	std::cin >> grade;

	switch(grade)
	{
		case 'A':
			std::cout << "You did great!" << '\n';
			break;

		case 'B':
			std::cout << "You did good!" << '\n';
			break;

		case 'C':
			std::cout << "You did okay" << '\n';
			break;

		case 'D':
			std::cout << "You did not do good" << '\n';
			break;

		case 'F':
			std::cout << "YOU FAILED!" << '\n';
			break; 

		default:
			std::cout << "Please only input letter grade (A, B, C, D, & F)" << std::endl;
	}

	return 0;
}
