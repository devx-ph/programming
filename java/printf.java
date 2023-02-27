public class printf
{
	public static void main(String[] args)// main class
	{
		// printf() = an optimal method to control, format, and display text to the console window
		//			  two arguments = format string + (object/variable/value)
		//			  % [flags] [precision] [width] [conversion-character]
		boolean myBoolean=true;
		char myChar='@';
		String myString="monad";
		int myInt=22;
		double myDouble=1000000;

		// [conversion-character]
		// System.out.printf("%b \n",myBoolean);// boolean
		// System.out.printf("%c \n",myChar);// characters
		// System.out.printf("%s \n",myString);// string 
		// System.out.printf("%d \n",myInt);// integers 
		// System.out.printf("%.2f \n",myDouble);// double 
		// [width]
		// minimum number of characters to be writter as output
		// System.out.printf("Hello %-10s \n",myString);
		// [precision]
		// sets number of digits of precision when outputting floating-point values 
		// System.out.printf("You have this much money %.2f \n",myDouble);
		// [flags]
		// adds an effect to the output based on the flag added to format specifier
		// - : left-justify
		// + : output a plus (+) or minus (-) sign for numeric value 
		// 0 : number values are zero padded
		// , : comma grouping separator if number > 1000
		
		System.out.printf("You have this much money %,.2f \n",myDouble);
	}// end main class
}// end class
