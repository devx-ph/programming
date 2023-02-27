import java.util.Scanner;

public class nestedLoops
{
	public static void main(String[] args)// main class
	{
		// nested loops = a loop inside a loop
		Scanner scanner = new Scanner(System.in);
		int rows;
		int columns;
		String symbol="";

		System.out.print("Enter number of rows: ");
		rows=scanner.nextInt();
		System.out.print("Enter number of columns: ");
		columns=scanner.nextInt();
		System.out.print("Enter symbol to use: ");
		symbol=scanner.next();
		
		for(int i=0;i<rows;i++)// for loop rows
		{
			// code block to be executed
			for(int j=0;j<columns;j++)// for loop columns
			{
				// code block to be executed
				System.out.print(symbol);
			}// end for loop
			System.out.println();
		}// end for loop
	}// end main class
}// end class
