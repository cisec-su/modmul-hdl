// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Aug  7 12:23:09 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode synth_stub -rename_top dsp_macro_karatsuba_34x43_2 -prefix
//               dsp_macro_karatsuba_34x43_2_ dsp_macro_karatsuba_34x43_2_stub.v
// Design      : dsp_macro_karatsuba_34x43_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *)
module dsp_macro_karatsuba_34x43_2(CLK, A, B, P)
/* synthesis syn_black_box black_box_pad_pin="A[17:0],B[17:0],P[35:0]" */
/* synthesis syn_force_seq_prim="CLK" */;
  input CLK /* synthesis syn_isclock = 1 */;
  input [17:0]A;
  input [17:0]B;
  output [35:0]P;
endmodule
