// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XMABONSOC_H
#define XMABONSOC_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xmabonsoc_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Bus_a_BaseAddress;
} XMabonsoc_Config;
#endif

typedef struct {
    u32 Bus_a_BaseAddress;
    u32 IsReady;
} XMabonsoc;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMabonsoc_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMabonsoc_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMabonsoc_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMabonsoc_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XMabonsoc_Initialize(XMabonsoc *InstancePtr, u16 DeviceId);
XMabonsoc_Config* XMabonsoc_LookupConfig(u16 DeviceId);
int XMabonsoc_CfgInitialize(XMabonsoc *InstancePtr, XMabonsoc_Config *ConfigPtr);
#else
int XMabonsoc_Initialize(XMabonsoc *InstancePtr, const char* InstanceName);
int XMabonsoc_Release(XMabonsoc *InstancePtr);
#endif

void XMabonsoc_Start(XMabonsoc *InstancePtr);
u32 XMabonsoc_IsDone(XMabonsoc *InstancePtr);
u32 XMabonsoc_IsIdle(XMabonsoc *InstancePtr);
u32 XMabonsoc_IsReady(XMabonsoc *InstancePtr);
void XMabonsoc_EnableAutoRestart(XMabonsoc *InstancePtr);
void XMabonsoc_DisableAutoRestart(XMabonsoc *InstancePtr);

u32 XMabonsoc_Get_Out_r(XMabonsoc *InstancePtr);
u32 XMabonsoc_Get_Out_r_vld(XMabonsoc *InstancePtr);
void XMabonsoc_Set_t(XMabonsoc *InstancePtr, u32 Data);
u32 XMabonsoc_Get_t(XMabonsoc *InstancePtr);
void XMabonsoc_Set_reward(XMabonsoc *InstancePtr, u32 Data);
u32 XMabonsoc_Get_reward(XMabonsoc *InstancePtr);

void XMabonsoc_InterruptGlobalEnable(XMabonsoc *InstancePtr);
void XMabonsoc_InterruptGlobalDisable(XMabonsoc *InstancePtr);
void XMabonsoc_InterruptEnable(XMabonsoc *InstancePtr, u32 Mask);
void XMabonsoc_InterruptDisable(XMabonsoc *InstancePtr, u32 Mask);
void XMabonsoc_InterruptClear(XMabonsoc *InstancePtr, u32 Mask);
u32 XMabonsoc_InterruptGetEnabled(XMabonsoc *InstancePtr);
u32 XMabonsoc_InterruptGetStatus(XMabonsoc *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
