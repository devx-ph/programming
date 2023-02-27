#include <iostream>

int main()
{
	// if statements = do something if a condition is true
	//				   if not, don't do it 
	
	int age; 

	std::cout << "Enter your age: ";
	std::cin >> age;

	if (age >= 100)
	{
		std::cout << "Access denied" << '\n';
	}
	else if(age >= 18)
	{
		std::cout << "Welcome to the network!" << '\n'; 
	}
	else if (age <= 0)
	{
		std::cout << "Not a valid age number." << '\n';
	}
	else
	{
		std::cout << "Error, only 18+ allowed." << '\n';
	}

	return 0;
}
