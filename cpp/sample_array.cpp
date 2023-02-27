#include <iostream>

int main()
{
	int array[] = {10,1,9,2,5};
	int size = sizeof(array)/sizeof(array[0]);
	int i = 3;

	for(int element : array)
	{
		std::cout << element << ' ';
	}
	std::cout << '\n';
	std::cout << array[0+1] << '\n';;
	std::cout << "size of an array: " << size -i -1 << '\n';
	
	return 0;
}

