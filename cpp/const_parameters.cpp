#include <iostream>


void print_info(const std::string name, const int age);

int main()
{
	// const parameter = parameter that is effectively read-only
	//					 code is more secure & conveys intent
	//					 useful for references and parameters
	
	std::string name = "monad";
	int age = 22;

	print_info(name, age);


	return 0;
}
void print_info(const std::string name, const int age)
{
	/* name = ' '; */
	/* age = 0; */
	std::cout << name << '\n';
	std::cout << age << '\n';
}
