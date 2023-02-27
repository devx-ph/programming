#include <iostream>

struct Car
{
	std::string model;
	int year;
	std::string color;
};

void print_car(Car car);
void paint_car(Car &car, std::string color);

int main()
{
	Car car1;
	Car car2;

	car1.model = "Nissan";
	car1.year = 1989;
	car1.color = "Grey";

	car2.model = "Mustang";
	car2.year = 2023;
	car2.color = "Silver";

	paint_car(car1, "Jade");
	paint_car(car2, "Black");

	print_car(car1);
	print_car(car2);

	return 0;
}

void print_car(Car car)
{
	std::cout << car.model << '\n';
	std::cout << car.year << '\n';
	std::cout << car.color << '\n';
	std::cout << '\n';
}

void paint_car(Car &car, std::string color)
{
	car.color = color; 	
}
