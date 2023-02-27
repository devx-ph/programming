#include <iostream>

struct info 
{
	std::string name;
	int age;
	std::string gender;
};

void print_info(info infos);
void change_info(info &infos, std::string name, int age);

int main()
{
	info info1;
	info info2;

	info1.name = "monad";
	info1.age = 22;
	info1.gender = "male";

	info2.name = "iris";
	info2.age = 20;
	info2.gender = "female";

	change_info(info1, "kristian", 23);

	print_info(info1);
	print_info(info2);

	return 0;
}

void print_info(info infos)
{
	std::cout << '\n';
	std::cout << "Name: " << infos.name << '\n';
	std::cout << "Age: " << infos.age << '\n';
	std::cout << "Gender : " << infos.gender << '\n';
	std::cout << '\n';
}

void change_info(info &infos, std::string name, int age)
{
	infos.name = name;
	infos.age = age;
}
