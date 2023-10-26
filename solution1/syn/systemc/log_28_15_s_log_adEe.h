// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __log_28_15_s_log_adEe_H__
#define __log_28_15_s_log_adEe_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct log_28_15_s_log_adEe_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 18;
  static const unsigned AddressRange = 16;
  static const unsigned AddressWidth = 4;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(log_28_15_s_log_adEe_ram) {
        ram[0] = "0b000000000000000000";
        ram[1] = "0b000100000000000000";
        ram[2] = "0b001000000001000000";
        ram[3] = "0b001100000011000001";
        ram[4] = "0b010000000110000011";
        ram[5] = "0b010100001010000111";
        ram[6] = "0b011000001111001110";
        ram[7] = "0b011100010101010111";
        ram[8] = "0b011110011000110101";
        ram[9] = "0b100010100000100011";
        ram[10] = "0b100110101001010110";
        ram[11] = "0b101010110011001101";
        ram[12] = "0b101110111110001010";
        ram[13] = "0b110011001010001101";
        ram[14] = "0b110111010111010110";
        ram[15] = "0b111011100101100110";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(log_28_15_s_log_adEe) {


static const unsigned DataWidth = 18;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


log_28_15_s_log_adEe_ram* meminst;


SC_CTOR(log_28_15_s_log_adEe) {
meminst = new log_28_15_s_log_adEe_ram("log_28_15_s_log_adEe_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~log_28_15_s_log_adEe() {
    delete meminst;
}


};//endmodule
#endif
