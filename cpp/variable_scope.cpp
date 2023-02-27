#include <iostream>

// global variable
int my_num = 15;

void print_number();

int main()
{
	// Local variables = declared inside a function or block {}
	// Global variables = declared outside of all functions
	
	// local variable to main function
	int my_num = 5;

	/* std::cout << my_num << '\n'; */
	// to use a global function with existing local variables 
	// use '::' scope resolution operator
	std::cout << ::my_num << '\n';
	/* print_number(my_num); */

	print_number();
	/* std::cout << number << '\n'; */

	return 0;
}

void print_number()
{
	// local variable 
	int my_num = 10;
	/* std::cout << my_num << '\n'; */
	// to use a global function with existing local variables 
	std::cout << ::my_num << '\n';
}

// avoid global variables as much as possible 
// local variables are more secured
