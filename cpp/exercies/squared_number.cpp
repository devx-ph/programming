#include <iostream>

int squared(int number);

int main()
{
	int number;

	std::cout << "Enter number to squared by 2: ";
	std::cin >> number;

	std::cout << "Result: " << squared(number) << std::endl;

	return 0;
}

int squared(int number)
{
	return number * number;
}
