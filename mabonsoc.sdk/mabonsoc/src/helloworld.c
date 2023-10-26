/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include<stdlib.h>
#include <xtime_l.h>
#include "platform.h"
//#include<time.h>
#include "xil_printf.h"
#include "xmabonsoc.h"
#include "xparameters.h"

#define N 4
#define Time 10000
typedef int INTTYPE;
XMabonsoc myIP;

int IP_Init(){
	XMabonsoc_Config *Cfgptr;
    int status;
    // Initialize the DMA
    Cfgptr=XMabonsoc_LookupConfig(XPAR_MABONSOC_0_DEVICE_ID);
    status=XMabonsoc_CfgInitialize(&myIP,Cfgptr);
    // Check whether the DMA is initialized
    if(!Cfgptr)
    {
    	xil_printf("No config found for %d\r\n",XPAR_MABONSOC_0_DEVICE_ID);
    	return XST_FAILURE;
    }
    if(status!=XST_SUCCESS)
        {
        	xil_printf("\n\rIP Initialization Failed.Return Status: %d\r\n",status);
        	return XST_FAILURE;
        }
    return XST_SUCCESS;
}
void ipfngold(INTTYPE is[],INTTYPE Tsw[],INTTYPE Xsw[],int R[][N]){
	float m,UCB[N];
	INTTYPE Index;
		for(int t=0;t<N;t++){
			Index=t;
			is[t]=Index;
			Tsw[t]=1;
			Xsw[t]=R[t][t];
		}
		for(int t=N;t<Time;t++){
			m=2*log((float)t);
			Index=0;
			for(int i=0;i<N;i++){
				UCB[i]=((float)Xsw[i]/Tsw[i])+sqrt(m/Tsw[i]);
				if(UCB[Index]<UCB[i]){
					Index=i;
				}
			}
			is[t]=Index;
			Xsw[Index]+=R[t][Index];
			Tsw[Index]+=1;
		}
}
//void ipfngold(INTTYPE *Out,INTTYPE *t,INTTYPE Tsw[],INTTYPE Xsw[],float UCBsw[][N]){
//	float UCB[N],m,temp;
//	INTTYPE Index,timer=*t;
////	for(int i=0;i<N;i++){
////			printf("%d ",Tsw[i]);
////		}
////		printf("\n");
////		for(int i=0;i<N;i++){
////				printf("%d ",Xsw[i]);
////			}
////		printf("software\n");
//	if(timer<N){
//		Tsw[timer]=0;
//		Xsw[timer]=0;
//		*Out=timer;
//	}
//	else{
//		m=2*log(timer);
//		Index=0;
//		for(int i=0;i<N;i++){
//			temp=sqrt(m/Tsw[i]);
//			UCB[i]=(Xsw[i]/Tsw[i]);
//			UCB[i]+=temp;
//			if(UCB[Index]<UCB[i]){
//				Index=i;
//			}
//			UCBsw[timer][i]=UCB[i];
////				printf("%.6f\n",UCB[i]);
//		}
//		*Out=Index;
//	}
//}


int generatereward(float i){
	XTime seed_value;
	XTime_GetTime(&seed_value);
	srand(seed_value);

	float m=(float)(rand()%20)/20;
//	printf("%f %f\n",m,i);
	if(m<=i)
		return 1;
	else
		return 0;
}
void set_reward(float E[],int R[][N]){
	for(int i=0;i<N;i++){
		XTime seed_value;
		XTime_GetTime(&seed_value);
		srand(seed_value);

		float m=(float)(rand()%20)/20;
		E[i]=m;
		printf("%0.3f ",E[i]);
	}
	printf("\n");
	for(int i=0;i<Time;i++){
		for(int j=0;j<N;j++){
			R[i][j]=generatereward(E[j]);
//			R[i][j]=1;
//			printf("%d %d %d\n",i,j,R[i][j]);
		}
	}
}

int main()
{
    init_platform();

    xil_printf("START\n\r");
	xil_printf("\r\n***MAB ON SOC WITH N=5 & Time=10000***\r\n");

    float E[N]={0.200, 0.750, 0.800, 0.350, 0.950, 0.100, 0.200, 0.350, 0.150, 0.650, 0.350, 0.350 ,0.600 ,0.300 ,0.200, 0.150};
    int R[Time][N],r=0,rt[Time];
	set_reward(E,R);
	int Tsw[N],Thw[N],Xsw[N],Xhw[N],ihw,ih[Time],is[Time];
	for(int i=0;i<N;i++){
		Thw[i]=0;
		Xhw[i]=0;
	}
	XTime tprocessorend,tfpgaStart,tfpgaend,tprocessorStart;

	xil_printf("\r\n***PS Part Start***\r\n");
	XTime_GetTime(&tprocessorStart);
//	for(int i=0;i<Time;i++){
//		ipfngold(&isw,&i,Tsw,Xsw,UCBsw);
//		Tsw[isw]++;
//		is[i]=isw;
//		Xsw[isw]+=R[i][isw];
//	}
	ipfngold(is,Tsw,Xsw,R);
	XTime_GetTime(&tprocessorend);
	xil_printf("\r\n***PS Part END***\r\n");

	int status_ip=IP_Init();
	if(status_ip!=XST_SUCCESS){
		xil_printf("Couldn't initialize IP\r\n");
		return XST_FAILURE;
	}

	xil_printf("\r\n***PL Part START***\r\n");
	XTime_GetTime(&tfpgaStart);
	for(int i=0;i<Time;i++){
		XMabonsoc_Set_reward(&myIP,r);
		XMabonsoc_Start(&myIP);
		while(!XMabonsoc_IsDone(&myIP));
		ihw=XMabonsoc_Get_Out_r(&myIP);
		ih[i]=ihw;
		r=R[i][ihw];
//		UCBhw[i][0]=XMabonsoc_Get_u0(&myIP);
//		UCBhw[i][1]=XMabonsoc_Get_u1(&myIP);
//		UCBhw[i][2]=XMabonsoc_Get_u2(&myIP);
//		UCBhw[i][3]=XMabonsoc_Get_u3(&myIP);
//		UCBhw[i][4]=XMabonsoc_Get_u4(&myIP);
	}
	XTime_GetTime(&tfpgaend);
//	XMabonsoc_Set_t(&myIP,Time);
	XMabonsoc_Set_reward(&myIP,r);
	XMabonsoc_Start(&myIP);
	//			while(!XMabonsoc_IsDone(&myIP));
	//			ihw=XMabonsoc_Get_Out_r(&myIP);
	for(int i=0;i<Time;i++){
		ihw=ih[i];
		Thw[ihw]++;
		rt[i]=R[i][ihw];
		Xhw[ihw]+=rt[i];

	}
	xil_printf("\r\n***PL Part END***\r\n");

	xil_printf("\nComparing software outputs and hardware outputs\r\n");
    	int i=0;
    	_Bool err_flag=FALSE;
    	for(;i<N;i++){
    		printf("For Arm - %d , PS Output: T[%d] = %d , X[%d] = %d , PL Output: T[%d] = %d , X[%d] = %d \r\n",i+1,i,Tsw[i],i,Xsw[i],i,Thw[i],i,Xhw[i]);
    		int diff1=Tsw[i]-Thw[i];
			int diff2=Xsw[i]-Xhw[i];
			if(diff1!=0 || diff2!=0){
				err_flag=TRUE;
				printf("Data MisMatch found at %d.\r\n",i);
//				break;
			}
    	}
//    	for(;i<Time;i++){
//    	    		printf("For Time - %d , PS Output: is[%d] = %d , PL Output: ih[%d] = %d \r\n",i+1,i,is[i],i,ih[i]);
//    	    		int diff1=is[i]-ih[i];
////    				int diff2=Xsw[i]-Xhw[i];
//    				if(diff1!=0){
////    					printf("%d %d %d\n",diff1,Tsw[i],Thw[i]);
//    					err_flag=TRUE;
//    					break;
//    				}
//    	    	}
    	if(err_flag){
    		printf("Data MisMatch found at %d.\r\n",i);
//    		for(int j=0;j<N;j++){
//    			printf("sw:%.6f hw:%.6f\n",UCBsw[i][j],UCBhw[i][j]);
//    		}
    		}
    	else
    		xil_printf("\nIP ran successfully!! :)");

	printf("\n------Time Comparison------\n");
	float time_processor=0;
	time_processor=(float)1.0*(tprocessorend-tprocessorStart)/(COUNTS_PER_SECOND/1000000);
	printf("Time for PS: %f\n",time_processor);

	float time_fpga=0;
	time_fpga=(float)1.0*(tfpgaend-tfpgaStart)/(COUNTS_PER_SECOND/1000000);
	printf("Time for PL: %f\n",time_fpga);

	float accFactor;
	accFactor=(time_processor/time_fpga);
	printf("Acceleration factor: %f\n",(float)accFactor);
//	for(int j=0;j<Time;j++){
//			printf("%d ",ih[j]);
//		}
//	printf("\n");
//	for(int j=0;j<Time;j++){
//		printf("%d ",rt[j]);
//	}
	printf("END\n");
    cleanup_platform();
    return 0;
}
