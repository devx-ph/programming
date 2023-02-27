#include <iostream>

int main() {

	// integer (whole number)
	int age = 22;
	int year = 2023;
	// double (number including decimal)
	double days = 7.5;	
	double price = 10.99;
	double gpa = 2.5;
	double temperature = 36.1;
	// char (single character)
	char grade = 'A';	
	char initial = 'B';
	char dollarSign = '$';
	// boolean (true or false)
	bool student = true;	
	bool power = false;
	bool item = true;
	// string (objects that represents a sequence of text)
	std::string name = "Kristian";		
	std::string day = "Wednesday";
	std::string food = "Pizza";
	std::string address = "123 Fake Street";

	std::cout << "---------------------" << '\n';
	std::cout << "Integer" << '\n';
	std::cout << "age: " << age << '\n';
	std::cout << "year: "<< year << '\n';
	std::cout << "---------------------" << '\n';
	std::cout << "Double" << '\n';
	std::cout << "days: " << days << '\n';
	std::cout << "price: $" << price << '\n';
	std::cout << "gpa: " << gpa << '\n';
	std::cout << "temperature: " << temperature << '\n';
	std::cout << "---------------------" << '\n';
	std::cout << "Character" << '\n';
	std::cout << "Grade: " << grade << '\n';
	std::cout << "Initial: " << initial << '\n';
	std::cout << "Dollar Sign: " << dollarSign << '\n';
	std::cout << "---------------------" << '\n';
	std::cout << "Boolean" << '\n'; 
	std::cout << "Student exist? 1 = true, 0 = false: " << student << '\n';
	std::cout << "Power exist? 1 = true, 0 = false: " << power << '\n';
	std::cout << "Item exist? 1 = true, 0 = false: " << item << '\n';
	std::cout << "---------------------" << '\n';
	std::cout << "String" << '\n';
	std::cout << "Name: " << name << '\n'; 
	std::cout << "Day: " << day << '\n';
	std::cout << "Food: " << food << '\n';
	std::cout << "Address: " << address << '\n';
	std::cout << "---------------------" << '\n';
	std::cout << '\n';
	std::cout << "Hello " << name << '\n';
	std::cout << "Your are " << age << " years old." << '\n';

	return 0;
}
