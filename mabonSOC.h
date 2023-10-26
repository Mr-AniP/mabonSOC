#include<iostream>
#include<hls_math.h>
#include "ap_int.h"
#include "ap_fixed.h"

typedef ap_uint<5> IndexTYPE;
typedef ap_uint<1> ONEBITTYPE;
typedef ap_uint<14> TimeType;
typedef ap_ufixed<15,2> FloatType;
typedef ap_ufixed<18,5> LogType;
typedef ap_ufixed<27,14> castType;
typedef ap_fixed<32,14> CTYPE2;


//typedef int IndexTYPE;
//typedef int ONEBITTYPE;
//typedef int TimeType;
//typedef float FloatType;
//typedef float LogType;
//typedef float castType;
//typedef float CTYPE2;


typedef int INTTYPE;
#define N 16
#define Time 10000
//#define f 4
//#define a N/f
void mabonsoc(INTTYPE *Out,INTTYPE *reward);
