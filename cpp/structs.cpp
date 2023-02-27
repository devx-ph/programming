#include <iostream>

struct student
{
	// variables is struct are known as "members"
	std::string name;
	double gpa;
	// you can also set this already to true  
	bool enrolled = true;
};

int main()
{
	// struct = A structure that group related variables under one name 
	//			structs can contain many different data types (string, int, double, bool, etc)
	//			variables in a struct are known as "members"
	//			members can be access with. "Class Member Access Operator"
	
	student student1;
	student1.name = "monad";
	student1.gpa = 1.25;
	/* student1.enrolled = true; */

	student student2;
	student2.name = "Patrick";
	student2.gpa = 3.25;
	student2.enrolled = false;

	std::cout << "Student 1:" << '\n';
	std::cout << student1.name << '\n';
	std::cout << student1.gpa << '\n';
	std::cout << student1.enrolled << '\n';
	std::cout << '\n';
	std::cout << "Student 2:" << '\n';
	std::cout << student2.name << '\n';
	std::cout << student2.gpa << '\n';
	std::cout << student2.enrolled << '\n';

	return 0;
}
