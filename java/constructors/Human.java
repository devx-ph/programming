public class Human
{
	String name;
	int age;
	double weight;
	Human(String name,int age,double weight)
	{
		this.name=name;
		this.age=age;
		this.weight=weight;
	}// end constructor
	void eat()
	{
		System.out.println(this.name+" is eating");
	}// end
	void drink()
	{
		System.out.println(this.name+" is drinking");
	}// end
}// end class
