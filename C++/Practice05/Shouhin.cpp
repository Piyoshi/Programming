#include "Shouhin.h"

Shouhin::Shouhin()
{
	char name[] = "ローカルなしおりさん";
	strcpy(Shouhin::name, "メンバ変数のしおりさん");

	std::cout << "name = " << name << std::endl;
	std::cout << "name = " << Shouhin::name << std::endl;
	std::cout << "name = " << ::name << std::endl;
}
