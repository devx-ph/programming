public class oop
{
	public static void main(String[] args)// main class
	{
		// object = an instance of a class that may contain attributes and methods 
		// example: (phone, desk, computer, coffee cup)
		Car myCar=new Car();	
		System.out.println(myCar.make);
		System.out.println(myCar.model);
		System.out.println(myCar.year);
		System.out.println(myCar.color);
		System.out.println(myCar.price);

		myCar.drive();
		myCar.brake();
	}// end main class
}// end class
class Car
{
	String make="Nissan";
	String model="180sx";
	String year="1960";
	String color="Grey";
	double price=50000.00;

	void drive()
	{
		System.out.println("You drive the car");
	}// end method drive
	void brake()
	{
		System.out.println("You step on the break");
	}// end method brake
}// end class car
