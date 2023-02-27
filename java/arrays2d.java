public class arrays2d 
{
	public static void main(String[] args)// main class
	{
		// 2D array = an array of arrays
		String[][] cars=new String[3][3]; // 2d arrays of cars
		cars[0][0]="Camaro";
		cars[0][1]="Corvette";
		cars[0][2]="Silverado";
		cars[1][0]="Mustang";
		cars[1][1]="180sx";
		cars[1][2]="Rx-7";
		cars[2][0]="r32";
		cars[2][1]="r34";
		cars[2][2]="ae86";

		for(int i=0;i<cars.length;i++)// for loop rows
		{
			// code block to be executed
			for(int j=0;j<cars[i].length;j++)// for loop columns
			{
				// code block to be executed
				System.out.print(cars[i][j]+" ");
			}// end for loop
			System.out.println();
		}// end for loop
	}// end main class
}// end class
// in 2d arrays the first brackets '[]' are the rows 
// the second brackets '[]' are the columns
