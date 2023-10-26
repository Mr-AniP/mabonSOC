#include "mabonSOC.h"
void mabonsoc(INTTYPE *Out,INTTYPE *reward){
#pragma HLS PIPELINE II=48
#pragma HLS INTERFACE s_axilite port=Out bundle=BUS_A
#pragma HLS INTERFACE s_axilite port=reward bundle=BUS_A
#pragma HLS INTERFACE s_axilite port=return bundle=BUS_A
static TimeType  T[N], X[N] ,t=0;
static IndexTYPE Index=0;
FloatType UCB[N],temp;
LogType m;
#pragma HLS ARRAY_PARTITION variable=UCB complete dim=1
#pragma HLS ARRAY_PARTITION variable=T complete dim=1
#pragma HLS ARRAY_PARTITION variable=X complete dim=1
X[Index]+=(ONEBITTYPE)(*reward);
T[Index]+=1;
m=((LogType)hls::log((castType)t))<<1;
Index=0;
	if(t<N){
		T[t]=1;
		X[t]=0;
		Index=t;
	}
	else{
		L1:for(int i=0;i<N;i++){
//#pragma HLS unroll factor=8
#pragma HLS PIPELINE
			temp=(FloatType)hls::sqrt((castType)m/T[i]);
			UCB[i]=(FloatType)((CTYPE2)X[i]/T[i]) +temp;
//			UCB[i]+=temp;
		}

		L2:for(int i=1;i<N;i++){
#pragma HLS PIPELINE
			if(UCB[Index]<UCB[i]){
				Index=i;
			}
		}
	}
	*Out=(INTTYPE)Index;
	t++;
}
