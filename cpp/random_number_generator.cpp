#include <iostream>
#include <ctime> // needed libary for random numbers program

int main()
{
	// pseudo-random = NOT truly random (but close)
	
	srand(time(NULL));

	/* int num = rand() % 7; */
	// alternative way to get a random 6 numbers 
	int num1 = (rand() % 6) + 1;
	int num2 = (rand() % 6) + 1;
	int num3 = (rand() % 6) + 1;

	std::cout << num1 << '\n';
	std::cout << num2 << '\n';
	std::cout << num3 << '\n';

	return 0;
}
