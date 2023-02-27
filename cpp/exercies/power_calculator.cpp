#include <iostream>

int power_calc(int voltage, int current);

int main()
{
	int voltage;
	int current;

	std::cout << '\n';
	std::cout << "*****************" << '\n';
	std::cout << "Power Calculator" << '\n';
	std::cout << "*****************" << '\n';
	std::cout << '\n';

	std::cout << "Enter voltage: ";
	std::cin >> voltage;

	std::cout << "Enter current: ";
	std::cin >> current;

	std::cout << "Circut power: " << power_calc(voltage, current) << '\n';
	std::cout << std::endl;

	return 0;
}

int power_calc(int voltage, int current)
{
	return voltage * current;
}
