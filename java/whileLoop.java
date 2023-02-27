import java.util.Scanner;

public class whileLoop
{
	public static void main(String[] args)
	{
		// while loop = executes a block of code as long as it's condition remains true
		Scanner scanner = new Scanner(System.in);
		String name = "";
		while(name.isBlank()) // 'isBlank()' if it's empty continue the loop
		{
			System.out.print("Enter your name: ");	
			name = scanner.nextLine();
		}		
		System.out.println("Hello "+name);
		scanner.close(); // always close scanner if using, it's good practice
	}// end main class
}// end class
