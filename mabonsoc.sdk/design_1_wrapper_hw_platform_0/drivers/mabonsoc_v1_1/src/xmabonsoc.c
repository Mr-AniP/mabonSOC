// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xmabonsoc.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMabonsoc_CfgInitialize(XMabonsoc *InstancePtr, XMabonsoc_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Bus_a_BaseAddress = ConfigPtr->Bus_a_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMabonsoc_Start(XMabonsoc *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMabonsoc_ReadReg(InstancePtr->Bus_a_BaseAddress, XMABONSOC_BUS_A_ADDR_AP_CTRL) & 0x80;
    XMabonsoc_WriteReg(InstancePtr->Bus_a_BaseAddress, XMABONSOC_BUS_A_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMabonsoc_IsDone(XMabonsoc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMabonsoc_ReadReg(InstancePtr->Bus_a_BaseAddress, XMABONSOC_BUS_A_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMabonsoc_IsIdle(XMabonsoc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMabonsoc_ReadReg(InstancePtr->Bus_a_BaseAddress, XMABONSOC_BUS_A_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMabonsoc_IsReady(XMabonsoc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMabonsoc_ReadReg(InstancePtr->Bus_a_BaseAddress, XMABONSOC_BUS_A_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMabonsoc_EnableAutoRestart(XMabonsoc *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMabonsoc_WriteReg(InstancePtr->Bus_a_BaseAddress, XMABONSOC_BUS_A_ADDR_AP_CTRL, 0x80);
}

void XMabonsoc_DisableAutoRestart(XMabonsoc *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMabonsoc_WriteReg(InstancePtr->Bus_a_BaseAddress, XMABONSOC_BUS_A_ADDR_AP_CTRL, 0);
}

u32 XMabonsoc_Get_Out_r(XMabonsoc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMabonsoc_ReadReg(InstancePtr->Bus_a_BaseAddress, XMABONSOC_BUS_A_ADDR_OUT_R_DATA);
    return Data;
}

u32 XMabonsoc_Get_Out_r_vld(XMabonsoc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMabonsoc_ReadReg(InstancePtr->Bus_a_BaseAddress, XMABONSOC_BUS_A_ADDR_OUT_R_CTRL);
    return Data & 0x1;
}

void XMabonsoc_Set_reward(XMabonsoc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMabonsoc_WriteReg(InstancePtr->Bus_a_BaseAddress, XMABONSOC_BUS_A_ADDR_REWARD_DATA, Data);
}

u32 XMabonsoc_Get_reward(XMabonsoc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMabonsoc_ReadReg(InstancePtr->Bus_a_BaseAddress, XMABONSOC_BUS_A_ADDR_REWARD_DATA);
    return Data;
}

void XMabonsoc_InterruptGlobalEnable(XMabonsoc *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMabonsoc_WriteReg(InstancePtr->Bus_a_BaseAddress, XMABONSOC_BUS_A_ADDR_GIE, 1);
}

void XMabonsoc_InterruptGlobalDisable(XMabonsoc *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMabonsoc_WriteReg(InstancePtr->Bus_a_BaseAddress, XMABONSOC_BUS_A_ADDR_GIE, 0);
}

void XMabonsoc_InterruptEnable(XMabonsoc *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMabonsoc_ReadReg(InstancePtr->Bus_a_BaseAddress, XMABONSOC_BUS_A_ADDR_IER);
    XMabonsoc_WriteReg(InstancePtr->Bus_a_BaseAddress, XMABONSOC_BUS_A_ADDR_IER, Register | Mask);
}

void XMabonsoc_InterruptDisable(XMabonsoc *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMabonsoc_ReadReg(InstancePtr->Bus_a_BaseAddress, XMABONSOC_BUS_A_ADDR_IER);
    XMabonsoc_WriteReg(InstancePtr->Bus_a_BaseAddress, XMABONSOC_BUS_A_ADDR_IER, Register & (~Mask));
}

void XMabonsoc_InterruptClear(XMabonsoc *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMabonsoc_WriteReg(InstancePtr->Bus_a_BaseAddress, XMABONSOC_BUS_A_ADDR_ISR, Mask);
}

u32 XMabonsoc_InterruptGetEnabled(XMabonsoc *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMabonsoc_ReadReg(InstancePtr->Bus_a_BaseAddress, XMABONSOC_BUS_A_ADDR_IER);
}

u32 XMabonsoc_InterruptGetStatus(XMabonsoc *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMabonsoc_ReadReg(InstancePtr->Bus_a_BaseAddress, XMABONSOC_BUS_A_ADDR_ISR);
}

