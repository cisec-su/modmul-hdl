// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Aug  7 00:47:31 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim -rename_top dsp_macro_mul_26x34_1 -prefix
//               dsp_macro_mul_26x34_1_ dsp_macro_3_sim_netlist.v
// Design      : dsp_macro_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_3,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_mul_26x34_1
   (CLK,
    PCIN,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcin_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME pcin_intf, LAYERED_METADATA undef" *) input [47:0]PCIN;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [26:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [47:0]P;

  wire [26:0]A;
  wire [17:0]B;
  wire CLK;
  wire [47:0]P;
  wire [47:0]PCIN;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "27" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "18" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "0" *) 
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
  (* C_OPMODES = "000000000101010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000000000000000000000001000000" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_mul_26x34_1_dsp_macro_v1_0_3 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
Gt+uQr6bMCgmD3KBgSORPqENySoSHDInXroDWWzs9a+ERECYz2idGb81sAsbS/TjRkEHA+54/fDE
z4Iz1MaciamtiSoMEjl4wVRodieTdw3wSjIq1//twOChGC8E9wuSzWg+bm2RuLVmN3Z6wCqHPyoV
GrUdTKaWHjBU03+9sYFl1+wualHmAeJje5PF68D+ONrt1dVnuhY5W8Kel4W01xiT10NEm9GgtiBF
08/WtLZOUzZt7MLg+TKNx72qmZzmH/J4668txyqAfuX1xR9/MQF+vDeFaxXDfU/+iTrS6lMI92n8
JRQ23zxmbe/SwlEoYLtx7t2oZqJa8pvBGEwNGg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XLLHuqhh22zhkY6xhJpThZQ11wH3w6KgI+SwprFvKIQYh9JpUCmgUo//LIwoMG7Z3/miqCbBfNDw
pmBGCW+OCtRl95cPcGfyOjNbPDSqCaDaOeLNsuOFGKtJQFDoQr+pbPyePHusReC9q3gobyGqhtX1
BoLIMoMATi/rbsNiG0XwaLxMZaLmaiy7X8BJsQPcHZMK/RWC36bC1aXjRTF7Ilv0ZETm496VGNZP
kCbOFOnL5EDaaePX6XIFE17udsdg9AKMAFVQg3WRcFGir6QcwzGagH4z5Nt3pbYM1NYtxLWsP7UQ
KQ0o6/bh5PjaNto6CWK85G3oOqDQOtGLP6fstw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26192)
`pragma protect data_block
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
fBC46+ccHjMSNrjFTqrNBCbRhv6wIffn32MxK88=
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
