public class staticKeyword
{
	public static void main(String[] args)// main class
	{
		// static = modifier. A single copy of a variable/method is created and shared.
		//			The class "owns" the static member
		Friend friend1=new Friend("Spongbob");
		Friend friend2=new Friend("Patrick");
		Friend friend3=new Friend("Squidward");
		Friend friend4=new Friend("Sandy");

		Friend.displayFriends();
	}// end main class
}// end class
class Friend 
{
	String name;
	static int numberOfFriends;
	Friend(String name)
	{
		this.name=name;
		numberOfFriends++;
	}// end constructor Friend
	
	static void displayFriends()
	{
		System.out.println("You have "+numberOfFriends+" friends.");
	}// end method 
}// end class Friend
