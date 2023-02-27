#include <iostream>
#include <cmath>
#include <unistd.h>

int main()
{
	int num;
	int guess;
	int tries = 1;

	srand(time(NULL));
	num = (rand() % 100) + 1;

	std::cout << "******* NUMBER GUESSING GAME *******" << '\n';;
	// uncomment this to display the number (for test purposes only)
	/* std::cout << "Number: " << num << '\n'; */
	do
	{
		std::cout << "Guess a number between 1..100: ";
		std::cin >> guess;
		if(guess == num)
		{
			std::cout << "Revealing number in..." << '\n';;
			for(int i=3; i>=1; i--)
			{
				usleep(1000000);
				std::cout << i << '\n';
			}
			usleep(2000000);
			std::cout << ">> " << num << " <<" << '\n';
			usleep(2000000);
			std::cout << "VICTORY!" << '\n';
			usleep(2000000);
			std::cout << "You've guessed the number!" << '\n';;
			usleep(2000000);
			std::cout << "Number of tries: " << tries << '\n';
		}
		else if(guess > 100 || guess < 1)
		{
			std::cout << "Only guess between 1..100" << '\n';
			std::cout << '\n';
		}
		else if(guess > num) 
		{
			std::cout << "Too high!" << '\n';
			std::cout << '\n';
		}
		else if (guess < num)
		{
			std::cout << "Too low!" << '\n';
			std::cout << '\n';
		}
		tries++;
	}
	while(guess != num);
	
	std::cout << "************************************" << std::endl;

	return 0;
}
