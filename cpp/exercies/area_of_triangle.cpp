#include <iostream>

double area(double base, double height);

int main()
{
	double base;
	double height;

	std::cout << "Enter base of triangle: ";
	std::cin >> base;

	std::cout << "Enter height of triangle: ";
	std::cin >> height;

	std::cout << "Area of triangle: " << area(base, height) << '\n';

	return 0;
}

double area(double base, double height)
{
	return (base * height) / 2;
}
