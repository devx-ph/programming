import java.util.ArrayList;// ArrayList library

public class arrayList
{
	public static void main(String[] args)// main class
	{
		// ArrayList = a resizable array.
		//			   Elements can be added and removed after compilation phase 
		//			   store reference data types
		ArrayList<String> food=new ArrayList<String>();
		food.add("pizza");
		food.add("hamburger");
		food.add("hotdog");
		food.set(0,"sushi");// '.set(index,element);'
		food.remove(2);
		food.clear();
		// when using ArrayList use '.size()' instead of '.length'
		for(int i=0;i<food.size();i++)// for loop
		{
			// code block to be executed
			System.out.println(food.get(i));// '.get' to get all the indices of the ArrayList
		}// end for loop
	}// end main class
}// end class
