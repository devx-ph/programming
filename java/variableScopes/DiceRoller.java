import java.util.Random;

public class DiceRoller
{
	// Random random; // global variable
	// int number; // global variable
	DiceRoller()
	{
		Random random=new Random();// local variable
		int number=0;// local variable
		roll(random, number);
	}// end constructor
	void roll(Random random, int number)
	{
		number=random.nextInt(6)+1;	
		System.out.println(number);
	}// end method 
}// end class
