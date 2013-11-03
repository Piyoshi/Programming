#include <iostream>

int AddNum(int num1, int num2);

int main()
{
	int x = AddNum(10, 30);
	std::cout << "xの値は：" << x << std::endl;
	return 0;
}


int AddNum(int num1, int num2)
{
	return num1 + num2;
}
