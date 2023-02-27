public class overloadedMethods
{
	public static void main(String[] args)// main class
	{
		// overloaded methods = methods that share the same name but have different parameters 
		//						method name + parameters = method signature
		System.out.println(add(5,3,2,5));	
	}// end main class
	static int add(int a,int b)
	{
		System.out.println("This is overloaded method #1");
		return a+b;
	}// end method add
	static int add(int a,int b,int c)
	{
		System.out.println("This is overloaded method #2");
		return a+b+c;
	}// end method add
	static int add(int a,int b,int c, int d)
	{
		System.out.println("This is overloaded method #3");
		return a+b+c+d;
	}// end method add
}// end class
