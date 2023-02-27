public class Pizza
{
	String bread;
	String sauce;
	String cheese;
	String topping;

	Pizza(String bread, String sauce, String cheese, String topping)
	{
		this.bread = bread;	
		this.sauce = sauce;	
		this.cheese = cheese;	
		this.topping = topping;	
	}// end constructor pizza
	Pizza(String bread, String sauce, String cheese)
	{
		this.bread = bread;	
		this.sauce = sauce;	
		this.cheese = cheese;	
	}// end constructor pizza
	Pizza(String bread, String sauce)
	{
		this.bread = bread;	
		this.sauce = sauce;	
	}// end constructor pizza
	Pizza(String bread)
	{
		this.bread = bread;	
	}// end constructor pizza
}// end class pizza
