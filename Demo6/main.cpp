#include <stdio.h>
#include <stdlib.h>
#include <config.h>

#ifdef HAVE_POW
    #include "math/MathFunctions.h"
#else
    #include <math.h>
#endif

//求x的y次方（次幂）
int main(int argc, char *argv[])
{
    if (argc < 3){
        printf("当前主版本号：%d，副版本号：%d\n", Demo6_VERSION_MAJOR, Demo6_VERSION_MINOR);
        printf("请依次输入: 底数 指数 \n");
        return 1;
    }
    double base = atof(argv[1]);
    int exponent = atoi(argv[2]);


    #ifdef HAVE_POW
        printf("用自己的函数库\n");
        double result = power(base, exponent);
    #else
        printf("用math函数库\n");
        double result = pow(base, exponent);
    #endif
        printf("%g ^ %d is %g\n", base, exponent, result);
        return 0;
}