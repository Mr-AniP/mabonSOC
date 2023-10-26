// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xmabonsoc.h"

extern XMabonsoc_Config XMabonsoc_ConfigTable[];

XMabonsoc_Config *XMabonsoc_LookupConfig(u16 DeviceId) {
	XMabonsoc_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMABONSOC_NUM_INSTANCES; Index++) {
		if (XMabonsoc_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMabonsoc_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMabonsoc_Initialize(XMabonsoc *InstancePtr, u16 DeviceId) {
	XMabonsoc_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMabonsoc_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMabonsoc_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

