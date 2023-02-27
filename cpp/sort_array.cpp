#include <iostream>

void sort(int array[], int size);


int main()
{
	// bubble sort algorithm
	//              10 1  9  2  8  3  7  4  6  5
	int array[] = {10, 1, 9, 2, 8, 3, 7, 4, 6, 5};
	// size of array divided by one of the array elements
	int size = sizeof(array)/sizeof(array[0]);
	
	sort(array, size);

	for(int element : array)
	{
		std::cout << element << " ";
	}// end for loop
	std::cout << '\n';

	return 0;
}
void sort(int array[], int size)
{
	int temp;
	//                 10-1
	//          0    <   9
	for(int i = 0; i < size -1; i++) // <<<<<< outer loop
	{
		//          0    <  10-0-1 = 9
		for(int j = 0; j < size -i -1; j++) // <<<<<<< inner loop - that can ran many times as long as it is true
											//						increaments will stop if the condition is false,
											//						so the value of the variable incremented will be set to int
											//						j = 0 as the code it sets.
		{
			if(array[j] > array[j+1])
			{
				temp = array[j];
				array[j] = array[j+1];
				array[j+1] = temp;
			}// end if statement
		}// end inner for loop
	}// end outer for loop
}
