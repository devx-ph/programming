#include <iostream>

void happy_birthday(std::string name, int age)
{
	std::cout << "Happy birthday to you " << name << "!" << '\n';
	std::cout << "How old are you now " << name << "?" << '\n';
	std::cout << "I'm " << age << " years old." << '\n';
}

int main()
{
	// function = a block of reusable code
	
	std::string name = "monad";
	int age = 22;
	
	happy_birthday(name, age);

	return 0;
}
