#include <iostream>

int seach_array(int array[],int size,int element);

int main()
{
	int numbers[]={1,2,3,4,5,6,7,8,9,10};
	int size=sizeof(numbers)/sizeof(numbers[0]);
	// alternative way
	/* int size=sizeof(numbers)/sizeof(int); */
	int index;
	int my_num;
	

	std::cout << "Enter element to search for: ";
	std::cin >> my_num;

	index=seach_array(numbers,size,my_num);

	if(index!=-1)
	{
		std::cout << my_num << " is at index " << index << '\n';	
	}
	else
	{
		std::cout << my_num << " is not in the array" << '\n';
	}

	return 0;
}
int seach_array(int array[],int size,int element)
{
	for(int i=0; i<size; i++)
	{
		if(array[i]==element)
		{
			return i+1;
		}
	}
	// nothing was found/NULL
	// -1 in programming is a sentinel value
	return -1;
}
