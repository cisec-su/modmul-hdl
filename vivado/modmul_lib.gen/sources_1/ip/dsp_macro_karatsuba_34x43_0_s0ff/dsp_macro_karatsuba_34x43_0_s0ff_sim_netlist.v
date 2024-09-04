// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Sep  4 17:17:12 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/modmul_git/vivado/modmul_lib.gen/sources_1/ip/dsp_macro_karatsuba_34x43_0_s0ff/dsp_macro_karatsuba_34x43_0_s0ff_sim_netlist.v
// Design      : dsp_macro_karatsuba_34x43_0_s0ff
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_karatsuba_34x43_0_s0ff,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_karatsuba_34x43_0_s0ff
   (CLK,
    PCIN,
    A,
    B,
    C,
    D,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcin_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME pcin_intf, LAYERED_METADATA undef" *) input [47:0]PCIN;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [26:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [43:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [26:0]D;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [47:0]P;

  wire [26:0]A;
  wire [17:0]B;
  wire [43:0]C;
  wire CLK;
  wire [26:0]D;
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
  (* C_C_WIDTH = "44" *) 
  (* C_D_WIDTH = "27" *) 
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
  (* C_HAS_D = "1" *) 
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
  (* C_OPMODES = "000000011001010100011000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000000000000000011000001000000" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_karatsuba_34x43_0_s0ff_dsp_macro_v1_0_3 U0
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
        .D(D),
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
YtAL39Hw4srsYdqOdUbnPQ36gf2VCyqU5n4nNnW1EnBXtSb1cdlaHG7kBvSv/5EvrDXymKKZF0l5
sUbAWs6k235LLDO3Jo55x953hrvX+XPpTp1NC2QsBcIsdVKVvHBccGu+pqG8JNDaOxJ/eQq+w1th
6r80YDAs8HSUS/8/pgInJcNjKe1OvLuMv1rssGs8NW0nIgO8HpyFerfW2jGLzLEbbjjP3iTOJAdx
jhnz0HuGvHzc/HbWil+gNsCYAUw06FddR0dtxtt2497x7Kiwx7AQie1peiJyriaJ/QUocl5gaNfw
NQ9qLZztJ6iummJUqBsbIEO91c7+WWyF/CGxNg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
D82ht7XB0IHBsYXawDKRt02yPm0Hd143Natof65Lu/+/Bj6gAqjEURTpj4GB6wq7r/J48LtbPOYy
4waz3ZZC16X0lpIEVqLT9dq+uzbR8/xCpLr8F4MY5LDZTGJsFYXEFaTchasdg06B/XPZJlNiLBXE
rNDNobvK0yHulQ/JXOj1NRG9jRM3GOHYPSS4NguMztBxwy38N4kgIMT12eaBzEPCBbVa2IIHkar6
Wdyq+BN1u+xntw9YaOIWrIVkLRMTYOIR2Hb7GGm61bbCnkZgonGXuw5TtiWB9QFLDXgNU/igzd0g
U3uRerMzrNK6loxl/Of3RpbqwNZZc5KZR3f9lw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26144)
`pragma protect data_block
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
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
