// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Sep  4 17:18:28 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/modmul_git/vivado/modmul_lib.gen/sources_1/ip/dsp_macro_mul_26x34_1_iff/dsp_macro_mul_26x34_1_iff_sim_netlist.v
// Design      : dsp_macro_mul_26x34_1_iff
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_mul_26x34_1_iff,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_mul_26x34_1_iff
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
  (* C_REG_CONFIG = "00000000000000000011000001000000" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_mul_26x34_1_iff_dsp_macro_v1_0_3 U0
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
Bufu0hLZX18uhCfspVoR51SgCpvXtUHxS+Ka9FhJj2E0i/nMgZ/uUJPOAg/PVpscnss7mnrwrB9U
l75YfZFC58Ol4Tai7hdjOV26vG9btzzj9SSYfVdei+1z78cdyZlHAfkvS5LQWDPABOmxBbKQaeYC
EMs1mBuFYcsXyzCgAJoGxJ5D+A0R5lTVsRlUd29nGbYYIpK1t/7pn/CFUGb1dKaDU8/RXd4wDeDC
TItMt9dqPm+ImnrJtZZ8DWQRDVz3GbFOyt2Zd+acq9NzP+/BAtvKEEsEK/z6WHd6U17r5KckEdXY
0n0j2zKnxFnJ79w0bLZWvHtDrwPdBsQ7WC/+Tw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
0eME1K+HyPslmSPzZPpkDWP1oN6ItE0gPY3zg06JGITvj2h/yd/nZ1jI8+LAJOdOAlqTEudZptZB
6zFn0sGX4tX4nhe2Yylup/4oQ+Ok5Vub4/EOvWfqDC6zzCtSYx/HxlYe19OrHQyD4a9HmghB8jyE
GF2DNSSiqK1IHl/KH7oiDvCD0oSoT7CBMIpzCIs4DVvk/CxwIfB0R+wVQA/1s0nHzangdPlI896Q
Uo/zvDGTtr40Rk/lj4PJ527WT+Bv48lW5JUW1kAlJvBMCLuXgC7bYmBuEWSbtUUV+0QAZGegzzGi
IYTOsh2bV5T+RqVikVOahLdb0i5lnK7xWAlIaA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26336)
`pragma protect data_block
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
jGE=
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
