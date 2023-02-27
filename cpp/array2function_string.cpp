#include <iostream>

std::string get_names(std::string names[], int size);

int main()
{
	std::string names[]={"Kristian","Monad","Blanc","Zekroe","Jhin"};
	int size = sizeof(names)/sizeof(names[0]);
	std::string name_list = get_names(names, size);

	std::cout << "*****************" << '\n';;
	std::cout << "*     NAMES     *" << '\n';;
	std::cout << "*****************" << '\n';;
	std::cout << name_list << '\n';

	return 0;
}

std::string get_names(std::string names[], int size)
{
	std::string name;

	for(int i=0; i<size; i++)
	{
		name+=names[i]+'\n';
	}

	return name;
}
