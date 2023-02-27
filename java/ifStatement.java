public class ifStatement
{
	public static void main(String[] args)
	{
		// if statement = performs a block of code if it's condition evaluates to be true 	
		int age=100; // variable age
		if(age<=0) // if statement
		{
			System.out.println("Invalid age!");
		}
		else if(age>=100) // else if statement 1
		{
			System.out.println("Wow you have reached immortality!");
		}
		else if(age>=21) // else if statement 2
		{
			System.out.println("You are a big boy now!");	
		}
		else 
		{
			System.out.println("You are underage!");
		}// end if statement
	}// end main class
}// end class
