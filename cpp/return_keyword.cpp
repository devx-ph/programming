#include <iostream>

double square(double length)
{
	/* double result = length * length; */
	/* return result; */
	// alternative way
	return length * length;
}

double cube(double length)
{
	return length * length * length;
}

int main()
{
	// return = return a value back to the spot
	//			where you called the encompassing function
	
	double length = 6.0;
	double area = square(length);
	double volume = cube(length);

	std::cout << "Area: " << area << "cm^2" << '\n';
	std::cout << "Volume: " << volume << "cm^3" << '\n';


	return 0;
}
