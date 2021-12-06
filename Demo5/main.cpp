#include <stdio.h>
#include <stdlib.h>
#include <config.h>

#ifdef USE_MYMATH
    #include "math/MathFunctions.h"
#else
    #include <math.h>
#endif

//求x的y次方（次幂）
int main(int argc, char *argv[])
{
    if (argc < 3){
        printf("请依次输入: 底数 指数 \n");
        return 1;
    }
    double base = atof(argv[1]);
    int exponent = atoi(argv[2]);

    #ifdef USE_MYMATH
        printf("用自己的函数库\n");
        double result = power(base, exponent);
    #else
        printf("用math函数库\n");
        double result = pow(base, exponent);
    #endif
        printf("%g ^ %d is %g\n", base, exponent, result);
        return 0;
}