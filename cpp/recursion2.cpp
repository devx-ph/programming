#include <iostream>

// factorial function  
int factorial(int num);

int main()
{
	std::cout << factorial(10) << '\n';	

	return 0;
}

// iterative
/* int factorial(int num) */
/* { */
/* 	int result = 1; */

/* 	for(int i = 1; i <= num; i++) */
/* 	{ */
/* 		result *= i; */
/* 	} */
/* 	return result; */
/* } */

// recursive
int factorial(int num)
{
	if(num > 1)
	{
		return num * factorial(num - 1);
	}
	else
	{
		return 1;
	}
}
// only use recursion if necessary, because it takes up more ram and much slower than iterative
// recursion is good in sorting, algorithms, & data structures, it will simplify the steps.
