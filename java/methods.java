public class methods
{
	public static void main(String[] args)// main class
	{
		// method = a block of code that is executed whenever it is called upon
		String name = "monad";
		int age = 22;
		hello(name, age);
	}// end main class
	static void hello(String name, int age)
	{
		System.out.println("Hello "+name);
		System.out.println("You are "+age+" years old");
	}// end method hello
}// end class
