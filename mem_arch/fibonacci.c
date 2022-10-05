#include <stdio.h>

int main()
{
    int i, num[10];
    num[0] = 1;
    num[1] = 1;
    for(i = 2; i < 10; i++)
    {
        num[i] = num[i-1] + num[i-2];
    }
    for(i = 0; i < 10; i++)
    {
        int a = &num[i];
        printf("%d's memory address is: %x.\n", num[i], a);
    }
    return 0;
}