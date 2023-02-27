public class stringMethods
{
	public static void main(String[] args)// main class
	{
		// String = a reference data type that can store one or more characters
		//			reference data types have access to useful methods
		String name ="monad";
		// boolean result = name.equals("monad");
		// boolean result = name.equalsIgnoreCase("Monad");// this will ignore any upper case
		// int result = name.length();
		// char result = name.charAt(0);
		// int result = name.indexOf("a");
		// boolean result = name.isEmpty();
		// String result = name.toUpperCase();
		// String result = name.toLowerCase();
		// String result = name.trim();// remove any whitespaces
		String result = name.replace('o', 'a');// replace(oldChar, newChar)

		System.out.println(result);
	}// end main class
}// end class
