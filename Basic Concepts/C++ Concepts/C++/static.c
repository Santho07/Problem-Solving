#include <stdio.h>
static int num = 100;
int main()
{
    series();

    printf("\t*%d", num);
}
int series()
{
    int num = 200;
    num += 23;
    printf("%d\n", num);
    if(num<100) return series();
    else return num;
}
