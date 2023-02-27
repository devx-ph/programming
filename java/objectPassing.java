public class objectPassing
{
	public static void main(String[] args)// main class
	{
		Garage garage=new Garage();
		Car car1=new Car("BMW");
		Car car2=new Car("180sx");

		garage.park(car2);
	}// end main class
}// end class
class Garage
{
	void park(Car car)
	{
		System.out.println("The "+car.name+" is parked in the garage.");	
	}// end method park
}// end class Garage
class Car 
{
	String name;
	Car(String name)
	{
		this.name=name;
	}// end constructor
}// end class Car 
