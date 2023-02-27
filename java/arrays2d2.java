public class arrays2d2
{
	public static void main(String[] args)// main class
	{
		// 2d array example 2
		// alternative way to write 2d arrays
		String[][] cars={{"Camaro", "Corvette", "Silverado"},
						 {"Mustang", "180sx", "Rx-7"},
						 {"r32", "r34", "ae86"}};


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
