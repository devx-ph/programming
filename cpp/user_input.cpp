#include <iostream>

// cout << (insertion operator)
// cin >> (extraction operator)

int main()
{

	std::string name;
	int age;

	std::cout << "How old are you?: ";
	std::cin >> age;

	std::cout << "What's your full name?: ";
	// to accept a string with whitespaces
	/* std::getline(std::cin, name); */
	// Example #2 
	// 'std::ws' will eliminate new line character or any whitespaces
	// with 'std::cin' >> there will be a new line '\n' after
	std::getline(std::cin >> std::ws, name);


	std::cout << "Hello " << name << '\n';
	std::cout << "You are " << age << " years old." << '\n'; 

	return 0;
}
