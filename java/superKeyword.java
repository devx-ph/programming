public class superKeyword
{
	public static void main(String[] args)// main class
	{
		// super = keyword refers to the superclass (parent) of an object 
		//		   very similar to the "this" keyword
		Hero hero1 = new Hero("Batman", 42, "$$$");	
		Hero hero2 = new Hero("Superman", 43, "everything");	

		System.out.println(hero2.toString());
	}// end main class
}// end class superKeyword
class Person// parent/super class
{
	String name;
	int age;
	Person(String name, int age)
	{
		this.name = name;
		this.age = age;
	}// end constructor Person
	public String toString()
	{
		return this.name+"\n"+this.age+"\n";
	}// end 
}// end class Person
class Hero extends Person// child class extends super/parent class Person
{
	String power;
	Hero(String name, int age, String power)
	{
		super(name, age);
		this.power = power;
	}// end constructor Hero
	public String toString()
	{
		return super.toString()+this.power;
	}// end 
}// end class Hero
