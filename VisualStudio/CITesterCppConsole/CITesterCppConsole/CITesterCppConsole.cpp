#include <iostream>
#include <cassert>
#include "SubFunc.h"

void testAddConst() {
	const int x = 2;
	const int y = 3;
	int z = add(x, y);
	assert(5 == z);
}

void testAddCin() {
	int x, y;
	std::cin >> x >> y;
	int z = add(x, y);
	assert(x + y == z);
}

int main(int argc, char *argv[])
{
	testAddConst();
	// testAddCin();
	std::cout << "ok" << std::endl;
	return 0;
}