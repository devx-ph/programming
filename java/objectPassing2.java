public class objectPassing2
{
	public static void main(String[] args)// main class
	{
		Door door=new Door();
		Person person1=new Person("monad");
		Person person2=new Person("kristian");

		door.status(person2);
	}// end main class
}// end class
class Door
{
	void status(Person person)
	{
		System.out.println(person.name+" has entered the building.");
	}// end method
}// end class Door
class Person
{
	String name;
	Person(String name)
	{
		this.name=name;
	}// end constructor
}// end class Person
