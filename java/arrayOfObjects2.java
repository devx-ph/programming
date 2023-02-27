public class arrayOfObjects2
{
	public static void main(String[] args)// main class
	{
		Person person1=new Person("monad");
		Person person2=new Person("Zekroe");
		Person person3=new Person("kristian");

		Person[] group={person1,person2,person3};

		System.out.println(group[0].name);
		System.out.println(group[1].name);
		System.out.println(group[2].name);
	}// end main class
}// end class
class Person 
{
	String name;
	Person(String name)
	{
		this.name=name;
	}// end constructor
}// end clas Food
