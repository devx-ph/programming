#include <iostream>

int main()
{
	char _operator;
	double num1;
	double num2;
	double result;

	std::cout << "*********** CALCULATOR ***********" << '\n';
	std::cout << "Choose if ( + - * /): " << '\n';
	std::cin >> _operator;

	if((_operator == '+') || (_operator == '-') || (_operator == '*') || (_operator == '/')) 
	{
		std::cout << "Enter #1: ";
		std::cin >> num1;


		std::cout << "Enter #2: ";
		std::cin >> num2;

		switch(_operator)
		{
			case '+':
				result = num1 + num2;
				std::cout << result << '\n';
				break;
			
			case '-':
				result = num1 - num2;
				std::cout << result << '\n';
				break;

			case '*':
				result = num1 * num2;
				std::cout << result << '\n';
				break;

			case '/':
				result = num1 / num2;
				std::cout << result << '\n';
				break;

			default: 
				std::cout << "Syntax error" << '\n'; 
		}
	}
	else
	{
		std::cout << "Error!" << std::endl;
	}
	std::cout << "**********************************" << '\n';

	return 0;
}
