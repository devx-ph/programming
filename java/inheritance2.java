public class inheritance2
{
	public static void main(String[] args)// main class
	{
		Eyes eyes=new Eyes();
		Nose nose=new Nose();
		eyes.blink();
		nose.smell();
		System.out.println("Number of eyes "+eyes.numberOfEyes);
		System.out.println("Number of nose "+nose.numberOfNose);
	}// end main class
}// end class inheritance2
class Human// parent class
{
	void blink()
	{
		System.out.println("You blinked");
	}// end method blink
	void smell()
	{
		System.out.println("You smelled something strange");
	}// end method smell
}// end class Human
class Eyes extends Human// child class
{
	int numberOfEyes=2;
}// end class Eyes
class Nose extends Human// child class
{
	int numberOfNose=1;
}// end class Nose
