#include <iostream>

int main()
{
	// ternary operator ?: = replacement to an if/else statement
	// condition ? expression 1 : expression 2
	
	int grade = 50;

	/* grade >= 60 ? std::cout << "You pass!\n" : std::cout << "You failed!" << std::endl; */

	// alternate way 
	std::cout << (grade >= 60 ? "You pass!\n" : "You failed!\n");

	/* int number = 6; */

	/* number % 2 ? std::cout << "Odd\n" : std::cout << "Even" << std::endl; */

	// alternate way 
	/* std::cout << (number % 2 ? "Odd\n" : "Even\n"); */

	/* bool hungry = true; */

	/* hungry ? std::cout << "You are hungry\n" : std::cout << "You are full" << std::endl; */

	// alternate way
	/* std::cout << (hungry ? "You are hungry\n" : "You are full\n"); */

	return 0;
}
