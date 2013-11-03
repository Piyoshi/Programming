#include <stdio.h>

class MikanBox
{
public:
	MikanBox();
	~MikanBox();
	void Add(int addmikan);
	void Del(int delmikan);
	void Empty();
	int GetTotal(){ return total; };
private:
	int total;
};
