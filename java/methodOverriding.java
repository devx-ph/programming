public class methodOverriding
{
	public static void main(String[] args)// main class
	{
		// method overriding = Declaing a method in sub class,
		//					   which is already present in parent class.
		//					   done so that a child class can give it's own implementation
		Animal animal=new Animal();
		Dog dog=new Dog();
		dog.speak();
	}// end main class
}// end class methodOverriding
class Animal
{
	void speak()
	{
		System.out.println("The animal speaks");
	}// end method speak
}// end class Animal
class Dog extends Animal 
{
	void speak()
	{
		// Override 
		System.out.println("The dog goes *bark*");
	}// end method speak
}// end class Dog
