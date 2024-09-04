// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Sep  4 17:18:28 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/modmul_git/vivado/modmul_lib.gen/sources_1/ip/dsp_macro_karatsuba_34x43_0_s0s1ff/dsp_macro_karatsuba_34x43_0_s0s1ff_sim_netlist.v
// Design      : dsp_macro_karatsuba_34x43_0_s0s1ff
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_karatsuba_34x43_0_s0s1ff,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_karatsuba_34x43_0_s0s1ff
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
  (* C_REG_CONFIG = "00000000000000000011000001000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_karatsuba_34x43_0_s0s1ff_dsp_macro_v1_0_3 U0
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
DQaOJre7NmY2KuB00wyl3BEMuj/UwPzMhilwXfPeia7dotLsRbVMiMU/GP4xM/HnkbBiTYPSEoZr
0tk10ERxjowVnYHa6mdhHfiKXrDNxMsFumZbUfu9bqkaq4d02/SeyA35S9MAFaxlUbTep/af9eKL
e+fuRTsZw016s19JEpCkfey3ZoheYapOEvyDcEFvqX2zvtCZDCXj5atgihaXpfBJ2nDEVlFP0qT/
GMkUUwBKBN96mFpjwky8Nkek27BRTMpx9zH4+ikfcG7b3O8KJoCR6WPR4hctvVYm3+oW8nQji9iT
vH3wsnn00AUW+gRhgemPd6ZrBIRA2TWwpE8q6A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qVkC8XbxQRhz6WQHAXe2Lub3Yx1RUYf6eTu5PeTHzmFPv6wDmrB/djm2I4/jER7h7XPpvK2o8A/r
yIvKEr57rUYEVdpYYKR/j7ilY8v5VDm3Riz2s0UWcm5sh0YDNnGIQyy2rsUXnYo0XGc4qxfHp7R6
lvLQwMdAYkL6AJlCBopuC/PGd09DR9XerVitWpo9ioCvYjsDg3by7f+u/ikpsmZ3uMRNZi/X5wDf
n09VK2uH5YLMi0E8VCLgccdJdMUYqIWbG6D8vJPjyYHnupChO32vGC+9JAbIH6Aj3HGSHBiDjrun
9u2SxQw3kJF2CB8WtLjpZvpILM+o0veaPAGz3Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26160)
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
