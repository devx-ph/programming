// Scanner will handle user inputs
import java.util.Scanner; // import this library when using Scanner 

public class userInput
{
	public static void main(String[] args)
	{
		Scanner scanner = new Scanner(System.in);	

		System.out.print("What is your name?: ");
		String name = scanner.nextLine();
		System.out.print("How old are you?: ");
		int age = scanner.nextInt();
		// use after using 'nextInt();' to clear the new line '\n' of the scanner
		scanner.nextLine();
		System.out.print("What is your favorite food?: ");
		// 'nextLine();' always clear the scanner after the input
		String food = scanner.nextLine();

		System.out.println("Hello " + name);
		System.out.println("You are " + age + " years old");
		System.out.println("You like " + food);
	}// end main
}// end class
