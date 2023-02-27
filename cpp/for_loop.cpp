#include <iostream>
#include <unistd.h>

int main()
{
					  // i-=2 to iterate counting by twos
	for(int i=10; i >=1; i--)
	{
		std::cout << i << '\n';
		usleep(1000000);
	}

	std::cout << "HAPPY NEW YEAR!" << std::endl;

	return 0;
}
