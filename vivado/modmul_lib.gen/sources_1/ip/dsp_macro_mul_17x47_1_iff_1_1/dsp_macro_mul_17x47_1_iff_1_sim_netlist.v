// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Sat Aug 17 19:32:51 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim -rename_top dsp_macro_mul_17x47_1_iff_1 -prefix
//               dsp_macro_mul_17x47_1_iff_1_ dsp_macro_mul_17x47_1_iff_1_sim_netlist.v
// Design      : dsp_macro_mul_17x47_1_iff_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_mul_17x47_1_iff_1,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_mul_17x47_1_iff_1
   (CLK,
    A,
    B,
    C,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [23:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [23:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [42:0]P;

  wire [23:0]A;
  wire [17:0]B;
  wire [23:0]C;
  wire CLK;
  wire [42:0]P;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "24" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "24" *) 
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
  (* C_HAS_PCIN = "0" *) 
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
  (* C_OPMODES = "000100111000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "42" *) 
  (* C_REG_CONFIG = "00000000000010000011000001000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_mul_17x47_1_iff_1_dsp_macro_v1_0_3 U0
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
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
RFCuBdcBzPZ2VIGKOeBjP9HLEnDiqAXKPyo+rXoikebUrPh0q4MPxkDLFSajlC1k1Jb/MHLxRI7J
ogHsHxjg1eG1OpPpU8iicrhggO/DBAsQVPQLc1/gn3hAh+pXRD1o5PILxv7XXmQrgnI56arz5lke
LO17bdpdE2oKOmCBh0WmDAAf/jqhZUgVu3P6lKXybbYhjYnMj8nRIpXy1OFzT5XKCmLupUq8L2Cc
bxMtiVRlc/bgWzN1sVMENnBdqbxdABwlagEeo6b0J9BGmYYAg1u4b+iisfK7Q9KYM7MfuhYBqigd
FWo5pWC4SnHKoYjCVs0xnNbEinx+c7eQ8sZRQA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mH6uO+Bb6NgBOPet9op/z8zIZkXu2z131fHv9GeFL9n1hj+fc8wxkZ8CldTOwgdD3Uei1Q/jpAyV
GkvLtNCZj08deSgSz7jXmlFnK8WbR10zUXOREaQCZRHwaLlcTpk75aIa3juKNsIkhiVXFh9ZyC9H
WOI2cGLFU8RsaA8ZFSnXBPBPmdD1yvB1G9Ka7Bb81KvklBh59VzW8TkkGLC/MjVvs+rkSjI02qbu
kfgSGzIkVfL+fceb4bg7hATtr+JPg8Huyhocm8+XjTul/vXbPjDheKlnMnJK1+tvHYVcOCi5Pi/y
SxJi7R3NxLfNaiTBtmHWHnmAppoZwCAqrWZdfQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26656)
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
