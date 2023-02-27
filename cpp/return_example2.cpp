#include <iostream>

// another way to write functions

std::string concat_strings(std::string string1, std::string string2);

int main()
{
	std::string first_name = "Kristian";
	std::string last_name = "Bulos";
	std::string fullname = concat_strings(first_name, last_name);

	std::cout << "Hello " << fullname << '\n';


	return 0;
}

std::string concat_strings(std::string string1, std::string string2)
{
	return string1 + " " + string2;
}
