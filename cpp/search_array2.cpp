#include <iostream>

std::string search_players(std::string players[],int calculate_size,std::string player);

int main()
{
	std::string players[]={"monad","ArKaDeSu","illfated","blanc","Pentaliftu","Smooth.DemiGod","kristian"};
	int calculate_size=sizeof(players)/sizeof(players[0]);
	// alterative way
	/* int calculate_size=sizeof(players)/sizeof(int); */
	std::string player;
	std::string result;

	std::cout<<"*******************"<< '\n';
	std::cout<<"Player Leaderboards"<< '\n';
	std::cout<<"*******************"<< '\n';

	std::cout<<"Enter your username: ";
	std::cin>>player;

	result=search_players(players,calculate_size,player);

	if(result!="Error")
	{
		std::cout<<result<<" is on the leaderboards"<< '\n';
	}
	else
	{
		std::cout<<"Player not found."<< '\n';
	}
	
	return 0;
}
std::string search_players(std::string players[],int calculate_size,std::string player)
{
	for(int i=0;i<calculate_size;i++)
	{
		if(players[i]==player)
		{
			return player;
		}
	}
	return "Error";
}
