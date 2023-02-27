#include <iostream>

int main()
{
   /*loop()
	{
		loop()
		{

		}
	}*/
	
	/* for(int i =1; i <= 5; i++) */
	/* { */
	/* 	for(int j =1; j <= 10; j++) */
	/* 	{ */
	/* 		std::cout << j << ' '; */
	/* 	} */
	/* 	std::cout << "Loop: " << i << '\n'; */
	/* } */

	// rows 
	/* for(int i=1; i <= 5; i++) */
	/* { */
	/* 	// columns */
	/* 	for(int j=1; j <= 10; j++) */
	/* 	{ */
	/* 		std::cout << "*"; */
	/* 	} */
	/* 	std::cout << '\n'; */
	/* } */

	// with user input
	int rows;
	int columns;
	char symbol;

	std::cout<< "How many rows?: ";
	std::cin >> rows;

	std::cout << "How many columns?: ";
	std::cin >> columns;

	std::cout << "Input a symbol to use: ";
	std::cin >> symbol;

	for(int i=1; i<=rows; i++)
	{
		for(int j=1; j<=columns; j++)
		{
			std::cout << symbol;
		}
		std::cout<< '\n';
	}

	return 0;
}
