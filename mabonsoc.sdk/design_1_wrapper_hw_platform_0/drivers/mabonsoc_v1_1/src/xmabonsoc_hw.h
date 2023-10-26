// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// BUS_A
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of Out_r
//        bit 31~0 - Out_r[31:0] (Read)
// 0x14 : Control signal of Out_r
//        bit 0  - Out_r_ap_vld (Read/COR)
//        others - reserved
// 0x18 : Data signal of reward
//        bit 31~0 - reward[31:0] (Read/Write)
// 0x1c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XMABONSOC_BUS_A_ADDR_AP_CTRL     0x00
#define XMABONSOC_BUS_A_ADDR_GIE         0x04
#define XMABONSOC_BUS_A_ADDR_IER         0x08
#define XMABONSOC_BUS_A_ADDR_ISR         0x0c
#define XMABONSOC_BUS_A_ADDR_OUT_R_DATA  0x10
#define XMABONSOC_BUS_A_BITS_OUT_R_DATA  32
#define XMABONSOC_BUS_A_ADDR_OUT_R_CTRL  0x14
#define XMABONSOC_BUS_A_ADDR_REWARD_DATA 0x18
#define XMABONSOC_BUS_A_BITS_REWARD_DATA 32

