#include <stdio.h>

int main()
{
    unsigned long long int n, N, r, count;

    while(scanf("%llu", &n)!=EOF){
        N = 1;
        count = 1;
        do{
            N = N * 10 + 1;
            r = N % n;
            ++count;
        }while(r);

        printf("%llu\n", count);
    }
    return 0;
}
