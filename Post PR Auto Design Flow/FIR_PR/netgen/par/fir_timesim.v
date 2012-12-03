////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.15xf
//  \   \         Application: netgen
//  /   /         Filename: fir_timesim.v
// /___/   /\     Timestamp: Wed Oct 31 14:00:19 2012
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 1 -pcf fir.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim fir.ncd fir_timesim.v 
// Device	: 6vlx240tff1156-1 (PRODUCTION 1.17 2012-04-23)
// Input file	: fir.ncd
// Output file	: G:\FPGA\FIR_img\FIR_PR\netgen\par\fir_timesim.v
// # of Modules	: 1
// Design Name	: fir
// Xilinx        : F:\Xilinx\14.1\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module fir (
  clk, nReset, X_in, Y_out
);
  input clk;
  input nReset;
  input [11 : 0] X_in;
  output [11 : 0] Y_out;
  wire STARTUP_V6_PWRUP_GTXE1_ML_INSERTED_ML_CFGMCLK_SIG;
  wire \clk_BUFGP/IBUFG_5672 ;
  wire clk_BUFGP;
  wire nReset_inv;
  wire X_in_0_IBUF_5678;
  wire X_in_1_IBUF_5680;
  wire X_in_2_IBUF_5682;
  wire X_in_3_IBUF_5684;
  wire X_in_4_IBUF_5686;
  wire X_in_5_IBUF_5688;
  wire X_in_6_IBUF_5690;
  wire X_in_7_IBUF_5692;
  wire X_in_8_IBUF_5694;
  wire X_in_9_IBUF_5696;
  wire ADDERTREE_INTERNAL_Madd2_5697;
  wire nReset_IBUF_5708;
  wire X_in_10_IBUF_5710;
  wire X_in_11_IBUF_5711;
  wire ADDERTREE_INTERNAL_Madd21_5714;
  wire ADDERTREE_INTERNAL_Madd_21_0;
  wire ADDERTREE_INTERNAL_Madd22_5717;
  wire \ADDERTREE_INTERNAL_Madd2_cy<0>3 ;
  wire ADDERTREE_INTERNAL_Madd_31_0;
  wire ADDERTREE_INTERNAL_Madd23_0;
  wire ADDERTREE_INTERNAL_Madd_41_0;
  wire ADDERTREE_INTERNAL_Madd24_5724;
  wire ADDERTREE_INTERNAL_Madd_51_0;
  wire ADDERTREE_INTERNAL_Madd25_5727;
  wire ADDERTREE_INTERNAL_Madd_61_0;
  wire ADDERTREE_INTERNAL_Madd26_5730;
  wire \ADDERTREE_INTERNAL_Madd2_cy<0>7 ;
  wire ADDERTREE_INTERNAL_Madd_71_0;
  wire ADDERTREE_INTERNAL_Madd27_0;
  wire ADDERTREE_INTERNAL_Madd_81_0;
  wire ADDERTREE_INTERNAL_Madd28_5737;
  wire ADDERTREE_INTERNAL_Madd_91_0;
  wire ADDERTREE_INTERNAL_Madd29_5740;
  wire ADDERTREE_INTERNAL_Madd_101_0;
  wire ADDERTREE_INTERNAL_Madd_111_0;
  wire \ADDERTREE_INTERNAL_Madd1_cy[5] ;
  wire \ADDERTREE_INTERNAL_Madd1_cy[9] ;
  wire \STARTUP_V6_PWRUP_GTXE1_ML_INSERTED/EOS ;
  wire \STARTUP_V6_PWRUP_GTXE1_ML_INSERTED/DINSPI ;
  wire \STARTUP_V6_PWRUP_GTXE1_ML_INSERTED/PREQ ;
  wire \STARTUP_V6_PWRUP_GTXE1_ML_INSERTED/TCKSPI ;
  wire \STARTUP_V6_PWRUP_GTXE1_ML_INSERTED/CFGCLK ;
  wire ADDERTREE_INTERNAL_Madd23_5368;
  wire ADDERTREE_INTERNAL_Madd_32;
  wire ADDERTREE_INTERNAL_Madd_22;
  wire ADDERTREE_INTERNAL_Madd_13;
  wire ADDERTREE_INTERNAL_Madd_02;
  wire \ADDERTREE_INTERNAL_Madd2_lut<0>2_5354 ;
  wire ADDERTREE_INTERNAL_Madd22_pack_8;
  wire \ADDERTREE_INTERNAL_Madd2_lut<0>1_5346 ;
  wire ADDERTREE_INTERNAL_Madd21_pack_7;
  wire \ADDERTREE_INTERNAL_Madd2_lut<0>3_5332 ;
  wire ADDERTREE_INTERNAL_Madd24_pack_8;
  wire \ADDERTREE_INTERNAL_Madd2_lut<0>4_5407 ;
  wire ADDERTREE_INTERNAL_Madd25_pack_9;
  wire \ADDERTREE_INTERNAL_Madd2_lut<0>5_5399 ;
  wire ADDERTREE_INTERNAL_Madd26_pack_10;
  wire \ADDERTREE_INTERNAL_Madd2_lut<0>6_5391 ;
  wire ADDERTREE_INTERNAL_Madd_42;
  wire ADDERTREE_INTERNAL_Madd_52;
  wire ADDERTREE_INTERNAL_Madd_62;
  wire ADDERTREE_INTERNAL_Madd_72;
  wire ADDERTREE_INTERNAL_Madd27_5377;
  wire \ADDERTREE_INTERNAL_Madd2_lut<0>7_5376 ;
  wire ADDERTREE_INTERNAL_Madd28_pack_9;
  wire \ADDERTREE_INTERNAL_Madd2_lut<0>8_5448 ;
  wire ADDERTREE_INTERNAL_Madd29_pack_10;
  wire \ADDERTREE_INTERNAL_Madd2_lut<0>9_5440 ;
  wire \ADDERTREE_INTERNAL_Madd2_lut<0>10_5433 ;
  wire ADDERTREE_INTERNAL_Madd_82;
  wire ADDERTREE_INTERNAL_Madd_92;
  wire ADDERTREE_INTERNAL_Madd_102;
  wire ADDERTREE_INTERNAL_Madd_112;
  wire \ADDERTREE_INTERNAL_Madd2_lut<0>11_5419 ;
  wire ADDERTREE_INTERNAL_Madd_101;
  wire ADDERTREE_INTERNAL_Madd_111;
  wire \x<4>_rt_5594 ;
  wire ADDERTREE_INTERNAL_Madd_51;
  wire ADDERTREE_INTERNAL_Madd_41;
  wire ADDERTREE_INTERNAL_Madd_31;
  wire ADDERTREE_INTERNAL_Madd_21;
  wire \x<5>_rt_5580 ;
  wire \x<6>_rt_5573 ;
  wire \x<7>_rt_5566 ;
  wire \x<11>_rt_5638 ;
  wire ADDERTREE_INTERNAL_Madd_91;
  wire ADDERTREE_INTERNAL_Madd_81;
  wire ADDERTREE_INTERNAL_Madd_71;
  wire ADDERTREE_INTERNAL_Madd_61;
  wire \x<9>_rt_5619 ;
  wire \x<10>_rt_5612 ;
  wire \x<8>_rt_5604 ;
  wire \NlwBufferSignal_clk_BUFGP/BUFG/IN ;
  wire \NlwBufferSignal_y_3/CLK ;
  wire \NlwBufferSignal_y_2/CLK ;
  wire \NlwBufferSignal_ADDERTREE_INTERNAL_Madd2_cy<0>_2/DI<1> ;
  wire \NlwBufferSignal_ADDERTREE_INTERNAL_Madd2_cy<0>_2/DI<2> ;
  wire \NlwBufferSignal_ADDERTREE_INTERNAL_Madd2_cy<0>_2/DI<3> ;
  wire \NlwBufferSignal_y_1/CLK ;
  wire \NlwBufferSignal_y_0/CLK ;
  wire \NlwBufferSignal_y_7/CLK ;
  wire \NlwBufferSignal_y_6/CLK ;
  wire \NlwBufferSignal_ADDERTREE_INTERNAL_Madd2_cy<0>_6/DI<0> ;
  wire \NlwBufferSignal_ADDERTREE_INTERNAL_Madd2_cy<0>_6/DI<1> ;
  wire \NlwBufferSignal_ADDERTREE_INTERNAL_Madd2_cy<0>_6/DI<2> ;
  wire \NlwBufferSignal_ADDERTREE_INTERNAL_Madd2_cy<0>_6/DI<3> ;
  wire \NlwBufferSignal_y_5/CLK ;
  wire \NlwBufferSignal_y_4/CLK ;
  wire \NlwBufferSignal_y_11/CLK ;
  wire \NlwBufferSignal_y_10/CLK ;
  wire \NlwBufferSignal_ADDERTREE_INTERNAL_Madd2_xor<0>_10/DI<0> ;
  wire \NlwBufferSignal_ADDERTREE_INTERNAL_Madd2_xor<0>_10/DI<1> ;
  wire \NlwBufferSignal_ADDERTREE_INTERNAL_Madd2_xor<0>_10/DI<2> ;
  wire \NlwBufferSignal_y_9/CLK ;
  wire \NlwBufferSignal_y_8/CLK ;
  wire \NlwBufferSignal_ADDERTREE_INTERNAL_Madd1_xor<11>/DI<0> ;
  wire \NlwBufferSignal_Y_out_9_OBUF/I ;
  wire \NlwBufferSignal_Y_out_10_OBUF/I ;
  wire \NlwBufferSignal_Y_out_11_OBUF/I ;
  wire \NlwBufferSignal_Y_out_0_OBUF/I ;
  wire \NlwBufferSignal_Y_out_1_OBUF/I ;
  wire \NlwBufferSignal_Y_out_2_OBUF/I ;
  wire \NlwBufferSignal_Y_out_3_OBUF/I ;
  wire \NlwBufferSignal_Y_out_4_OBUF/I ;
  wire \NlwBufferSignal_Y_out_5_OBUF/I ;
  wire \NlwBufferSignal_Y_out_6_OBUF/I ;
  wire \NlwBufferSignal_Y_out_7_OBUF/I ;
  wire \NlwBufferSignal_Y_out_8_OBUF/I ;
  wire \NlwBufferSignal_x_11/CLK ;
  wire \NlwBufferSignal_x_11/IN ;
  wire \NlwBufferSignal_x_10/CLK ;
  wire \NlwBufferSignal_x_10/IN ;
  wire \NlwBufferSignal_x_9/CLK ;
  wire \NlwBufferSignal_x_9/IN ;
  wire \NlwBufferSignal_x_8/CLK ;
  wire \NlwBufferSignal_x_8/IN ;
  wire \NlwBufferSignal_x_7/CLK ;
  wire \NlwBufferSignal_x_7/IN ;
  wire \NlwBufferSignal_x_6/CLK ;
  wire \NlwBufferSignal_x_6/IN ;
  wire \NlwBufferSignal_x_5/CLK ;
  wire \NlwBufferSignal_x_5/IN ;
  wire \NlwBufferSignal_x_4/CLK ;
  wire \NlwBufferSignal_x_4/IN ;
  wire \NlwBufferSignal_x_3/CLK ;
  wire \NlwBufferSignal_x_3/IN ;
  wire \NlwBufferSignal_x_2/CLK ;
  wire \NlwBufferSignal_x_2/IN ;
  wire \NlwBufferSignal_x_1/CLK ;
  wire \NlwBufferSignal_x_1/IN ;
  wire \NlwBufferSignal_x_0/CLK ;
  wire \NlwBufferSignal_x_0/IN ;
  wire \NlwBufferSignal_x_n_3/CLK ;
  wire \NlwBufferSignal_x_n_3/IN ;
  wire \NlwBufferSignal_x_n_2/CLK ;
  wire \NlwBufferSignal_x_n_2/IN ;
  wire \NlwBufferSignal_x_n_1/CLK ;
  wire \NlwBufferSignal_x_n_1/IN ;
  wire \NlwBufferSignal_x_n_0/CLK ;
  wire \NlwBufferSignal_x_n_0/IN ;
  wire \NlwBufferSignal_x_n_4/CLK ;
  wire \NlwBufferSignal_x_n_5/CLK ;
  wire \NlwBufferSignal_ADDERTREE_INTERNAL_Madd1_cy<5>/DI<0> ;
  wire \NlwBufferSignal_ADDERTREE_INTERNAL_Madd1_cy<5>/DI<1> ;
  wire \NlwBufferSignal_ADDERTREE_INTERNAL_Madd1_cy<5>/DI<2> ;
  wire \NlwBufferSignal_ADDERTREE_INTERNAL_Madd1_cy<5>/DI<3> ;
  wire \NlwBufferSignal_x_n_6/CLK ;
  wire \NlwBufferSignal_x_n_7/CLK ;
  wire \NlwBufferSignal_x_n_8/CLK ;
  wire \NlwBufferSignal_x_n_9/CLK ;
  wire \NlwBufferSignal_ADDERTREE_INTERNAL_Madd1_cy<9>/DI<0> ;
  wire \NlwBufferSignal_ADDERTREE_INTERNAL_Madd1_cy<9>/DI<1> ;
  wire \NlwBufferSignal_ADDERTREE_INTERNAL_Madd1_cy<9>/DI<2> ;
  wire \NlwBufferSignal_ADDERTREE_INTERNAL_Madd1_cy<9>/DI<3> ;
  wire \NlwBufferSignal_x_n_10/CLK ;
  wire \NlwBufferSignal_x_n_11/CLK ;
  wire GND;
  wire VCC;
  wire \NLW_ProtoComp6.CYINITGND_O_UNCONNECTED ;
  wire \NLW_ADDERTREE_INTERNAL_Madd2_cy<0>_2_CO[0]_UNCONNECTED ;
  wire \NLW_ADDERTREE_INTERNAL_Madd2_cy<0>_2_CO[1]_UNCONNECTED ;
  wire \NLW_ADDERTREE_INTERNAL_Madd2_cy<0>_2_CO[2]_UNCONNECTED ;
  wire \NLW_N1.A5LUT_O_UNCONNECTED ;
  wire \NLW_ADDERTREE_INTERNAL_Madd2_cy<0>_6_CO[0]_UNCONNECTED ;
  wire \NLW_ADDERTREE_INTERNAL_Madd2_cy<0>_6_CO[1]_UNCONNECTED ;
  wire \NLW_ADDERTREE_INTERNAL_Madd2_cy<0>_6_CO[2]_UNCONNECTED ;
  wire \NLW_ADDERTREE_INTERNAL_Madd2_xor<0>_10_CO[0]_UNCONNECTED ;
  wire \NLW_ADDERTREE_INTERNAL_Madd2_xor<0>_10_CO[1]_UNCONNECTED ;
  wire \NLW_ADDERTREE_INTERNAL_Madd2_xor<0>_10_CO[2]_UNCONNECTED ;
  wire \NLW_ADDERTREE_INTERNAL_Madd2_xor<0>_10_CO[3]_UNCONNECTED ;
  wire \NLW_ADDERTREE_INTERNAL_Madd2_xor<0>_10_DI[3]_UNCONNECTED ;
  wire \NLW_ADDERTREE_INTERNAL_Madd1_xor<11>_CO[0]_UNCONNECTED ;
  wire \NLW_ADDERTREE_INTERNAL_Madd1_xor<11>_CO[1]_UNCONNECTED ;
  wire \NLW_ADDERTREE_INTERNAL_Madd1_xor<11>_CO[2]_UNCONNECTED ;
  wire \NLW_ADDERTREE_INTERNAL_Madd1_xor<11>_CO[3]_UNCONNECTED ;
  wire \NLW_ADDERTREE_INTERNAL_Madd1_xor<11>_DI[1]_UNCONNECTED ;
  wire \NLW_ADDERTREE_INTERNAL_Madd1_xor<11>_DI[2]_UNCONNECTED ;
  wire \NLW_ADDERTREE_INTERNAL_Madd1_xor<11>_DI[3]_UNCONNECTED ;
  wire \NLW_ADDERTREE_INTERNAL_Madd1_xor<11>_O[2]_UNCONNECTED ;
  wire \NLW_ADDERTREE_INTERNAL_Madd1_xor<11>_O[3]_UNCONNECTED ;
  wire \NLW_ADDERTREE_INTERNAL_Madd1_xor<11>_S[2]_UNCONNECTED ;
  wire \NLW_ADDERTREE_INTERNAL_Madd1_xor<11>_S[3]_UNCONNECTED ;
  wire \NLW_ProtoComp17.CYINITGND_O_UNCONNECTED ;
  wire \NLW_ADDERTREE_INTERNAL_Madd1_cy<5>_CO[0]_UNCONNECTED ;
  wire \NLW_ADDERTREE_INTERNAL_Madd1_cy<5>_CO[1]_UNCONNECTED ;
  wire \NLW_ADDERTREE_INTERNAL_Madd1_cy<5>_CO[2]_UNCONNECTED ;
  wire \NLW_ADDERTREE_INTERNAL_Madd1_cy<9>_CO[0]_UNCONNECTED ;
  wire \NLW_ADDERTREE_INTERNAL_Madd1_cy<9>_CO[1]_UNCONNECTED ;
  wire \NLW_ADDERTREE_INTERNAL_Madd1_cy<9>_CO[2]_UNCONNECTED ;
  wire [11 : 0] x_n;
  wire [11 : 0] x;
  wire [11 : 0] y;
  wire [0 : 0] ADDERTREE_INTERNAL_Madd2_lut;
  wire [11 : 2] ADDERTREE_INTERNAL_Madd1_lut;
  initial $sdf_annotate("netgen/par/fir_timesim.sdf");
  X_CKBUF #(
    .LOC ( "BUFGCTRL_X0Y0" ))
  \clk_BUFGP/BUFG  (
    .I(\NlwBufferSignal_clk_BUFGP/BUFG/IN ),
    .O(clk_BUFGP)
  );
  X_BUF   \y<3>/y<3>_DMUX_Delay  (
    .I(ADDERTREE_INTERNAL_Madd23_5368),
    .O(ADDERTREE_INTERNAL_Madd23_0)
  );
  X_BUF   \y<3>/y<3>_CMUX_Delay  (
    .I(ADDERTREE_INTERNAL_Madd22_pack_8),
    .O(ADDERTREE_INTERNAL_Madd22_5717)
  );
  X_BUF   \y<3>/y<3>_BMUX_Delay  (
    .I(ADDERTREE_INTERNAL_Madd21_pack_7),
    .O(ADDERTREE_INTERNAL_Madd21_5714)
  );
  X_FF #(
    .LOC ( "SLICE_X2Y33" ),
    .INIT ( 1'b0 ))
  y_3 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_y_3/CLK ),
    .I(ADDERTREE_INTERNAL_Madd_32),
    .O(y[3]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y33" ),
    .INIT ( 64'h5AA5A55A5AA5A55A ))
  \ADDERTREE_INTERNAL_Madd2_lut<0>3  (
    .ADR1(1'b1),
    .ADR0(x[3]),
    .ADR4(x[2]),
    .ADR2(ADDERTREE_INTERNAL_Madd_31_0),
    .ADR3(ADDERTREE_INTERNAL_Madd22_5717),
    .ADR5(1'b1),
    .O(\ADDERTREE_INTERNAL_Madd2_lut<0>3_5332 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X2Y33" ),
    .INIT ( 32'hFAFAA0A0 ))
  ADDERTREE_INTERNAL_Madd23 (
    .ADR1(1'b1),
    .ADR0(x[3]),
    .ADR4(x[2]),
    .ADR2(ADDERTREE_INTERNAL_Madd_31_0),
    .ADR3(1'b1),
    .O(ADDERTREE_INTERNAL_Madd23_5368)
  );
  X_ZERO #(
    .LOC ( "SLICE_X2Y33" ))
  \ProtoComp6.CYINITGND  (
    .O(\NLW_ProtoComp6.CYINITGND_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X2Y33" ),
    .INIT ( 1'b0 ))
  y_2 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_y_2/CLK ),
    .I(ADDERTREE_INTERNAL_Madd_22),
    .O(y[2]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X2Y33" ))
  \ADDERTREE_INTERNAL_Madd2_cy<0>_2  (
    .CI(1'b0),
    .CYINIT(1'b0),
    .CO({\ADDERTREE_INTERNAL_Madd2_cy<0>3 , \NLW_ADDERTREE_INTERNAL_Madd2_cy<0>_2_CO[2]_UNCONNECTED , 
\NLW_ADDERTREE_INTERNAL_Madd2_cy<0>_2_CO[1]_UNCONNECTED , \NLW_ADDERTREE_INTERNAL_Madd2_cy<0>_2_CO[0]_UNCONNECTED }),
    .DI({\NlwBufferSignal_ADDERTREE_INTERNAL_Madd2_cy<0>_2/DI<3> , \NlwBufferSignal_ADDERTREE_INTERNAL_Madd2_cy<0>_2/DI<2> , 
\NlwBufferSignal_ADDERTREE_INTERNAL_Madd2_cy<0>_2/DI<1> , 1'b0}),
    .O({ADDERTREE_INTERNAL_Madd_32, ADDERTREE_INTERNAL_Madd_22, ADDERTREE_INTERNAL_Madd_13, ADDERTREE_INTERNAL_Madd_02}),
    .S({\ADDERTREE_INTERNAL_Madd2_lut<0>3_5332 , \ADDERTREE_INTERNAL_Madd2_lut<0>2_5354 , \ADDERTREE_INTERNAL_Madd2_lut<0>1_5346 , 
ADDERTREE_INTERNAL_Madd2_lut[0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y33" ),
    .INIT ( 64'h5AA5A55A5AA5A55A ))
  \ADDERTREE_INTERNAL_Madd2_lut<0>2  (
    .ADR1(1'b1),
    .ADR2(x[2]),
    .ADR0(x[1]),
    .ADR3(ADDERTREE_INTERNAL_Madd_21_0),
    .ADR4(ADDERTREE_INTERNAL_Madd21_5714),
    .ADR5(1'b1),
    .O(\ADDERTREE_INTERNAL_Madd2_lut<0>2_5354 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X2Y33" ),
    .INIT ( 32'hFAA0FAA0 ))
  ADDERTREE_INTERNAL_Madd22 (
    .ADR1(1'b1),
    .ADR2(x[2]),
    .ADR0(x[1]),
    .ADR3(ADDERTREE_INTERNAL_Madd_21_0),
    .ADR4(1'b1),
    .O(ADDERTREE_INTERNAL_Madd22_pack_8)
  );
  X_FF #(
    .LOC ( "SLICE_X2Y33" ),
    .INIT ( 1'b0 ))
  y_1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_y_1/CLK ),
    .I(ADDERTREE_INTERNAL_Madd_13),
    .O(y[1]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y33" ),
    .INIT ( 64'h3CC3C33C3CC3C33C ))
  \ADDERTREE_INTERNAL_Madd2_lut<0>1  (
    .ADR0(1'b1),
    .ADR3(x[1]),
    .ADR2(x[0]),
    .ADR1(x_n[1]),
    .ADR4(ADDERTREE_INTERNAL_Madd2_5697),
    .ADR5(1'b1),
    .O(\ADDERTREE_INTERNAL_Madd2_lut<0>1_5346 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X2Y33" ),
    .INIT ( 32'hFCC0FCC0 ))
  ADDERTREE_INTERNAL_Madd21 (
    .ADR0(1'b1),
    .ADR3(x[1]),
    .ADR2(x[0]),
    .ADR1(x_n[1]),
    .ADR4(1'b1),
    .O(ADDERTREE_INTERNAL_Madd21_pack_7)
  );
  X_FF #(
    .LOC ( "SLICE_X2Y33" ),
    .INIT ( 1'b0 ))
  y_0 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_y_0/CLK ),
    .I(ADDERTREE_INTERNAL_Madd_02),
    .O(y[0]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y33" ),
    .INIT ( 64'h00FFFF0000FFFF00 ))
  \ADDERTREE_INTERNAL_Madd2_lut<0>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(x[0]),
    .ADR3(x_n[0]),
    .ADR5(1'b1),
    .O(ADDERTREE_INTERNAL_Madd2_lut[0])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X2Y33" ),
    .INIT ( 32'h00000000 ))
  \N1.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N1.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \y<7>/y<7>_DMUX_Delay  (
    .I(ADDERTREE_INTERNAL_Madd27_5377),
    .O(ADDERTREE_INTERNAL_Madd27_0)
  );
  X_BUF   \y<7>/y<7>_CMUX_Delay  (
    .I(ADDERTREE_INTERNAL_Madd26_pack_10),
    .O(ADDERTREE_INTERNAL_Madd26_5730)
  );
  X_BUF   \y<7>/y<7>_BMUX_Delay  (
    .I(ADDERTREE_INTERNAL_Madd25_pack_9),
    .O(ADDERTREE_INTERNAL_Madd25_5727)
  );
  X_BUF   \y<7>/y<7>_AMUX_Delay  (
    .I(ADDERTREE_INTERNAL_Madd24_pack_8),
    .O(ADDERTREE_INTERNAL_Madd24_5724)
  );
  X_FF #(
    .LOC ( "SLICE_X2Y34" ),
    .INIT ( 1'b0 ))
  y_7 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_y_7/CLK ),
    .I(ADDERTREE_INTERNAL_Madd_72),
    .O(y[7]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y34" ),
    .INIT ( 64'h5AA5A55A5AA5A55A ))
  \ADDERTREE_INTERNAL_Madd2_lut<0>7  (
    .ADR1(1'b1),
    .ADR0(x[7]),
    .ADR4(x[6]),
    .ADR2(ADDERTREE_INTERNAL_Madd_71_0),
    .ADR3(ADDERTREE_INTERNAL_Madd26_5730),
    .ADR5(1'b1),
    .O(\ADDERTREE_INTERNAL_Madd2_lut<0>7_5376 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X2Y34" ),
    .INIT ( 32'hFAFAA0A0 ))
  ADDERTREE_INTERNAL_Madd27 (
    .ADR1(1'b1),
    .ADR0(x[7]),
    .ADR4(x[6]),
    .ADR2(ADDERTREE_INTERNAL_Madd_71_0),
    .ADR3(1'b1),
    .O(ADDERTREE_INTERNAL_Madd27_5377)
  );
  X_FF #(
    .LOC ( "SLICE_X2Y34" ),
    .INIT ( 1'b0 ))
  y_6 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_y_6/CLK ),
    .I(ADDERTREE_INTERNAL_Madd_62),
    .O(y[6]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X2Y34" ))
  \ADDERTREE_INTERNAL_Madd2_cy<0>_6  (
    .CI(\ADDERTREE_INTERNAL_Madd2_cy<0>3 ),
    .CYINIT(1'b0),
    .CO({\ADDERTREE_INTERNAL_Madd2_cy<0>7 , \NLW_ADDERTREE_INTERNAL_Madd2_cy<0>_6_CO[2]_UNCONNECTED , 
\NLW_ADDERTREE_INTERNAL_Madd2_cy<0>_6_CO[1]_UNCONNECTED , \NLW_ADDERTREE_INTERNAL_Madd2_cy<0>_6_CO[0]_UNCONNECTED }),
    .DI({\NlwBufferSignal_ADDERTREE_INTERNAL_Madd2_cy<0>_6/DI<3> , \NlwBufferSignal_ADDERTREE_INTERNAL_Madd2_cy<0>_6/DI<2> , 
\NlwBufferSignal_ADDERTREE_INTERNAL_Madd2_cy<0>_6/DI<1> , \NlwBufferSignal_ADDERTREE_INTERNAL_Madd2_cy<0>_6/DI<0> }),
    .O({ADDERTREE_INTERNAL_Madd_72, ADDERTREE_INTERNAL_Madd_62, ADDERTREE_INTERNAL_Madd_52, ADDERTREE_INTERNAL_Madd_42}),
    .S({\ADDERTREE_INTERNAL_Madd2_lut<0>7_5376 , \ADDERTREE_INTERNAL_Madd2_lut<0>6_5391 , \ADDERTREE_INTERNAL_Madd2_lut<0>5_5399 , 
\ADDERTREE_INTERNAL_Madd2_lut<0>4_5407 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y34" ),
    .INIT ( 64'h5AA5A55A5AA5A55A ))
  \ADDERTREE_INTERNAL_Madd2_lut<0>6  (
    .ADR1(1'b1),
    .ADR0(x[6]),
    .ADR3(x[5]),
    .ADR2(ADDERTREE_INTERNAL_Madd_61_0),
    .ADR4(ADDERTREE_INTERNAL_Madd25_5727),
    .ADR5(1'b1),
    .O(\ADDERTREE_INTERNAL_Madd2_lut<0>6_5391 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X2Y34" ),
    .INIT ( 32'hFAA0FAA0 ))
  ADDERTREE_INTERNAL_Madd26 (
    .ADR1(1'b1),
    .ADR0(x[6]),
    .ADR3(x[5]),
    .ADR2(ADDERTREE_INTERNAL_Madd_61_0),
    .ADR4(1'b1),
    .O(ADDERTREE_INTERNAL_Madd26_pack_10)
  );
  X_FF #(
    .LOC ( "SLICE_X2Y34" ),
    .INIT ( 1'b0 ))
  y_5 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_y_5/CLK ),
    .I(ADDERTREE_INTERNAL_Madd_52),
    .O(y[5]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y34" ),
    .INIT ( 64'h5AA5A55A5AA5A55A ))
  \ADDERTREE_INTERNAL_Madd2_lut<0>5  (
    .ADR1(1'b1),
    .ADR0(x[5]),
    .ADR4(x[4]),
    .ADR2(ADDERTREE_INTERNAL_Madd_51_0),
    .ADR3(ADDERTREE_INTERNAL_Madd24_5724),
    .ADR5(1'b1),
    .O(\ADDERTREE_INTERNAL_Madd2_lut<0>5_5399 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X2Y34" ),
    .INIT ( 32'hFAFAA0A0 ))
  ADDERTREE_INTERNAL_Madd25 (
    .ADR1(1'b1),
    .ADR0(x[5]),
    .ADR4(x[4]),
    .ADR2(ADDERTREE_INTERNAL_Madd_51_0),
    .ADR3(1'b1),
    .O(ADDERTREE_INTERNAL_Madd25_pack_9)
  );
  X_FF #(
    .LOC ( "SLICE_X2Y34" ),
    .INIT ( 1'b0 ))
  y_4 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_y_4/CLK ),
    .I(ADDERTREE_INTERNAL_Madd_42),
    .O(y[4]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y34" ),
    .INIT ( 64'h5AA5A55A5AA5A55A ))
  \ADDERTREE_INTERNAL_Madd2_lut<0>4  (
    .ADR1(1'b1),
    .ADR3(x[4]),
    .ADR2(x[3]),
    .ADR0(ADDERTREE_INTERNAL_Madd_41_0),
    .ADR4(ADDERTREE_INTERNAL_Madd23_0),
    .ADR5(1'b1),
    .O(\ADDERTREE_INTERNAL_Madd2_lut<0>4_5407 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X2Y34" ),
    .INIT ( 32'hFAA0FAA0 ))
  ADDERTREE_INTERNAL_Madd24 (
    .ADR1(1'b1),
    .ADR3(x[4]),
    .ADR2(x[3]),
    .ADR0(ADDERTREE_INTERNAL_Madd_41_0),
    .ADR4(1'b1),
    .O(ADDERTREE_INTERNAL_Madd24_pack_8)
  );
  X_BUF   \y<11>/y<11>_BMUX_Delay  (
    .I(ADDERTREE_INTERNAL_Madd29_pack_10),
    .O(ADDERTREE_INTERNAL_Madd29_5740)
  );
  X_BUF   \y<11>/y<11>_AMUX_Delay  (
    .I(ADDERTREE_INTERNAL_Madd28_pack_9),
    .O(ADDERTREE_INTERNAL_Madd28_5737)
  );
  X_FF #(
    .LOC ( "SLICE_X2Y35" ),
    .INIT ( 1'b0 ))
  y_11 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_y_11/CLK ),
    .I(ADDERTREE_INTERNAL_Madd_112),
    .O(y[11]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y35" ),
    .INIT ( 64'h5A5555A5A5AAAA5A ))
  \ADDERTREE_INTERNAL_Madd2_lut<0>11  (
    .ADR1(1'b1),
    .ADR0(x[11]),
    .ADR2(x[10]),
    .ADR5(ADDERTREE_INTERNAL_Madd_111_0),
    .ADR3(x[9]),
    .ADR4(ADDERTREE_INTERNAL_Madd_101_0),
    .O(\ADDERTREE_INTERNAL_Madd2_lut<0>11_5419 )
  );
  X_FF #(
    .LOC ( "SLICE_X2Y35" ),
    .INIT ( 1'b0 ))
  y_10 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_y_10/CLK ),
    .I(ADDERTREE_INTERNAL_Madd_102),
    .O(y[10]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X2Y35" ))
  \ADDERTREE_INTERNAL_Madd2_xor<0>_10  (
    .CI(\ADDERTREE_INTERNAL_Madd2_cy<0>7 ),
    .CYINIT(1'b0),
    .CO({\NLW_ADDERTREE_INTERNAL_Madd2_xor<0>_10_CO[3]_UNCONNECTED , \NLW_ADDERTREE_INTERNAL_Madd2_xor<0>_10_CO[2]_UNCONNECTED , 
\NLW_ADDERTREE_INTERNAL_Madd2_xor<0>_10_CO[1]_UNCONNECTED , \NLW_ADDERTREE_INTERNAL_Madd2_xor<0>_10_CO[0]_UNCONNECTED }),
    .DI({\NLW_ADDERTREE_INTERNAL_Madd2_xor<0>_10_DI[3]_UNCONNECTED , \NlwBufferSignal_ADDERTREE_INTERNAL_Madd2_xor<0>_10/DI<2> , 
\NlwBufferSignal_ADDERTREE_INTERNAL_Madd2_xor<0>_10/DI<1> , \NlwBufferSignal_ADDERTREE_INTERNAL_Madd2_xor<0>_10/DI<0> }),
    .O({ADDERTREE_INTERNAL_Madd_112, ADDERTREE_INTERNAL_Madd_102, ADDERTREE_INTERNAL_Madd_92, ADDERTREE_INTERNAL_Madd_82}),
    .S({\ADDERTREE_INTERNAL_Madd2_lut<0>11_5419 , \ADDERTREE_INTERNAL_Madd2_lut<0>10_5433 , \ADDERTREE_INTERNAL_Madd2_lut<0>9_5440 , 
\ADDERTREE_INTERNAL_Madd2_lut<0>8_5448 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y35" ),
    .INIT ( 64'h0FF0F00FF00F0FF0 ))
  \ADDERTREE_INTERNAL_Madd2_lut<0>10  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(x[10]),
    .ADR3(x[9]),
    .ADR4(ADDERTREE_INTERNAL_Madd_101_0),
    .ADR5(ADDERTREE_INTERNAL_Madd29_5740),
    .O(\ADDERTREE_INTERNAL_Madd2_lut<0>10_5433 )
  );
  X_FF #(
    .LOC ( "SLICE_X2Y35" ),
    .INIT ( 1'b0 ))
  y_9 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_y_9/CLK ),
    .I(ADDERTREE_INTERNAL_Madd_92),
    .O(y[9]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y35" ),
    .INIT ( 64'h5AA5A55A5AA5A55A ))
  \ADDERTREE_INTERNAL_Madd2_lut<0>9  (
    .ADR1(1'b1),
    .ADR0(x[9]),
    .ADR4(x[8]),
    .ADR2(ADDERTREE_INTERNAL_Madd_91_0),
    .ADR3(ADDERTREE_INTERNAL_Madd28_5737),
    .ADR5(1'b1),
    .O(\ADDERTREE_INTERNAL_Madd2_lut<0>9_5440 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X2Y35" ),
    .INIT ( 32'hFAFAA0A0 ))
  ADDERTREE_INTERNAL_Madd29 (
    .ADR1(1'b1),
    .ADR0(x[9]),
    .ADR4(x[8]),
    .ADR2(ADDERTREE_INTERNAL_Madd_91_0),
    .ADR3(1'b1),
    .O(ADDERTREE_INTERNAL_Madd29_pack_10)
  );
  X_FF #(
    .LOC ( "SLICE_X2Y35" ),
    .INIT ( 1'b0 ))
  y_8 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_y_8/CLK ),
    .I(ADDERTREE_INTERNAL_Madd_82),
    .O(y[8]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y35" ),
    .INIT ( 64'h5AA5A55A5AA5A55A ))
  \ADDERTREE_INTERNAL_Madd2_lut<0>8  (
    .ADR1(1'b1),
    .ADR2(x[8]),
    .ADR3(x[7]),
    .ADR0(ADDERTREE_INTERNAL_Madd_81_0),
    .ADR4(ADDERTREE_INTERNAL_Madd27_0),
    .ADR5(1'b1),
    .O(\ADDERTREE_INTERNAL_Madd2_lut<0>8_5448 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X2Y35" ),
    .INIT ( 32'hFAA0FAA0 ))
  ADDERTREE_INTERNAL_Madd28 (
    .ADR1(1'b1),
    .ADR2(x[8]),
    .ADR3(x[7]),
    .ADR0(ADDERTREE_INTERNAL_Madd_81_0),
    .ADR4(1'b1),
    .O(ADDERTREE_INTERNAL_Madd28_pack_9)
  );
  X_BUF   \ADDERTREE_INTERNAL_Madd_111/ADDERTREE_INTERNAL_Madd_111_BMUX_Delay  (
    .I(ADDERTREE_INTERNAL_Madd_111),
    .O(ADDERTREE_INTERNAL_Madd_111_0)
  );
  X_BUF   \ADDERTREE_INTERNAL_Madd_111/ADDERTREE_INTERNAL_Madd_111_AMUX_Delay  (
    .I(ADDERTREE_INTERNAL_Madd_101),
    .O(ADDERTREE_INTERNAL_Madd_101_0)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X3Y36" ))
  \ADDERTREE_INTERNAL_Madd1_xor<11>  (
    .CI(\ADDERTREE_INTERNAL_Madd1_cy[9] ),
    .CYINIT(1'b0),
    .CO({\NLW_ADDERTREE_INTERNAL_Madd1_xor<11>_CO[3]_UNCONNECTED , \NLW_ADDERTREE_INTERNAL_Madd1_xor<11>_CO[2]_UNCONNECTED , 
\NLW_ADDERTREE_INTERNAL_Madd1_xor<11>_CO[1]_UNCONNECTED , \NLW_ADDERTREE_INTERNAL_Madd1_xor<11>_CO[0]_UNCONNECTED }),
    .DI({\NLW_ADDERTREE_INTERNAL_Madd1_xor<11>_DI[3]_UNCONNECTED , \NLW_ADDERTREE_INTERNAL_Madd1_xor<11>_DI[2]_UNCONNECTED , 
\NLW_ADDERTREE_INTERNAL_Madd1_xor<11>_DI[1]_UNCONNECTED , \NlwBufferSignal_ADDERTREE_INTERNAL_Madd1_xor<11>/DI<0> }),
    .O({\NLW_ADDERTREE_INTERNAL_Madd1_xor<11>_O[3]_UNCONNECTED , \NLW_ADDERTREE_INTERNAL_Madd1_xor<11>_O[2]_UNCONNECTED , ADDERTREE_INTERNAL_Madd_111
, ADDERTREE_INTERNAL_Madd_101}),
    .S({\NLW_ADDERTREE_INTERNAL_Madd1_xor<11>_S[3]_UNCONNECTED , \NLW_ADDERTREE_INTERNAL_Madd1_xor<11>_S[2]_UNCONNECTED , 
ADDERTREE_INTERNAL_Madd1_lut[11], ADDERTREE_INTERNAL_Madd1_lut[10]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y36" ),
    .INIT ( 64'h5555AAAA5555AAAA ))
  \ADDERTREE_INTERNAL_Madd1_lut<11>  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(x_n[11]),
    .ADR4(x_n[9]),
    .O(ADDERTREE_INTERNAL_Madd1_lut[11])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y36" ),
    .INIT ( 64'h00FFFF0000FFFF00 ))
  \ADDERTREE_INTERNAL_Madd1_lut<10>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(1'b1),
    .ADR4(x_n[10]),
    .ADR3(x_n[8]),
    .O(ADDERTREE_INTERNAL_Madd1_lut[10])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y37" ))
  \Y_out<9>  (
    .PAD(Y_out[9])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y37" ))
  Y_out_9_OBUF (
    .I(\NlwBufferSignal_Y_out_9_OBUF/I ),
    .O(Y_out[9])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y38" ))
  \Y_out<10>  (
    .PAD(Y_out[10])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y38" ))
  Y_out_10_OBUF (
    .I(\NlwBufferSignal_Y_out_10_OBUF/I ),
    .O(Y_out[10])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y39" ))
  \Y_out<11>  (
    .PAD(Y_out[11])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y39" ))
  Y_out_11_OBUF (
    .I(\NlwBufferSignal_Y_out_11_OBUF/I ),
    .O(Y_out[11])
  );
  X_IPAD #(
    .LOC ( "IOB_X1Y17" ))
  clk_101 (
    .PAD(clk)
  );
  X_BUF #(
    .LOC ( "IOB_X1Y17" ))
  \clk_BUFGP/IBUFG  (
    .O(\clk_BUFGP/IBUFG_5672 ),
    .I(clk)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y14" ))
  \X_in<0>  (
    .PAD(X_in[0])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y14" ))
  X_in_0_IBUF (
    .O(X_in_0_IBUF_5678),
    .I(X_in[0])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y15" ))
  \X_in<1>  (
    .PAD(X_in[1])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y15" ))
  X_in_1_IBUF (
    .O(X_in_1_IBUF_5680),
    .I(X_in[1])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y16" ))
  \X_in<2>  (
    .PAD(X_in[2])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y16" ))
  X_in_2_IBUF (
    .O(X_in_2_IBUF_5682),
    .I(X_in[2])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y17" ))
  \X_in<3>  (
    .PAD(X_in[3])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y17" ))
  X_in_3_IBUF (
    .O(X_in_3_IBUF_5684),
    .I(X_in[3])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y18" ))
  \X_in<4>  (
    .PAD(X_in[4])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y18" ))
  X_in_4_IBUF (
    .O(X_in_4_IBUF_5686),
    .I(X_in[4])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y19" ))
  \X_in<5>  (
    .PAD(X_in[5])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y19" ))
  X_in_5_IBUF (
    .O(X_in_5_IBUF_5688),
    .I(X_in[5])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y20" ))
  \X_in<6>  (
    .PAD(X_in[6])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y20" ))
  X_in_6_IBUF (
    .O(X_in_6_IBUF_5690),
    .I(X_in[6])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y21" ))
  \X_in<7>  (
    .PAD(X_in[7])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y21" ))
  X_in_7_IBUF (
    .O(X_in_7_IBUF_5692),
    .I(X_in[7])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y22" ))
  \X_in<8>  (
    .PAD(X_in[8])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y22" ))
  X_in_8_IBUF (
    .O(X_in_8_IBUF_5694),
    .I(X_in[8])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y24" ))
  \X_in<9>  (
    .PAD(X_in[9])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y24" ))
  X_in_9_IBUF (
    .O(X_in_9_IBUF_5696),
    .I(X_in[9])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y27" ))
  nReset_134 (
    .PAD(nReset)
  );
  X_BUF #(
    .LOC ( "IOB_X0Y27" ))
  nReset_IBUF (
    .O(nReset_IBUF_5708),
    .I(nReset)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y25" ))
  \X_in<10>  (
    .PAD(X_in[10])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y25" ))
  X_in_10_IBUF (
    .O(X_in_10_IBUF_5710),
    .I(X_in[10])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y26" ))
  \X_in<11>  (
    .PAD(X_in[11])
  );
  X_BUF #(
    .LOC ( "IOB_X0Y26" ))
  X_in_11_IBUF (
    .O(X_in_11_IBUF_5711),
    .I(X_in[11])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y28" ))
  \Y_out<0>  (
    .PAD(Y_out[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y28" ))
  Y_out_0_OBUF (
    .I(\NlwBufferSignal_Y_out_0_OBUF/I ),
    .O(Y_out[0])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y29" ))
  \Y_out<1>  (
    .PAD(Y_out[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y29" ))
  Y_out_1_OBUF (
    .I(\NlwBufferSignal_Y_out_1_OBUF/I ),
    .O(Y_out[1])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y30" ))
  \Y_out<2>  (
    .PAD(Y_out[2])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y30" ))
  Y_out_2_OBUF (
    .I(\NlwBufferSignal_Y_out_2_OBUF/I ),
    .O(Y_out[2])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y31" ))
  \Y_out<3>  (
    .PAD(Y_out[3])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y31" ))
  Y_out_3_OBUF (
    .I(\NlwBufferSignal_Y_out_3_OBUF/I ),
    .O(Y_out[3])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y32" ))
  \Y_out<4>  (
    .PAD(Y_out[4])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y32" ))
  Y_out_4_OBUF (
    .I(\NlwBufferSignal_Y_out_4_OBUF/I ),
    .O(Y_out[4])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y33" ))
  \Y_out<5>  (
    .PAD(Y_out[5])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y33" ))
  Y_out_5_OBUF (
    .I(\NlwBufferSignal_Y_out_5_OBUF/I ),
    .O(Y_out[5])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y34" ))
  \Y_out<6>  (
    .PAD(Y_out[6])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y34" ))
  Y_out_6_OBUF (
    .I(\NlwBufferSignal_Y_out_6_OBUF/I ),
    .O(Y_out[6])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y35" ))
  \Y_out<7>  (
    .PAD(Y_out[7])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y35" ))
  Y_out_7_OBUF (
    .I(\NlwBufferSignal_Y_out_7_OBUF/I ),
    .O(Y_out[7])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y36" ))
  \Y_out<8>  (
    .PAD(Y_out[8])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y36" ))
  Y_out_8_OBUF (
    .I(\NlwBufferSignal_Y_out_8_OBUF/I ),
    .O(Y_out[8])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y26" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  nReset_inv1_INV_0 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(1'b1),
    .ADR4(1'b1),
    .ADR3(nReset_IBUF_5708),
    .O(nReset_inv)
  );
  X_FF #(
    .LOC ( "SLICE_X1Y34" ),
    .INIT ( 1'b0 ))
  x_11 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_x_11/CLK ),
    .I(\NlwBufferSignal_x_11/IN ),
    .O(x[11]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X1Y34" ),
    .INIT ( 1'b0 ))
  x_10 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_x_10/CLK ),
    .I(\NlwBufferSignal_x_10/IN ),
    .O(x[10]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X1Y34" ),
    .INIT ( 1'b0 ))
  x_9 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_x_9/CLK ),
    .I(\NlwBufferSignal_x_9/IN ),
    .O(x[9]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X1Y34" ),
    .INIT ( 1'b0 ))
  x_8 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_x_8/CLK ),
    .I(\NlwBufferSignal_x_8/IN ),
    .O(x[8]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X2Y30" ),
    .INIT ( 1'b0 ))
  x_7 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_x_7/CLK ),
    .I(\NlwBufferSignal_x_7/IN ),
    .O(x[7]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X2Y30" ),
    .INIT ( 1'b0 ))
  x_6 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_x_6/CLK ),
    .I(\NlwBufferSignal_x_6/IN ),
    .O(x[6]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X2Y30" ),
    .INIT ( 1'b0 ))
  x_5 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_x_5/CLK ),
    .I(\NlwBufferSignal_x_5/IN ),
    .O(x[5]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X2Y30" ),
    .INIT ( 1'b0 ))
  x_4 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_x_4/CLK ),
    .I(\NlwBufferSignal_x_4/IN ),
    .O(x[4]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X2Y31" ),
    .INIT ( 1'b0 ))
  x_3 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_x_3/CLK ),
    .I(\NlwBufferSignal_x_3/IN ),
    .O(x[3]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X2Y31" ),
    .INIT ( 1'b0 ))
  x_2 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_x_2/CLK ),
    .I(\NlwBufferSignal_x_2/IN ),
    .O(x[2]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X2Y31" ),
    .INIT ( 1'b0 ))
  x_1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_x_1/CLK ),
    .I(\NlwBufferSignal_x_1/IN ),
    .O(x[1]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X2Y31" ),
    .INIT ( 1'b0 ))
  x_0 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_x_0/CLK ),
    .I(\NlwBufferSignal_x_0/IN ),
    .O(x[0]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X3Y33" ),
    .INIT ( 1'b0 ))
  x_n_3 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_x_n_3/CLK ),
    .I(\NlwBufferSignal_x_n_3/IN ),
    .O(x_n[3]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X3Y33" ),
    .INIT ( 1'b0 ))
  x_n_2 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_x_n_2/CLK ),
    .I(\NlwBufferSignal_x_n_2/IN ),
    .O(x_n[2]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X3Y33" ),
    .INIT ( 1'b0 ))
  x_n_1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_x_n_1/CLK ),
    .I(\NlwBufferSignal_x_n_1/IN ),
    .O(x_n[1]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X3Y33" ),
    .INIT ( 1'b0 ))
  x_n_0 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_x_n_0/CLK ),
    .I(\NlwBufferSignal_x_n_0/IN ),
    .O(x_n[0]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y33" ),
    .INIT ( 64'hFFFF000000000000 ))
  ADDERTREE_INTERNAL_Madd2 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(x_n[0]),
    .ADR3(1'b1),
    .ADR4(x[0]),
    .O(ADDERTREE_INTERNAL_Madd2_5697)
  );
  X_BUF   \x_n<4>/x_n<4>_DMUX_Delay  (
    .I(ADDERTREE_INTERNAL_Madd_51),
    .O(ADDERTREE_INTERNAL_Madd_51_0)
  );
  X_BUF   \x_n<4>/x_n<4>_CMUX_Delay  (
    .I(ADDERTREE_INTERNAL_Madd_41),
    .O(ADDERTREE_INTERNAL_Madd_41_0)
  );
  X_BUF   \x_n<4>/x_n<4>_BMUX_Delay  (
    .I(ADDERTREE_INTERNAL_Madd_31),
    .O(ADDERTREE_INTERNAL_Madd_31_0)
  );
  X_BUF   \x_n<4>/x_n<4>_AMUX_Delay  (
    .I(ADDERTREE_INTERNAL_Madd_21),
    .O(ADDERTREE_INTERNAL_Madd_21_0)
  );
  X_FF #(
    .LOC ( "SLICE_X3Y34" ),
    .INIT ( 1'b0 ))
  x_n_4 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_x_n_4/CLK ),
    .I(\x<4>_rt_5594 ),
    .O(x_n[4]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y34" ),
    .INIT ( 64'h55AA55AA55AA55AA ))
  \ADDERTREE_INTERNAL_Madd1_lut<5>  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR0(x_n[5]),
    .ADR3(x_n[3]),
    .ADR5(1'b1),
    .O(ADDERTREE_INTERNAL_Madd1_lut[5])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X3Y34" ),
    .INIT ( 32'hFFFF0000 ))
  \x<4>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(x[4]),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .O(\x<4>_rt_5594 )
  );
  X_ZERO #(
    .LOC ( "SLICE_X3Y34" ))
  \ProtoComp17.CYINITGND  (
    .O(\NLW_ProtoComp17.CYINITGND_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X3Y34" ),
    .INIT ( 1'b0 ))
  x_n_5 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_x_n_5/CLK ),
    .I(\x<5>_rt_5580 ),
    .O(x_n[5]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X3Y34" ))
  \ADDERTREE_INTERNAL_Madd1_cy<5>  (
    .CI(1'b0),
    .CYINIT(1'b0),
    .CO({\ADDERTREE_INTERNAL_Madd1_cy[5] , \NLW_ADDERTREE_INTERNAL_Madd1_cy<5>_CO[2]_UNCONNECTED , 
\NLW_ADDERTREE_INTERNAL_Madd1_cy<5>_CO[1]_UNCONNECTED , \NLW_ADDERTREE_INTERNAL_Madd1_cy<5>_CO[0]_UNCONNECTED }),
    .DI({\NlwBufferSignal_ADDERTREE_INTERNAL_Madd1_cy<5>/DI<3> , \NlwBufferSignal_ADDERTREE_INTERNAL_Madd1_cy<5>/DI<2> , 
\NlwBufferSignal_ADDERTREE_INTERNAL_Madd1_cy<5>/DI<1> , \NlwBufferSignal_ADDERTREE_INTERNAL_Madd1_cy<5>/DI<0> }),
    .O({ADDERTREE_INTERNAL_Madd_51, ADDERTREE_INTERNAL_Madd_41, ADDERTREE_INTERNAL_Madd_31, ADDERTREE_INTERNAL_Madd_21}),
    .S({ADDERTREE_INTERNAL_Madd1_lut[5], ADDERTREE_INTERNAL_Madd1_lut[4], ADDERTREE_INTERNAL_Madd1_lut[3], ADDERTREE_INTERNAL_Madd1_lut[2]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y34" ),
    .INIT ( 64'h0F0FF0F00F0FF0F0 ))
  \ADDERTREE_INTERNAL_Madd1_lut<4>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(x_n[4]),
    .ADR4(x_n[2]),
    .ADR5(1'b1),
    .O(ADDERTREE_INTERNAL_Madd1_lut[4])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X3Y34" ),
    .INIT ( 32'hFF00FF00 ))
  \x<5>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(x[5]),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .O(\x<5>_rt_5580 )
  );
  X_FF #(
    .LOC ( "SLICE_X3Y34" ),
    .INIT ( 1'b0 ))
  x_n_6 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_x_n_6/CLK ),
    .I(\x<6>_rt_5573 ),
    .O(x_n[6]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y34" ),
    .INIT ( 64'h0FF00FF00FF00FF0 ))
  \ADDERTREE_INTERNAL_Madd1_lut<3>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR2(x_n[3]),
    .ADR3(x_n[1]),
    .ADR5(1'b1),
    .O(ADDERTREE_INTERNAL_Madd1_lut[3])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X3Y34" ),
    .INIT ( 32'hFFFF0000 ))
  \x<6>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(x[6]),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .O(\x<6>_rt_5573 )
  );
  X_FF #(
    .LOC ( "SLICE_X3Y34" ),
    .INIT ( 1'b0 ))
  x_n_7 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_x_n_7/CLK ),
    .I(\x<7>_rt_5566 ),
    .O(x_n[7]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y34" ),
    .INIT ( 64'h0F0FF0F00F0FF0F0 ))
  \ADDERTREE_INTERNAL_Madd1_lut<2>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(x_n[2]),
    .ADR4(x_n[0]),
    .ADR5(1'b1),
    .O(ADDERTREE_INTERNAL_Madd1_lut[2])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X3Y34" ),
    .INIT ( 32'hFF00FF00 ))
  \x<7>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(x[7]),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .O(\x<7>_rt_5566 )
  );
  X_BUF   \x_n<8>/x_n<8>_DMUX_Delay  (
    .I(ADDERTREE_INTERNAL_Madd_91),
    .O(ADDERTREE_INTERNAL_Madd_91_0)
  );
  X_BUF   \x_n<8>/x_n<8>_CMUX_Delay  (
    .I(ADDERTREE_INTERNAL_Madd_81),
    .O(ADDERTREE_INTERNAL_Madd_81_0)
  );
  X_BUF   \x_n<8>/x_n<8>_BMUX_Delay  (
    .I(ADDERTREE_INTERNAL_Madd_71),
    .O(ADDERTREE_INTERNAL_Madd_71_0)
  );
  X_BUF   \x_n<8>/x_n<8>_AMUX_Delay  (
    .I(ADDERTREE_INTERNAL_Madd_61),
    .O(ADDERTREE_INTERNAL_Madd_61_0)
  );
  X_FF #(
    .LOC ( "SLICE_X3Y35" ),
    .INIT ( 1'b0 ))
  x_n_8 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_x_n_8/CLK ),
    .I(\x<8>_rt_5604 ),
    .O(x_n[8]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y35" ),
    .INIT ( 64'h55AA55AA55AA55AA ))
  \ADDERTREE_INTERNAL_Madd1_lut<9>  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR0(x_n[9]),
    .ADR3(x_n[7]),
    .ADR5(1'b1),
    .O(ADDERTREE_INTERNAL_Madd1_lut[9])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X3Y35" ),
    .INIT ( 32'hFFFF0000 ))
  \x<8>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(x[8]),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .O(\x<8>_rt_5604 )
  );
  X_FF #(
    .LOC ( "SLICE_X3Y35" ),
    .INIT ( 1'b0 ))
  x_n_9 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_x_n_9/CLK ),
    .I(\x<9>_rt_5619 ),
    .O(x_n[9]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X3Y35" ))
  \ADDERTREE_INTERNAL_Madd1_cy<9>  (
    .CI(\ADDERTREE_INTERNAL_Madd1_cy[5] ),
    .CYINIT(1'b0),
    .CO({\ADDERTREE_INTERNAL_Madd1_cy[9] , \NLW_ADDERTREE_INTERNAL_Madd1_cy<9>_CO[2]_UNCONNECTED , 
\NLW_ADDERTREE_INTERNAL_Madd1_cy<9>_CO[1]_UNCONNECTED , \NLW_ADDERTREE_INTERNAL_Madd1_cy<9>_CO[0]_UNCONNECTED }),
    .DI({\NlwBufferSignal_ADDERTREE_INTERNAL_Madd1_cy<9>/DI<3> , \NlwBufferSignal_ADDERTREE_INTERNAL_Madd1_cy<9>/DI<2> , 
\NlwBufferSignal_ADDERTREE_INTERNAL_Madd1_cy<9>/DI<1> , \NlwBufferSignal_ADDERTREE_INTERNAL_Madd1_cy<9>/DI<0> }),
    .O({ADDERTREE_INTERNAL_Madd_91, ADDERTREE_INTERNAL_Madd_81, ADDERTREE_INTERNAL_Madd_71, ADDERTREE_INTERNAL_Madd_61}),
    .S({ADDERTREE_INTERNAL_Madd1_lut[9], ADDERTREE_INTERNAL_Madd1_lut[8], ADDERTREE_INTERNAL_Madd1_lut[7], ADDERTREE_INTERNAL_Madd1_lut[6]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y35" ),
    .INIT ( 64'h0FF00FF00FF00FF0 ))
  \ADDERTREE_INTERNAL_Madd1_lut<8>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR2(x_n[8]),
    .ADR3(x_n[6]),
    .ADR5(1'b1),
    .O(ADDERTREE_INTERNAL_Madd1_lut[8])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X3Y35" ),
    .INIT ( 32'hFFFF0000 ))
  \x<9>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(x[9]),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .O(\x<9>_rt_5619 )
  );
  X_FF #(
    .LOC ( "SLICE_X3Y35" ),
    .INIT ( 1'b0 ))
  x_n_10 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_x_n_10/CLK ),
    .I(\x<10>_rt_5612 ),
    .O(x_n[10]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y35" ),
    .INIT ( 64'h0FF00FF00FF00FF0 ))
  \ADDERTREE_INTERNAL_Madd1_lut<7>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(x_n[7]),
    .ADR2(x_n[5]),
    .ADR5(1'b1),
    .O(ADDERTREE_INTERNAL_Madd1_lut[7])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X3Y35" ),
    .INIT ( 32'hFFFF0000 ))
  \x<10>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(x[10]),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .O(\x<10>_rt_5612 )
  );
  X_FF #(
    .LOC ( "SLICE_X3Y35" ),
    .INIT ( 1'b0 ))
  x_n_11 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_x_n_11/CLK ),
    .I(\x<11>_rt_5638 ),
    .O(x_n[11]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y35" ),
    .INIT ( 64'h0FF00FF00FF00FF0 ))
  \ADDERTREE_INTERNAL_Madd1_lut<6>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR2(x_n[6]),
    .ADR3(x_n[4]),
    .ADR5(1'b1),
    .O(ADDERTREE_INTERNAL_Madd1_lut[6])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X3Y35" ),
    .INIT ( 32'hFFFF0000 ))
  \x<11>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(x[11]),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .O(\x<11>_rt_5638 )
  );
  X_BUF   \NlwBufferBlock_clk_BUFGP/BUFG/IN  (
    .I(\clk_BUFGP/IBUFG_5672 ),
    .O(\NlwBufferSignal_clk_BUFGP/BUFG/IN )
  );
  X_BUF   \NlwBufferBlock_y_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_y_3/CLK )
  );
  X_BUF   \NlwBufferBlock_y_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_y_2/CLK )
  );
  X_BUF   \NlwBufferBlock_ADDERTREE_INTERNAL_Madd2_cy<0>_2/DI<1>  (
    .I(ADDERTREE_INTERNAL_Madd2_5697),
    .O(\NlwBufferSignal_ADDERTREE_INTERNAL_Madd2_cy<0>_2/DI<1> )
  );
  X_BUF   \NlwBufferBlock_ADDERTREE_INTERNAL_Madd2_cy<0>_2/DI<2>  (
    .I(ADDERTREE_INTERNAL_Madd21_5714),
    .O(\NlwBufferSignal_ADDERTREE_INTERNAL_Madd2_cy<0>_2/DI<2> )
  );
  X_BUF   \NlwBufferBlock_ADDERTREE_INTERNAL_Madd2_cy<0>_2/DI<3>  (
    .I(ADDERTREE_INTERNAL_Madd22_5717),
    .O(\NlwBufferSignal_ADDERTREE_INTERNAL_Madd2_cy<0>_2/DI<3> )
  );
  X_BUF   \NlwBufferBlock_y_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_y_1/CLK )
  );
  X_BUF   \NlwBufferBlock_y_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_y_0/CLK )
  );
  X_BUF   \NlwBufferBlock_y_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_y_7/CLK )
  );
  X_BUF   \NlwBufferBlock_y_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_y_6/CLK )
  );
  X_BUF   \NlwBufferBlock_ADDERTREE_INTERNAL_Madd2_cy<0>_6/DI<0>  (
    .I(ADDERTREE_INTERNAL_Madd23_0),
    .O(\NlwBufferSignal_ADDERTREE_INTERNAL_Madd2_cy<0>_6/DI<0> )
  );
  X_BUF   \NlwBufferBlock_ADDERTREE_INTERNAL_Madd2_cy<0>_6/DI<1>  (
    .I(ADDERTREE_INTERNAL_Madd24_5724),
    .O(\NlwBufferSignal_ADDERTREE_INTERNAL_Madd2_cy<0>_6/DI<1> )
  );
  X_BUF   \NlwBufferBlock_ADDERTREE_INTERNAL_Madd2_cy<0>_6/DI<2>  (
    .I(ADDERTREE_INTERNAL_Madd25_5727),
    .O(\NlwBufferSignal_ADDERTREE_INTERNAL_Madd2_cy<0>_6/DI<2> )
  );
  X_BUF   \NlwBufferBlock_ADDERTREE_INTERNAL_Madd2_cy<0>_6/DI<3>  (
    .I(ADDERTREE_INTERNAL_Madd26_5730),
    .O(\NlwBufferSignal_ADDERTREE_INTERNAL_Madd2_cy<0>_6/DI<3> )
  );
  X_BUF   \NlwBufferBlock_y_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_y_5/CLK )
  );
  X_BUF   \NlwBufferBlock_y_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_y_4/CLK )
  );
  X_BUF   \NlwBufferBlock_y_11/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_y_11/CLK )
  );
  X_BUF   \NlwBufferBlock_y_10/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_y_10/CLK )
  );
  X_BUF   \NlwBufferBlock_ADDERTREE_INTERNAL_Madd2_xor<0>_10/DI<0>  (
    .I(ADDERTREE_INTERNAL_Madd27_0),
    .O(\NlwBufferSignal_ADDERTREE_INTERNAL_Madd2_xor<0>_10/DI<0> )
  );
  X_BUF   \NlwBufferBlock_ADDERTREE_INTERNAL_Madd2_xor<0>_10/DI<1>  (
    .I(ADDERTREE_INTERNAL_Madd28_5737),
    .O(\NlwBufferSignal_ADDERTREE_INTERNAL_Madd2_xor<0>_10/DI<1> )
  );
  X_BUF   \NlwBufferBlock_ADDERTREE_INTERNAL_Madd2_xor<0>_10/DI<2>  (
    .I(ADDERTREE_INTERNAL_Madd29_5740),
    .O(\NlwBufferSignal_ADDERTREE_INTERNAL_Madd2_xor<0>_10/DI<2> )
  );
  X_BUF   \NlwBufferBlock_y_9/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_y_9/CLK )
  );
  X_BUF   \NlwBufferBlock_y_8/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_y_8/CLK )
  );
  X_BUF   \NlwBufferBlock_ADDERTREE_INTERNAL_Madd1_xor<11>/DI<0>  (
    .I(x_n[10]),
    .O(\NlwBufferSignal_ADDERTREE_INTERNAL_Madd1_xor<11>/DI<0> )
  );
  X_BUF   \NlwBufferBlock_Y_out_9_OBUF/I  (
    .I(y[9]),
    .O(\NlwBufferSignal_Y_out_9_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Y_out_10_OBUF/I  (
    .I(y[10]),
    .O(\NlwBufferSignal_Y_out_10_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Y_out_11_OBUF/I  (
    .I(y[11]),
    .O(\NlwBufferSignal_Y_out_11_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Y_out_0_OBUF/I  (
    .I(y[0]),
    .O(\NlwBufferSignal_Y_out_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Y_out_1_OBUF/I  (
    .I(y[1]),
    .O(\NlwBufferSignal_Y_out_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Y_out_2_OBUF/I  (
    .I(y[2]),
    .O(\NlwBufferSignal_Y_out_2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Y_out_3_OBUF/I  (
    .I(y[3]),
    .O(\NlwBufferSignal_Y_out_3_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Y_out_4_OBUF/I  (
    .I(y[4]),
    .O(\NlwBufferSignal_Y_out_4_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Y_out_5_OBUF/I  (
    .I(y[5]),
    .O(\NlwBufferSignal_Y_out_5_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Y_out_6_OBUF/I  (
    .I(y[6]),
    .O(\NlwBufferSignal_Y_out_6_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Y_out_7_OBUF/I  (
    .I(y[7]),
    .O(\NlwBufferSignal_Y_out_7_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Y_out_8_OBUF/I  (
    .I(y[8]),
    .O(\NlwBufferSignal_Y_out_8_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_x_11/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_x_11/CLK )
  );
  X_BUF   \NlwBufferBlock_x_11/IN  (
    .I(X_in_11_IBUF_5711),
    .O(\NlwBufferSignal_x_11/IN )
  );
  X_BUF   \NlwBufferBlock_x_10/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_x_10/CLK )
  );
  X_BUF   \NlwBufferBlock_x_10/IN  (
    .I(X_in_10_IBUF_5710),
    .O(\NlwBufferSignal_x_10/IN )
  );
  X_BUF   \NlwBufferBlock_x_9/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_x_9/CLK )
  );
  X_BUF   \NlwBufferBlock_x_9/IN  (
    .I(X_in_9_IBUF_5696),
    .O(\NlwBufferSignal_x_9/IN )
  );
  X_BUF   \NlwBufferBlock_x_8/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_x_8/CLK )
  );
  X_BUF   \NlwBufferBlock_x_8/IN  (
    .I(X_in_8_IBUF_5694),
    .O(\NlwBufferSignal_x_8/IN )
  );
  X_BUF   \NlwBufferBlock_x_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_x_7/CLK )
  );
  X_BUF   \NlwBufferBlock_x_7/IN  (
    .I(X_in_7_IBUF_5692),
    .O(\NlwBufferSignal_x_7/IN )
  );
  X_BUF   \NlwBufferBlock_x_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_x_6/CLK )
  );
  X_BUF   \NlwBufferBlock_x_6/IN  (
    .I(X_in_6_IBUF_5690),
    .O(\NlwBufferSignal_x_6/IN )
  );
  X_BUF   \NlwBufferBlock_x_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_x_5/CLK )
  );
  X_BUF   \NlwBufferBlock_x_5/IN  (
    .I(X_in_5_IBUF_5688),
    .O(\NlwBufferSignal_x_5/IN )
  );
  X_BUF   \NlwBufferBlock_x_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_x_4/CLK )
  );
  X_BUF   \NlwBufferBlock_x_4/IN  (
    .I(X_in_4_IBUF_5686),
    .O(\NlwBufferSignal_x_4/IN )
  );
  X_BUF   \NlwBufferBlock_x_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_x_3/CLK )
  );
  X_BUF   \NlwBufferBlock_x_3/IN  (
    .I(X_in_3_IBUF_5684),
    .O(\NlwBufferSignal_x_3/IN )
  );
  X_BUF   \NlwBufferBlock_x_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_x_2/CLK )
  );
  X_BUF   \NlwBufferBlock_x_2/IN  (
    .I(X_in_2_IBUF_5682),
    .O(\NlwBufferSignal_x_2/IN )
  );
  X_BUF   \NlwBufferBlock_x_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_x_1/CLK )
  );
  X_BUF   \NlwBufferBlock_x_1/IN  (
    .I(X_in_1_IBUF_5680),
    .O(\NlwBufferSignal_x_1/IN )
  );
  X_BUF   \NlwBufferBlock_x_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_x_0/CLK )
  );
  X_BUF   \NlwBufferBlock_x_0/IN  (
    .I(X_in_0_IBUF_5678),
    .O(\NlwBufferSignal_x_0/IN )
  );
  X_BUF   \NlwBufferBlock_x_n_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_x_n_3/CLK )
  );
  X_BUF   \NlwBufferBlock_x_n_3/IN  (
    .I(x[3]),
    .O(\NlwBufferSignal_x_n_3/IN )
  );
  X_BUF   \NlwBufferBlock_x_n_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_x_n_2/CLK )
  );
  X_BUF   \NlwBufferBlock_x_n_2/IN  (
    .I(x[2]),
    .O(\NlwBufferSignal_x_n_2/IN )
  );
  X_BUF   \NlwBufferBlock_x_n_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_x_n_1/CLK )
  );
  X_BUF   \NlwBufferBlock_x_n_1/IN  (
    .I(x[1]),
    .O(\NlwBufferSignal_x_n_1/IN )
  );
  X_BUF   \NlwBufferBlock_x_n_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_x_n_0/CLK )
  );
  X_BUF   \NlwBufferBlock_x_n_0/IN  (
    .I(x[0]),
    .O(\NlwBufferSignal_x_n_0/IN )
  );
  X_BUF   \NlwBufferBlock_x_n_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_x_n_4/CLK )
  );
  X_BUF   \NlwBufferBlock_x_n_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_x_n_5/CLK )
  );
  X_BUF   \NlwBufferBlock_ADDERTREE_INTERNAL_Madd1_cy<5>/DI<0>  (
    .I(x_n[2]),
    .O(\NlwBufferSignal_ADDERTREE_INTERNAL_Madd1_cy<5>/DI<0> )
  );
  X_BUF   \NlwBufferBlock_ADDERTREE_INTERNAL_Madd1_cy<5>/DI<1>  (
    .I(x_n[3]),
    .O(\NlwBufferSignal_ADDERTREE_INTERNAL_Madd1_cy<5>/DI<1> )
  );
  X_BUF   \NlwBufferBlock_ADDERTREE_INTERNAL_Madd1_cy<5>/DI<2>  (
    .I(x_n[4]),
    .O(\NlwBufferSignal_ADDERTREE_INTERNAL_Madd1_cy<5>/DI<2> )
  );
  X_BUF   \NlwBufferBlock_ADDERTREE_INTERNAL_Madd1_cy<5>/DI<3>  (
    .I(x_n[5]),
    .O(\NlwBufferSignal_ADDERTREE_INTERNAL_Madd1_cy<5>/DI<3> )
  );
  X_BUF   \NlwBufferBlock_x_n_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_x_n_6/CLK )
  );
  X_BUF   \NlwBufferBlock_x_n_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_x_n_7/CLK )
  );
  X_BUF   \NlwBufferBlock_x_n_8/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_x_n_8/CLK )
  );
  X_BUF   \NlwBufferBlock_x_n_9/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_x_n_9/CLK )
  );
  X_BUF   \NlwBufferBlock_ADDERTREE_INTERNAL_Madd1_cy<9>/DI<0>  (
    .I(x_n[6]),
    .O(\NlwBufferSignal_ADDERTREE_INTERNAL_Madd1_cy<9>/DI<0> )
  );
  X_BUF   \NlwBufferBlock_ADDERTREE_INTERNAL_Madd1_cy<9>/DI<1>  (
    .I(x_n[7]),
    .O(\NlwBufferSignal_ADDERTREE_INTERNAL_Madd1_cy<9>/DI<1> )
  );
  X_BUF   \NlwBufferBlock_ADDERTREE_INTERNAL_Madd1_cy<9>/DI<2>  (
    .I(x_n[8]),
    .O(\NlwBufferSignal_ADDERTREE_INTERNAL_Madd1_cy<9>/DI<2> )
  );
  X_BUF   \NlwBufferBlock_ADDERTREE_INTERNAL_Madd1_cy<9>/DI<3>  (
    .I(x_n[9]),
    .O(\NlwBufferSignal_ADDERTREE_INTERNAL_Madd1_cy<9>/DI<3> )
  );
  X_BUF   \NlwBufferBlock_x_n_10/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_x_n_10/CLK )
  );
  X_BUF   \NlwBufferBlock_x_n_11/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_x_n_11/CLK )
  );
  X_ZERO   NlwBlock_fir_GND (
    .O(GND)
  );
  X_ONE   NlwBlock_fir_VCC (
    .O(VCC)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

