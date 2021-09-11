#include "CppUnitTest.h"
#include <SubFunc.h>

using namespace Microsoft::VisualStudio::CppUnitTestFramework;

namespace CITesterCppConsoleTest
{
	TEST_CLASS(CITesterCppConsoleTest)
	{
	public:
		
		TEST_METHOD(testAddPositive)
		{
			int x = 30;
			int y = 12;
			Assert::AreEqual(42, add(x, y));
		}
		TEST_METHOD(testAddNegative)
		{
			int x = 30;
			int y = -43;
			Assert::AreEqual(-13, add(x, y));
		}

	};
}
