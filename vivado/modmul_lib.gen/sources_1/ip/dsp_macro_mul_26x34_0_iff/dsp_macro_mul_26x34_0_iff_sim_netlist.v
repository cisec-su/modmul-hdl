// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Sep  4 17:17:11 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/modmul_git/vivado/modmul_lib.gen/sources_1/ip/dsp_macro_mul_26x34_0_iff/dsp_macro_mul_26x34_0_iff_sim_netlist.v
// Design      : dsp_macro_mul_26x34_0_iff
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_mul_26x34_0_iff,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_mul_26x34_0_iff
   (CLK,
    A,
    B,
    PCOUT,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [26:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcout_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME pcout_intf, LAYERED_METADATA undef" *) output [47:0]PCOUT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [44:0]P;

  wire [26:0]A;
  wire [17:0]B;
  wire CLK;
  wire [44:0]P;
  wire [47:0]PCOUT;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;

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
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "1" *) 
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
  (* C_OPMODES = "000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "44" *) 
  (* C_REG_CONFIG = "00000000000000000011000000000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_mul_26x34_0_iff_dsp_macro_v1_0_3 U0
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
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(PCOUT),
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
IVB/jx2fXG6jJnFIEZFNwf6VU9rN8hsNSpD3dYzngqRfbYGRVDKCsf/JhFKB3/xs9W1DfUi2CvKe
wKAbKan/qDTZ8kwFgjqN2aTOwOqjVWeQcvz6qRjCgJ7fj1efoksf9U7jn4OR1AkbXnXi0zDKxEwu
rRs3GsE26tvsC+6TXqxQZ05icV6wEuITrR8s9+UBXH8W4ezfXO5hDMPQIQWn68L6+OOks8q1mqJP
zYSdhsBl9buhxqGWfH6Wz3VKja4t3IwSKqxWwiAO+86LUtnFx1qWJbSMl5tA5AZviHXPxVpOBGq6
P+ocTDlgvDVV0wZf4nW/H6s4ZM+9bgaDJjBX5A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iORyp9gvepsRIZ4xTVz8hIqlCzOkzEj0l5O/DSPZ72V4LP+DjEZKhSka5IAr8G00/i+bGu2yUZlU
qzpByEvSumtrdHZOz40we7A49dQpqLn8Bk4g7wExJfyBo4DLLytsDwyXqIJApoqJJTMYqcF/XvHK
7MFnQvpz9sFRiAFiSI+Rs1IbkDWyNUBdA72Mw0YsjxN4+CdG8zNdZSHtfLjSSK+FCkppRUHqwLY8
2uQ2KoDuRVDIPRT34+5mNt1VhyZ2Ur3+7a9ZjAp7snKvMJIvh9UmE2NMBb+W9EzuD3yqdj4+XkiK
DY7zyNftdCW0qCk3Q4v+Dnk6yGUaW2o0Y+reHg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21632)
`pragma protect data_block
+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
f+zTiR5KMoNxoORTBNg9cbfWU3A9QnpNsUpYU90=
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
