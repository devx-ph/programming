#include <iostream>

int next_number(int number);

int main()
{

	std::cout << next_number(0) << '\n';

	return 0;
}

int next_number(int number)
{
	return number + 1;	
}
