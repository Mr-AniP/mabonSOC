// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __log_28_15_s_log_acud_H__
#define __log_28_15_s_log_acud_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct log_28_15_s_log_acud_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 22;
  static const unsigned AddressRange = 64;
  static const unsigned AddressWidth = 6;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(log_28_15_s_log_acud_ram) {
        ram[0] = "0b1111111110000000000111";
        ram[1] = "0b1111111110000000000111";
        ram[2] = "0b1111111110000000000111";
        ram[3] = "0b0000011110100000110011";
        ram[4] = "0b0000011110100000110011";
        ram[5] = "0b0001000000000101101110";
        ram[6] = "0b0001000000000101101110";
        ram[7] = "0b0001100010110011011111";
        ram[8] = "0b0001100010110011011111";
        ram[9] = "0b0001100010110011011111";
        ram[10] = "0b0010000110101111001111";
        ram[11] = "0b0010000110101111001111";
        ram[12] = "0b0010101011111110101000";
        ram[13] = "0b0010101011111110101000";
        ram[14] = "0b0010101011111110101000";
        ram[15] = "0b0011010010100111111110";
        ram[16] = "0b0011010010100111111110";
        ram[17] = "0b0011010010100111111110";
        ram[18] = "0b0011111010110010010110";
        ram[19] = "0b0011111010110010010110";
        ram[20] = "0b0011111010110010010110";
        ram[21] = "0b0011111010110010010110";
        ram[22] = "0b0100100100100101101010";
        ram[23] = "0b0100100100100101101010";
        ram[24] = "0b0100100100100101101010";
        ram[25] = "0b0100100100100101101010";
        ram[26] = "0b0101010000001010110110";
        ram[27] = "0b0101010000001010110110";
        ram[28] = "0b0101010000001010110110";
        ram[29] = "0b0101010000001010110110";
        ram[30] = "0b0101111101101100000010";
        ram[31] = "0b0101111101101100000010";
        ram[32] = "0b1011001111011100100101";
        ram[33] = "0b1011001111011100100101";
        ram[34] = "0b1011100111100010101011";
        ram[35] = "0b1011100111100010101011";
        ram[36] = "0b1100000000001101111011";
        ram[37] = "0b1100000000001101111011";
        ram[38] = "0b1100000000001101111011";
        ram[39] = "0b1100011001100000001100";
        ram[40] = "0b1100011001100000001100";
        ram[41] = "0b1100011001100000001100";
        ram[42] = "0b1100110011011011011010";
        ram[43] = "0b1100110011011011011010";
        ram[44] = "0b1101001110000001101111";
        ram[45] = "0b1101001110000001101111";
        ram[46] = "0b1101001110000001101111";
        ram[47] = "0b1101101001010101011110";
        ram[48] = "0b1101101001010101011110";
        ram[49] = "0b1101101001010101011110";
        ram[50] = "0b1110000101011001000110";
        ram[51] = "0b1110000101011001000110";
        ram[52] = "0b1110000101011001000110";
        ram[53] = "0b1110000101011001000110";
        ram[54] = "0b1110100010001111010011";
        ram[55] = "0b1110100010001111010011";
        ram[56] = "0b1110100010001111010011";
        ram[57] = "0b1110111111111011000001";
        ram[58] = "0b1110111111111011000001";
        ram[59] = "0b1110111111111011000001";
        ram[60] = "0b1110111111111011000001";
        ram[61] = "0b1111011110011111011110";
        ram[62] = "0b1111011110011111011110";
        ram[63] = "0b1111011110011111011110";


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


SC_MODULE(log_28_15_s_log_acud) {


static const unsigned DataWidth = 22;
static const unsigned AddressRange = 64;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


log_28_15_s_log_acud_ram* meminst;


SC_CTOR(log_28_15_s_log_acud) {
meminst = new log_28_15_s_log_acud_ram("log_28_15_s_log_acud_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~log_28_15_s_log_acud() {
    delete meminst;
}


};//endmodule
#endif
