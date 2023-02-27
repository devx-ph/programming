#include <iostream>
// using function template
template <typename T, typename U>
// using T or U will return only one datatype 
// use auto instead
auto max(T x, U y)
{
	return (x > y) ? x : y;
}

// function overloading
/* double max(double x, double y) */
/* { */
/* 	return (x > y) ? x : y; */
/* } */
/* char max(char x, char y) */
/* { */
/* 	return (x > y) ? x : y; */
/* } */

int main()
{
	// function templates = describes what a function looks like.
	//						Can be used to generate as many overloaded functions
	//						as needed, each using different data types
	
	//						Ex. "It's like a cookie-cutter..."
	//						"Cookies are the same shape, but the dough used is different
	
	std::cout << max(3.2, 10.69) << '\n';

	return 0;
}
