#include <iostream>

void bake_pizza();
void bake_pizza(std::string topping1);
void bake_pizza(std::string topping1, std::string topping2);

int main()
{
	bake_pizza("ham", "cheese");	

	return 0;
}

void bake_pizza()
{
	std::cout << "Here is your pizza!" << '\n';
}

void bake_pizza(std::string topping1)
{
	std::cout << "Here is your " << topping1 << " pizza!" << '\n';
}

void bake_pizza(std::string topping1, std::string topping2)
{
	std::cout << "Here is your " << topping1 << " & " << topping2 << " pizza!" << '\n';
}

// functions name & parameters is known as functions signiture
