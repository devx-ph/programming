#include <iostream>

int main()
{
	double temp;
	char unit;

	std::cout << "***** Temperature conversion *****" << '\n';
	std::cout << "----------UNITS---------" << '\n';
	std::cout << "F = Fahrenheit" << '\n';
	std::cout << "C = Celsius" << '\n';
	std::cout << "------------------------" << '\n';

	std::cout << "Choose unit to convert: ";
	std::cin >> unit;

	if(unit == 'F' || unit == 'f')
	{
		std::cout << "Enter the temperature in Celsius: ";
		std::cin >> temp;

		temp = (1.8 * temp) + 32.0;

		std::cout << "Temperature in Fahrenheit: " << temp << 'F' << '\n';
	}
	else if (unit == 'C' || unit == 'c')
	{
		std::cout << "Enter the temperature in Fahrenheit: ";
		std::cin >> temp;

		temp = (temp - 32.0) / 1.8;

		std::cout << "Temperature in Celsius: " << temp << 'C' << '\n';
	}
	else
	{
		std::cout << "Error, unit does not exist." << '\n';
	}

	std::cout << "**********************************" << std::endl;

	return 0;
}
