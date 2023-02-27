#include <iostream>

int main()
{
	// foreach loop = loop that eases the traversal over an 
	//				  iterable data set
	
	/* std::string students[] = {"Spongebob", "Patrick", "Squidward", "Sandy"}; */

	/* for(std::string student : students) */
	/* { */
	/* 	std::cout << student << '\n'; */
	/* } */

	// example# 2
	/* int grades[] = {96, 87, 100, 91}; */

	/* for(int grade : grades) */
	/* { */
	/* 	std::cout << grade << '\n'; */
	/* } */

	// example 3
	double grades[] = {96.5, 87.2, 100.0, 91.10};
	for(double grade : grades)
	{
		std::cout << grade << '\n';
	}

	return 0;
}
