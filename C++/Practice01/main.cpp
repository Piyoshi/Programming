#include <iostream>
#include "MikanBox.h"

int main()
{
	MikanBox myMikanBox;

	myMikanBox.Add(5);
	myMikanBox.Del(2);

	std::cout << "箱の中のみかん：" << myMikanBox.GetTotal() << "個" << std::endl;

	return 0;
}
