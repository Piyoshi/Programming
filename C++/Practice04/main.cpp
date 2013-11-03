// 標準入力ストリーム
#include <iostream>

int main(){
	std::cout << "****標準入力テスト****" << std::endl;
	
	int num;
	std::cout << "数字を入力してください：";
	std::cin >> num;
	std::cout << "入力された数字は「" << num << "」です。" << std::endl;

	char buf[100];
	std::cout << "文字を入力してください：";
	// std::cin.getline(buf, sizeof(buf));
	std::cin >> buf;
	std::cout << "入力された文字は「" << buf << "」です。" << std::endl;

	return 0;
}
