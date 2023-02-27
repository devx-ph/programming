#include <iostream>

// Creating a namespace 
namespace first{
	int x = 1;
}

namespace second{
	int x = 2;
}

int main(){
	// Declaring the entity first
	using namespace first;
	// Namespace = provides a solution for preventing name conflicts 
	//			   in a large projects. Each entity need a unique name.
	//			   A namespace allows for identically named entities 
	//			   as long as the namespaces are different.
	
	// AVOID using namespace std;
	// instead use: 
	// using std::cout
	// using std::string
	
	/* int x = 0; */	

	std::cout << x << '\n';
	// Printing out a name space
	// the two colums (::) is also known as scope resolution operator
	/* std::cout << first::x << '\n'; */
	std::cout << second::x << '\n';

	return 0;
}
