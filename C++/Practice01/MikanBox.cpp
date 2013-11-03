#include "MikanBox.h"

MikanBox::MikanBox()
{
	total = 0;
}

MikanBox::~MikanBox()
{
	printf("みかん箱オブジェクトの任務完了\n");
}

void MikanBox::Add(int addmikan)
{
	total += addmikan;
}

void MikanBox::Del(int delmikan)
{
	total -= delmikan;
	if(total < 0)	Empty();
}

void MikanBox::Empty()
{
	total = 0;
}
