#include <iostream>

int get_digit(const int number);
int sum_odd_digits(const std::string card_number);
int sum_even_digits(const std::string card_number);

int main()
{
	std::string card_number;
	int result = 0;

	std::cout << "Enter a credit card #: ";
	std::cin >> card_number;

	result = sum_even_digits(card_number) + sum_odd_digits(card_number);

	if(result % 10 == 0)
	{
		std::cout << card_number << " is valid\n";
	}
	else
	{
		std::cout << card_number << " is not valid\n";
	}

	return 0;
}

int get_digit(const int number)
{
	return number % 10 + (number / 10 % 10);
}

int sum_odd_digits(const std::string card_number)
{
	int sum = 0;

	for(int i = card_number.size() - 1; i >= 0; i-=2)
	{
		sum += card_number[i] - '0';
	}

	return sum;
}

int sum_even_digits(const std::string card_number)
{
	int sum = 0;

	for(int i = card_number.size() - 2; i >= 0; i-=2)
	{
		sum += get_digit((card_number[i] - '0') * 2);
	}

	return sum;
}

// Luhn Algorithm
// 1. Double every second digit from right to left 
//	  if doubled number is 2 digits, split them
// 2. Add all single digits from step 1
// 3. Add all odd numbered digits from right to left
// 4. Sum results from steps 2 & 3
// 5. If step 4 is divisible by 10, # is valid 
