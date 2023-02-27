public class arrays2
{
	public static void main(String[] args)// main class
	{
		// alternative way to create an array
		String[] cars=new String[3];
		cars[0]="180sx";
		cars[1]="Rx-7";
		cars[2]="Mustang";

		for(int i=0;i<cars.length;i++)// for loop
		{
			// code block to be executed
			System.out.println(cars[i]);
		}// end for loop
	}// end main class
}// end class
