#include <iostream>

class Human
{
	public:
		std::string name;
		std::string occupation;
		int age;

		void eat()
		{
			std::cout << "This person is eating\n";
		}

		void drink()
		{
			std::cout << "This person is drinking\n";
		}
		
		void sleep()
		{
			std::cout << "This person is sleeping\n";
		}
};

int main()
{
	// object = A collection of attributes and methods
	//			they can have characteristics and could perform actions
	//			can be used to mimic real world items (ex. Phone, Book, Dog)
	//			created from a class which acts as a "blue-print"
	
	Human human1;
	Human human2;

	human1.name = "monad";
	human1.occupation = "Student";
	human1.age = 22;

	human2.name = "Kristian";
	human2.occupation = "Software Engineer";
	human2.age = 22;

	std::cout << human2.name << '\n';
	std::cout << human2.occupation << '\n';
	std::cout << human2.age << '\n';

	human2.eat();
	human2.drink();
	human2.sleep();

	return 0;
}
