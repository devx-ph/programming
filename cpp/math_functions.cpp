#include <iostream>
// libraries in all math related functions in c++
#include <cmath>

int main()
{

	double x = 3.94;
	double y = 4;
	double z;

	// 'std::max' is determining what is the highest number
	/* z = std::max(x, y); */

	// 'std::min' is determining what is the lowest number 
	/* z = std::min(x, y); */	

	// power function
	/* z = pow(2, 4); */

	// square root
	/* z = sqrt(8281); */

	// absolute
	/* z = abs(69); */

	// round off
	/* z = round(x); */

	// round up
	/* z = ceil(x); */

	// round down
	z = floor(x);

	/* std::cout << "Max: " << z << '\n'; */
	/* std::cout << "Min: " << z << '\n'; */
	std::cout << z << '\n';

	return 0;
}
