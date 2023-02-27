import java.util.Scanner;

public class logicalOperators2
{
	public static void main(String[] args)
	{
		Scanner scanner=new Scanner(System.in);// new Scanner	
		System.out.println("You are playing a game! press q or Q to quit");
		String response = scanner.next();// scanner response
		if((response.equals("q"))||(response.equals("Q")))// if statement
		{
			System.out.println("You quit the game");	
		}
		else
		{
			System.out.println("You are still playing the game");
		}// end if else
	}// end main
}// end class
