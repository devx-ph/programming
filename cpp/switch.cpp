#include <iostream>

int main()
{
	// switch = alternative to using maing "else if" statements 
	//			compare one value agains matching cases
	
	int month;

	std::cout << "Select a number (1-12): ";
	std::cin >> month;

	switch(month)
	{
		case 1:
			std::cout << "January is selected." << '\n';
			break;

		case 2:
			std::cout << "Febuary is selected." << '\n';
			break;

		case 3: 
			std::cout << "March is selected." << '\n';
			break;

		case 4:
			std::cout << "April is selected." << '\n';
			break;

		case 5:
			std::cout << "May is selected." << '\n';
			break;

		case 6: 
			std::cout << "June is selected." << '\n';
			break;

		case 7:
			std::cout << "July is selected." << '\n';
			break;

		case 8:
			std::cout << "August is selected." << '\n';
			break;

		case 9:
			std::cout << "September is selected." << '\n';
			break;

		case 10: 
			std::cout << "October is selected." << '\n';
			break;
	
		case 11:
			std::cout << "November is selected." << '\n';
			break;

		case 12:
			std::cout << "December is selected." << '\n';
			break;

		default:
			std::cout << "Invalid selection." << std::endl;
	}

	return 0;
}
