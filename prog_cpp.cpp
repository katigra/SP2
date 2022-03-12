#include <iostream>
#include <stdio.h>
using namespace std;

unsigned char chet(unsigned char num)
{
    return num << 1;
}

unsigned char nechet(unsigned char num)
{

    return num >> 1 | num & 0x10000000;
}

int main()
{
	unsigned char mass[10] = {9, 123, 95, 22, 91, 52, 251, 1, 30, 76};

    for (int i = 0; i < 10; i++)
    {
        if (i % 2 == 0)
            mass[i] = chet(mass[i]);
        else
            mass[i] = nechet(mass[i]);
    }

    for (int i = 0; i < 10; i++)
    {
        cout << int(mass[i]) << endl;
    }

    return 0;
}
