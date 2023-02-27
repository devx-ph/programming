#include <iostream>

int main()
{
	// pointers = variable that stores a memory address of another variable
	//			  sometimes it's easier to work with an address
	
	// & address-of operator 
	// * dereference operator 
	
	std::string name = "monad";
	int age = 22;
	std::string free_pizzas[5] = {"pizza1", "pizza2", "pizza3", "pizza4", "pizza5"};
	int size = sizeof(free_pizzas)/sizeof(free_pizzas[0]);

	std::string *p_name = &name;
	int *p_age = &age;
	// no need to use '&' address-of operator, array is already an address
	std::string *p_free_pizzas = free_pizzas;

	std::cout << *p_name << '\n';
	std::cout << *p_age << '\n';
	std::cout << *p_free_pizzas << '\n';

	return 0;
}
