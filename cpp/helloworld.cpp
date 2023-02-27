#include <iostream>

int main() {

	// \n is better performance wise, std::endl will flush the buffer
	std::cout << "I like pizza!" << '\n'; 
	std::cout << "It's really good!" << std::endl;
	return 0;
}
