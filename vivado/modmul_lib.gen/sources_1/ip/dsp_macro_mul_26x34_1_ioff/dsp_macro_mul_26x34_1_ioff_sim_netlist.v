// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Aug  7 14:08:45 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/karatsuba_dsp/karatsuba_dsp.gen/sources_1/ip/dsp_macro_mul_26x34_1_ioff/dsp_macro_mul_26x34_1_ioff_sim_netlist.v
// Design      : dsp_macro_mul_26x34_1_ioff
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_mul_26x34_1_ioff,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_mul_26x34_1_ioff
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
  (* C_REG_CONFIG = "00000000000000000011000001000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_mul_26x34_1_ioff_dsp_macro_v1_0_3 U0
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
oo+HYFFu4Se2rPIcYUweANGj+/MlNaKtBcwX5kOdWQlfu9l2wwQDS4awE7ZHhA8c6PEDxZma6fvg
7bUttmvoWZ1yC/KG24XA7edmFlu6ZbYzXGVeicspxCPJof1c8M8sKD/8gvArYtKphVIMRi/2Ih3I
cC0zWqBOlgWqVJBYQ0O4YOAg+yeGqQFnzmTzp4b0ocQ2bEDHC0EV60Vv+QBmqBlRr/c3zPW+QGRQ
fzzKRDvtzWsbcSgN4gjpdfae5gBOkylBjaBx/OOsRXb5LLxYVNVPZJZAyJA1c8UAzOi3pCYNmxnu
Pjb4oxGInIvH9KHqiwdJgp1f9WqTnlnslSz6mA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IEqGRR13RkX8g1iColvaSBl0nloZRXSOG7HckifJBN2Uad6+spb8xmmLRyF6PYyiMlwccn27xA+y
4BZ30SkmWmkUQsOwTGvcO7/6LgvIq7WJiS3l3ZZQw8D4pgz22w7iUuvs7XqgiKpiG2/BoNoCExw8
9SpH7T7WTV2A+1Rj87W85hk1//SmpDJ/loKlYJv65BBt3dEiXJguTUi5pRPYe+lMScWNrfLUM6vC
hWd6YThxd1xm4vm4mSRCMBcQSkZsqdovPRlBhS9ZtzLqAoXWH+86hNbWsNaYxXWU5Qz6dX5slB6g
KGeXAJ8Aw+KtGWvkJVrY1zWeHOiRWgCGJL2ZAQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26352)
`pragma protect data_block
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
oE6l/8zCqzKzYaTZn7863U1f
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
