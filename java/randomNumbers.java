import java.util.Random; // import this library when using random numbers 

public class randomNumbers
{
	public static void main(String[] args)
	{
		Random random = new Random();
		
		// int x = random.nextInt(6)+1;
		// double y = random.nextDouble();
		boolean z = random.nextBoolean();

		System.out.println(z);
	}
}
