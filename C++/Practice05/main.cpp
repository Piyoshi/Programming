// スコープ演算子

#include <iostream>
#include <string.h>

char name[] = "グローバルなしおりさん";

class Shouhin
{
public:
	Shouhin();
private:
	char name[100];
};

Shouhin::Shouhin()
{
	char name[] = "ローカルなしおりさん";
	strcpy(Shouhin::name, "メンバ変数のしおりさん");

	std::cout << "name = " << name << std::endl;
	std::cout << "name = " << Shouhin::name << std::endl;
	std::cout << "name = " << ::name << std::endl;
}

int main()
{
	Shouhin myShouhin;
	return 0;
}
