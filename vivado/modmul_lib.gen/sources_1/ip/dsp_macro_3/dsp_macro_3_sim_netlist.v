// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Aug  7 00:47:31 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim -rename_top dsp_macro_3 -prefix
//               dsp_macro_3_ dsp_macro_3_sim_netlist.v
// Design      : dsp_macro_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_3,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_3
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
  dsp_macro_3_dsp_macro_v1_0_3 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26128)
`pragma protect data_block
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
FnhuHPxsGbZIDt5i0fX3wl/EGCb2dg==
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
