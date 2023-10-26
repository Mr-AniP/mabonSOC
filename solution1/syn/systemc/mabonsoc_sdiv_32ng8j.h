// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __mabonsoc_sdiv_32ng8j__HH__
#define __mabonsoc_sdiv_32ng8j__HH__
#include "ACMP_sdiv.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(mabonsoc_sdiv_32ng8j) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_sdiv<ID, 36, din0_WIDTH, din1_WIDTH, dout_WIDTH> ACMP_sdiv_U;

    SC_CTOR(mabonsoc_sdiv_32ng8j):  ACMP_sdiv_U ("ACMP_sdiv_U") {
        ACMP_sdiv_U.clk(clk);
        ACMP_sdiv_U.reset(reset);
        ACMP_sdiv_U.ce(ce);
        ACMP_sdiv_U.din0(din0);
        ACMP_sdiv_U.din1(din1);
        ACMP_sdiv_U.dout(dout);

    }

};

#endif //
