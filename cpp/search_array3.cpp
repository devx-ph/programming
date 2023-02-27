#include <iostream>

int search_player(std::string top_players[],int size, std::string player);
std::string newb_players(std::string bots[],int size2,std::string player);

int main()
{
	std::string top_players[]={"monad","ArKaDeSu","blanc","illfated","devx"};
	std::string bots[]={"bun","momo"};
	int size=sizeof(top_players)/sizeof(top_players[0]);
	int size2=sizeof(bots)/sizeof(bots[0]);

	int result;
	std::string newbs;

	std::string player;
	std::cout<<"Input IGN: ";
	std::getline(std::cin, player);

	result=search_player(top_players,size,player);
	newbs=newb_players(bots,size2,player);

	if(result!=-1)
	{
		std::cout<<player<<" is currently top "<<result<< '\n';
	}
	else if(newbs!="pro")
	{
		std::cout<<player<<" is not on top 5"<< '\n';
	}
	else
	{
		std::cout<<"Player does not exist."<< '\n';
	}


	return 0;
}
int search_player(std::string top_players[],int size, std::string player)
{
	for(int i=0;i<size;i++)
	{
		if(top_players[i]==player)
		{
			return i+1;
		}
	}
	return -1;
}
std::string newb_players(std::string bots[],int size2,std::string player)
{
	for(int i=0;i<size2;i++)
	{
		if(bots[i]==player)
		{
			return player;
		}
	}
	return "pro";
}
