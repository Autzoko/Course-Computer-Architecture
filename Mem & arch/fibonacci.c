#include <stdio.h>

int main()
{
    int i, n, num[10];
    num[0] = 1;
    num[1] = 1;
    for(i = 2; i < 10; i++)
    {
        num[i] = num[i-1] + num[i-2];
    }
    for(i = 0; i < 10; i++)
    {
        //printf("%d,", num[i]);
        int a = &num[i];
        printf("%x,", a);
    }
    return 0;
}