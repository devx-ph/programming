#include <iostream>

int main()
{
	// dynamic memory = Memory that is allocated after the program
	//					is already compiled & running.
	//					Use the 'new' operator to allocate
	//					memory in the heap rather than the stack
	
	//					Useful when we don't know how much memory 
	//					we will need. Makes our programs more flexible,
	//					especially when accepting user input.
	
	int *p_num = NULL;

	p_num = new int;

	*p_num = 21;

	std::cout << "address: " << p_num << '\n';
	std::cout << "value: " << *p_num << '\n';

	// if using 'new' operator, also use 'delete' operator to avoid memory leaks 
	delete p_num;

	return 0;
}
