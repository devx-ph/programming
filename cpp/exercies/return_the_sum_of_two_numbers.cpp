#include <iostream>

int sum(int num1, int num2);

int main()
{
	// Create a function that takes two numbers as arguments and returns their sum
	
	int num1;
	int num2;

	std::cout << "Enter #1: ";
	std::cin >> num1;

	std::cout << "Enter #2: ";
	std::cin >> num2;

	std::cout << sum(num1, num2) << '\n';

	return 0;
}

int sum(int num1, int num2)
{
	return num1 + num2;
}
