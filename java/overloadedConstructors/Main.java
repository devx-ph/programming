public class Main 
{
	public static void main(String[] args)// main class
	{
		// overloaded constructors = multiple constructors within a class with the same name, 
		//							 but have different parameters
		//							 name+parameters=signiture
		Pizza pizza1 = new Pizza("thicc crust", "tomato", "eden", "ham");
		Pizza pizza2 = new Pizza("soft crust", "tomato", "blue cheese");
		Pizza pizza3 = new Pizza("soft crust", "tomato");
		Pizza pizza4 = new Pizza("thicc crust");
		System.out.println("Here are the ingredients of your pizza:");	
		System.out.println(pizza4.bread);
	}// end main class
}// end class
