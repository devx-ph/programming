#include <iostream>

int main(){
	// The const keyword specifies that a variable's value is constant 
	// tells the complier to prevent anything from modifying it 
	// (read-only)
	const double PI = 3.14159;
	double radius = 10;
	double circumference = 2 * PI * radius;
	const int LIGHT_SPEED = 299792458;
	const int WIDTH = 1920;
	const int HEIGHT = 1080;
	const std::string BIRTHDATE = "July 26, 2000";

	std::cout << "Circumference: " << circumference << "cm" << '\n';
	std::cout << "Speed of Light: " << LIGHT_SPEED << '\n';
	std::cout << "Screen Resolution: " << WIDTH << "x" << HEIGHT << '\n'; 
	std::cout << "Birthdate: " << BIRTHDATE << std::endl; 

	return 0;
}
