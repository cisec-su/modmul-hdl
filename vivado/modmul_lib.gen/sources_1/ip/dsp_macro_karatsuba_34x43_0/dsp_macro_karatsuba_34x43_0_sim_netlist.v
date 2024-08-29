// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Aug  7 01:05:48 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim -rename_top dsp_macro_karatsuba_34x43_0 -prefix
//               dsp_macro_karatsuba_34x43_0_ dsp_macro_0_sim_netlist.v
// Design      : dsp_macro_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_0,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_karatsuba_34x43_0
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
  (* C_REG_CONFIG = "00000000000000000000000001000000" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_karatsuba_34x43_0_dsp_macro_v1_0_3 U0
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
Uz3zXn593Zb/NKvHOOiElixfQ1JykORh3QW5b/f0RuiDnJ+Fu6Si24COOXZdByeM9LGzxT9rvoLf
1kQWKX9iC5PRq0i1i7TtbMU+AI5aNdpM6jd0CcJO3hN+9+6sK8ctm3FyeAkmycc3AY2aVfejcCUY
z8gogrgpMXZzjKC92FC5MJkhEtiFoZ0KZdg/7hwQ0pK7J+1svBTmTva7Oca01vhUgl0RXRrgK242
EiujOyF7ivHgbIjTbRZ7x/Fm7eWDJfheuKAwqacWU5VYvCaP9ZFSnyPc8oJ7s0QKhvkYrMCJC3du
UmaVXjwAKwrUTJXXgTqISRD/s3U5rslFQ+FtRQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
37wqDLp1J68jisg/YVW7l0ANuT4QaIgXg6jrdVtD/lnHSY9pqAivtRPbdDYSDyP8pou8okcmRL7L
XFGp7+8mNV8PcvEJJjYEoYlD9TsIeupCpmc6if4BxDcdvkDAooj0R+Gr70qFTRDwVTczmkm6Oir6
WpEVeYHl3+F7uybpLYkf/hdUypMEn/fAvZGBzUNrYFXKo66yUXeGYcaTbecaDoAc1RxjlJ2G1kiX
3o4cAq4KCT+OuB12gnSS4hswbO0ETKcGCcojL+KibXZO5R/xXnsd+GCx2BUMWo9QYELX01xEPt45
rD1jwjNLVGyeQgFlHzGd3HrLVZyauA02ThXoGA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26000)
`pragma protect data_block
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
ciG8hOlnoFw=
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
