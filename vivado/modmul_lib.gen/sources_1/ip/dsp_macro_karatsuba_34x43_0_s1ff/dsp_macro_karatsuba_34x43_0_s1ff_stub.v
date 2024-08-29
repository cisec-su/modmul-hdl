// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Aug  7 12:33:20 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode synth_stub -rename_top dsp_macro_karatsuba_34x43_0_s1ff -prefix
//               dsp_macro_karatsuba_34x43_0_s1ff_ dsp_macro_karatsuba_34x43_0_stub.v
// Design      : dsp_macro_karatsuba_34x43_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *)
module dsp_macro_karatsuba_34x43_0_s1ff(CLK, PCIN, A, B, C, D, P)
/* synthesis syn_black_box black_box_pad_pin="PCIN[47:0],A[26:0],B[17:0],C[43:0],D[26:0],P[47:0]" */
/* synthesis syn_force_seq_prim="CLK" */;
  input CLK /* synthesis syn_isclock = 1 */;
  input [47:0]PCIN;
  input [26:0]A;
  input [17:0]B;
  input [43:0]C;
  input [26:0]D;
  output [47:0]P;
endmodule
