import java.util.*;

public class arrayList2d
{
	public static void main(String[] args)// main class
	{
		// 2D ArrayList = a dynamic list of lists 
		//				  you can change the size of these list during runtime
		ArrayList<ArrayList<String>> groceryList = new ArrayList<>();

		ArrayList<String> bakeryList=new ArrayList<>();// bakery list
		bakeryList.add("pasta");
		bakeryList.add("garlic bread");
		bakeryList.add("donuts");
		
		ArrayList<String> produceList = new ArrayList<>();// produce list
		produceList.add("tomatoes");
		produceList.add("zucchini");
		produceList.add("peppers");

		ArrayList<String> drinksList = new ArrayList<>();// drinks list
		drinksList.add("soda");
		drinksList.add("coffee");

		groceryList.add(bakeryList);
		groceryList.add(produceList);
		groceryList.add(drinksList);

		System.out.println(groceryList.get(2).get(1));
	}// end main class
}// end class
