/**
 * This C++ file exists only to ensure that CMake works correctly.
 * 
 * I'm not sure if CMake/CPack works if there is nothing to build, so
 * I just create a Hello World C++ project, compile it, but then don't
 * install it. 
 */
#include <iostream>
int main(int nArgs, char **rgszArgs)
{
	std::cout << "Hello World!" << std::endl << std::flush;
	return 0;
}