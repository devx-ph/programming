#include <iostream>

double getTotal(double prices[], int size);

int main()
{
	double prices[] = {49.99, 15.05, 75, 9.99};
	// get the size of an array first before passing it to function
	int size = sizeof(prices)/sizeof(prices[0]);
	// add second parameter in getTotal()
	// when passing array to a function only need to put array name
	double total = getTotal(prices, size);
	
	std::cout << "$" << total << '\n';

	return 0;
}

// if function accepts an array, it decays into a pointer
// and the function no longer knows the size of the array
double getTotal(double prices[], int size)
{
	double total = 0;

	for(int i=0; i<size; i++)
	{
		total += prices[i];
	}

	return total;
}
