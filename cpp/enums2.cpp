#include <iostream>

enum Champions {jhin, caitlyn, samira, kaisa, lucian};

int main()
{
	
	Champions pick = jhin;

	switch(pick)
	{
		case jhin : std::cout << "Our performance, begins!\n";
					break;
		case caitlyn : std::cout << "Im on the case.\n";
					break;
		case samira : std::cout << "You want style? You've found her.\n";
					break;
		case kaisa : std::cout << "Are you the hunter... or ther prey?\n";
					break;
		case lucian : std::cout << "Everybody dies. Some just need a little help.\n";
					break;
	}

	return 0;
}
