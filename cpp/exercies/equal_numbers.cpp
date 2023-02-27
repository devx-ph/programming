#include <iostream>

bool is_same_num(int num1, int num2);

int main()
{
	int num1;
	int num2;

	std::cout << "Enter #1: ";
	std::cin >> num1;

	std::cout << "Enter #2: ";
	std::cin >> num2;

	if(is_same_num(num1, num2))
	{
		std::cout << "Both numbers are equal\n";
	}
	else
	{
		std::cout << "Both numbers are not equal\n";
	}

	return 0;
}

bool is_same_num(int num1, int num2)
{
	if(num1 == num2)
	{
		return true;
	}
	else
	{
		return false;
	}
}
