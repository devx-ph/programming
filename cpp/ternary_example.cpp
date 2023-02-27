#include <iostream>

int main()
{
	std::string passcode = "1234 4321";
	std::string user_input;
	
	std::cout << "Input paraphrase to unlock: ";
	/* std::cin >> user_input; */

	// to get whitespaces 
	std::getline(std::cin, user_input);

	/* user_input == passcode ? std::cout << "Access granted\n" : std::cout << "Access denied!\n"; */
	// alternate way 
	std::cout << (user_input == passcode ? "Access granted\n" : "Access denied!\n");
	std::cout << (user_input != passcode ? "Clue: 1234 space, reversed 1234\n" : "");

	return 0;
}
