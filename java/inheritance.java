public class inheritance
{
	public static void main(String[] args)// main class
	{
		// inheritance = the process where one class acquires,
		//				 the attributes and methods of another
		Car car=new Car();
		// car.go();
		Bicycle bike=new Bicycle();
		// bike.stop();
		System.out.println(car.doors);
		System.out.println(bike.pedals);
	}// end main class
}// end class
class Vehicle// parent class
{
	double speed;

	void go()
	{
		System.out.println("This vehicle is moving");
	}// end method go 
	void stop()
	{
		System.out.println("This vehicle is stopped");
	}// end method stop 
}// end class Vehicle
class Car extends Vehicle// child class
{
	int wheels=4;
	int doors=4;
}// end class Car 
class Bicycle extends Vehicle// child class 
{
	int wheels=2;
	int pedals=2;

}// end class Bicycle
