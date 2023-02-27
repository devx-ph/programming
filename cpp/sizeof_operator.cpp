#include <iostream>

int main()
{
	// sizeof() = determines the size in bytes of a:
	//			  variable, data type, class, objects, etc.
	
	// 32 bytes
	std::string name = "Kristian";
	// 8 bytes
	double gpa = 2.5;
	// 1 byte
	char grade = 'A';
	// 4 bytes
	int num = 4;
	// 1 byte	
	bool student = true;
	// 5 bytes
	char grades[] = {'A', 'B', 'C', 'D', 'F', 'E'};

	std::string students[] = {"Spongebob", "Patrick", "Squidward", "Sandy"};
	std::cout << sizeof(students)/sizeof(std::string) << '\n';
	// 96 bytes, 1 string is equals to 32 bytes 
	/* std::cout << sizeof(students) << '\n'; */

	/* std::cout << sizeof(grades) << " bytes" << '\n'; */
	// finding the how many elements in array 
	/* std::cout << sizeof(grades)/sizeof(char) << " elements" << '\n'; */

	return 0;
}
