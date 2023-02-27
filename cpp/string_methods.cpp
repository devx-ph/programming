#include <iostream>

int main()
{
	std::string name;

	std::cout << "Enter your name: ";
	std::getline(std::cin, name);
	/* std::cin >> name; */

	// to get the length of the characters
	/* std::cout << name.length() << '\n'; */
	// 'name.empty();' will return if empty string
	// 'name.clear()' will clear the string input
	// 'name.append()' will add string to inputed string
	// 'name.at()' will return the character of the string at the following position
	// 'name.insert()' will insert a character at the following position
	// 'name.find()' will find the position of the character/string in the string 
	// 'name.erase()' will erase a portion of the string at the following position

	/* if(name.empty()) */
	/* { */
	/* 	std::cout << "Empty characters detected." << '\n'; */
	/* } */
	/* else */
	/* { */
	/* 	std::cout << "Welcome " << name << std::endl; */
	/* } */

	/* name.clear(); */
	/* std::cout << "Hello " << name << '\n'; */

	/* name.append("@gmail.com"); */
	
	/* std::cout << name.at(1) << '\n'; */

	/* name.insert(5, "@"); */

	/* std::cout << name.find("monad") << '\n'; */

	//variable.erase(starting point, end point)
	name.erase(1, 3);
	std::cout << name << '\n';

	return 0;
}
