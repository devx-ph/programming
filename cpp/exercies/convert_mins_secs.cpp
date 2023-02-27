#include <iostream>

int convert(int minutes);

int main()
{
	int minutes;

	std::cout << "Enter minutes to convert to seconds: ";
	std::cin >> minutes;

	std::cout << minutes << " minutes is " << convert(minutes) << " in seconds." << '\n';

	return 0;
}

int convert(int minutes)
{
	return minutes * 60;
}
