// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Sep  4 17:19:25 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/modmul_git/vivado/modmul_lib.gen/sources_1/ip/dsp_macro_monty_26_v3_1_ioff/dsp_macro_monty_26_v3_1_ioff_sim_netlist.v
// Design      : dsp_macro_monty_26_v3_1_ioff
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_monty_26_v3_1_ioff,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_monty_26_v3_1_ioff
   (CLK,
    PCIN,
    A,
    B,
    C,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcin_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME pcin_intf, LAYERED_METADATA undef" *) input [47:0]PCIN;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [26:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [9:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [44:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [47:0]P;

  wire [26:0]A;
  wire [9:0]B;
  wire [44:0]C;
  wire CLK;
  wire [47:0]P;
  wire [47:0]PCIN;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "27" *) 
  (* C_B_WIDTH = "10" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "45" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "1" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "1" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "128" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000000011101010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000001000011000011100011000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_monty_26_v3_1_ioff_dsp_macro_v1_0_3 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C(C),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_U0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYOUT(NLW_U0_CARRYOUT_UNCONNECTED),
        .CE(1'b1),
        .CEA(1'b1),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEA3(1'b1),
        .CEA4(1'b1),
        .CEB(1'b1),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEB3(1'b1),
        .CEB4(1'b1),
        .CEC(1'b1),
        .CEC1(1'b1),
        .CEC2(1'b1),
        .CEC3(1'b1),
        .CEC4(1'b1),
        .CEC5(1'b1),
        .CECONCAT(1'b1),
        .CECONCAT3(1'b1),
        .CECONCAT4(1'b1),
        .CECONCAT5(1'b1),
        .CED(1'b1),
        .CED1(1'b1),
        .CED2(1'b1),
        .CED3(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CESEL(1'b1),
        .CESEL1(1'b1),
        .CESEL2(1'b1),
        .CESEL3(1'b1),
        .CESEL4(1'b1),
        .CESEL5(1'b1),
        .CLK(CLK),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P(P),
        .PCIN(PCIN),
        .PCOUT(NLW_U0_PCOUT_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
eXu8CP/59WSryM+0TrJm4ivvR8jHZUvAhTM/3bTefAJXrKDHPLzKye7Mt1lRDbXJAjZ6BIKO4kwC
E0lcvSrV/Q3dyfvAxtUp+z/aW8VJRK9qFHdYmlvgE+RPpMa3xR2aZy6U8Oi3M/l6Zx+25t9AX8je
jkkih0AxnCIBN1VIUqs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vgEvPTqFnqLdQAsx6AXakuctSKMkEG2yHSn4TsDpQk1BrjbzuBtnELewLyu5ZXRBjC8xFsQPW3cH
Ijezov8BDFEzYCheSybl50hwqRI4T0U4N2aoukd55sy9/NN/+A/8Xjl2+g59+0dy6ah8l8JC/qit
l31TRSDYlJTLd1mQWx3tzFmN+bObNeP3maLIbD4XAjkgQ7yM5fP17d00xtU7feiIsq+x7OCl8dNg
Lb6/MRQ7tcASiCzijiw1uXAToCUdMxgwgJod3u1zhviPycgXmq35FZKuwpZjHbl0RDdbj+VG8Bpj
4BU8mxfWb+gvLPK6UlY/G7koaN6b8jABhJx6dA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
AaFM62USO7nm3XNUl+p18THQcjom9piiWV6niKyzDrgB89YGfBopTWrrBST1q+vznrsm1xYeBw0/
aUlMx3aaTJAO5tmM1PHkJSpudvwlb+QPsKCQ1U+sK88kH8wB1yOXWndOr9j1qQOaW7Dl8gr3SftQ
YtUGanmwYxL2tWG2WK8=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
C0y/vEvU9lV6QG7X1OT8SLSXZuemaWEBdXhrUF9kdwmgdFOawTMiM1GmMDMBgOcJHmcZZR/vHgjX
aW6LgUFWwSJBwd8FgrX2GbEx7xC61Ri0fwxzDG1Tns+5KdLl1XOtx/PL/I9GeE1CXetRMzM+s3HS
VC1otl8i826A3YXs41mtZyFqeu6JcfSKsoWmWhVOohan5pR/xouMVA20kBiN3Kl342JzkDM9tofJ
2U1WQM7I0GeX38EB7rx7N9fUUTsAxbMNkY9cSn5jJdADowfYwHWzjyG57462H4HjgFh3vbI4LtAe
iviGzIl6rjHhqn+uDqLNuNsC+sXc5SpfXzaatg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uBCuIthdOfPzzjz/96GbH63rV6HYJnDrLoe2d7Fu1o3WmbYzd75N6ms8Slm+1ppOkleA/O0EIH9E
QWOljNznnEOpJKNmhXFdvz2kcOCdLA/poOcJXyHw9X9dQS+ds2WUpieCP+bbnrQb3dLDH0qoSWMT
eqT/l+07htuRx2NqmQCnQME7OixqYKIuoYm9qnSnyhn6Cx7fTEYRu+oJvkU+/GVZNd73WLsoCf2y
wX3gEXrilulAXUTqCh319fuOfO1JbckH8V1VQwoiTFvFbtgEDQ29w8Vsrlzbo6S4AtwKCMAZHhfD
jQa/oimM1Xz5RgmjOOAj+3upyFgp1v2sx/6dnw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tt7uUpU++Y1HyXw3H9uOZfR0faSHPJDBUNXzHd0A0mMBQSxHBUQO87ix4I9WYmXI78wSRjF0IGHr
xFa3M9/7SVLvNUBeb0SU1jS231rDwgD2G2uwW8g5/9kqE6FLAHLzrl9r3XHmWFv4+FyylrGJ62as
DP0dCDKjxnw5u1IB5Jms6xkS8WgqGubTQ4tnTj8HIqDjyxiBiVHHjftyFeDq/sV4G+yf3GTex00U
eB5JtuT/qI142GJyVmMhLVH0H7FZQDexSTBHYOyRfNRU/4rja0DQ1G1J1hifhyeiB0KxnWMlTibd
LdoZIikRhz8x8iEr4vjsMkdkpAnpQ3PAMy64QA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AB07luaM6UqGzgUh8UuGEePdazMDdWluSYXVevTEENMZocIMfT6+7peiLi2lFLpT1PZHY0SV1bEB
3MGbnC8HTccfBEybpEbQcthgHlVowXAYniz/2Txe8qyOgo32iW3oqkNBI8+3F9ZSPlDg+JFVzIVA
qX6p9OE5OdkLviZr3HhrGHnr09iaLa0pojKY4jFq+7VRqBz023vKkoYVs0PjJfI6INZ1/WQImSWb
jFYp9N/v0u9E/ihSNdJ7cHFaC7K6PApgCrr3WdKb4sDwuHAEo2YBL+RafV+/bjhXcb36+8fi+Ihp
bOs+vnNa/kMivBt4zh4pkIiWe+NoICqV2/ie5g==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
VBFfqhMRFT4vkmBP645Vb+B3Zb1lr1J3v1UU437hv44KR/OBhVQry6ZFwQmnE4IL8RDeLg0D2tkZ
+Gq6ejrRmUJtMhB7DcRs1bi5keF43hsgq5wg0KTBhh3yUyQJp2rwUcd3hZ940AXSavn+1xjGlJLz
UeHKKlF6m3CSmvReobaVea9RaUO0WwDXmnf/lbeCObhOgaYEBceQjk/5E4hT/c0y8RPW7tDdF2yo
u8/2q5ioXWJ1FseteaZwdHICpZUYihFMiyZHYshN2G9zQtp4k87huvEBbFWggT9c6s3Lee8qIdsH
BXt0uVwINMMM1li7PiKl8l1URiX178BSIcGzdM0ZwSyAyO6i/qWiFsr7cCD1jcwDxUH+rVizdYBx
wfhtDxWf01qjpq13uUUqxxB+xMf58l+wpjFCLmKMgpNYs0S33SG6R8fvJ3IPvJHhVRc/hPupWbcK
hezSkYXnupL+GdSPxPoQZJW7/k8leEwuDKBO/VCfQpPXQR+FxLDNFBDe

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ao2uzJ9cDoOFb4Q+cT2/6EJRN9VWvURi+To0IoDU4YLe3Dr0WyVOAUCUIhb3Y8swY+CKwa+eJzzm
AriAJZAp9p8NujF4gOv+y4wy+eanf3pnOWbMWxsr6TT2S39coNdQ+NAO4aBUP3ZbESI4AbXpCTKA
+KV2gtFESo654X+tD0UNAabhx5OJpkBawo8534pIFBCYn70xDogKM4jXqTVCDr0CleLmgeIOYdIO
5T48N/bB3mluyuxS/Ea1/kS2r1g49hjIWlYnMkQ27NaUI1xAJTAjkrvMTHEKoSIskGvfO6jSWVlF
19HXSOkKJMQeQ0I6TBJ0H1KwHX8XwIuipvGDhg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oavIxI/VTCr2RRQgIe3ak7sLiuKT9bHJMjX63bfDxB4N9nS8vOlDhYZ7Q/F2dECOu7Zyk7gPjehM
i9iPd3E0zUkNLblO93xI+yJqEZiqaKDgJAoFXfsFTVjHkVm7DehgbP7LNEJIm25XIhrlx7E/e98u
4L6SRXSoZLpzz4iEXP4GZ1WGF/PEs92xWiKt6zu23W9cR23IpedKJo9ifpt1O3hCa7c/n3C/d5QM
6jsWTNhSHSfPvf/yptkjBCxX/L+C15XdKheS8xWjcyX8nrDuEtl7XyGmjsmzOdUY4p9wALnaWK64
0M+KrlCj7vSppn/7X76RGeah10pGrlJT7Sj9hg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zG5gIcIRbUgJcTUgLFmt0VKq2e1dmqL3bey5xl1IJdGhGz8nYCaxoYkLMz04Zz6bB6KIzlEAYng/
tqdmEEsrYtSaVzviyk1EQCDvmvTNd1Lc9KVe5DxU+j6JzRXwhdpt+TEiANRnlKLSB0ntMz+1J8b2
wYOGWs0yJ6Pn1ndCF+bQXtDF2CQolyZAgIlUa6gjfHHMq0CcgOlVM0P+7pI4IW91ChcGmch94tjO
nkJYPgxKpFiZFDQAg7sNcDfw6+1emG4yO95OvdcMf2GsiWGkXu7tKcMLAltQ7pHoj17M+YdRBSP/
HZS/NixaEBwJIfGnvgCpvSQSWV9qGhlsRdhG2A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 38720)
`pragma protect data_block
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
O5lSyOocIzd/H59VojD27mo=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
