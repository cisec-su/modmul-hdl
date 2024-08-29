// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Aug  7 00:59:34 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim -rename_top dsp_macro_mul_26x34_0 -prefix
//               dsp_macro_mul_26x34_0_ dsp_macro_2_sim_netlist.v
// Design      : dsp_macro_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_2,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_mul_26x34_0
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
  (* C_REG_CONFIG = "00000000000000000000000000000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_mul_26x34_0_dsp_macro_v1_0_3 U0
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
dujadje+odFDx8f0pAn+4JCZjfWgDhtIvQWGLpTZJ5qLnZMehgaDk8wxqdnTlodgcnkmlKEhieE8
JLmUK7pn5R9O/bNhDki8BlS0gakTWTHyg09KJUtdCNCYmYNhy/PA99hVc8yL0A1FDBDl4UG3QFtR
yZ3z2HjbOicg+OJsRm1F+rutf2qysfXmtvgI4Ien/n0wisvdTttJSWjOB9VV/kKFZ7dWQmyh6qgt
6ewyEZa3mLVmn02rPiM4g6tYbHdNrerKqVP9kIjQyv3xGt7rVqB6YFBGSyn6II1iMjZ0qyPucRMQ
GCMP9D95S/V5GipxbiSJ/pKdv70y/G7JFHYWog==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Od5JyoXKYwzpFTnz0O13B78RgyffhJ4B0kmWvcJj/Hh0h5m9hdB6oFnRBufnxAVTdzu/odokAOUg
QTiuj1VCikBev9oyqsi5+69eqL9PIj660qKStkDfHnJo1AA6NqWLImijPHCSFEFijtbFdA7gmTqE
yNkOFvA/ONCWOfFnBhTWKU5fwOZ7j4VmhfCAWIuzU2pYDzptiOXYTU8DtxxEtafOK45RHdSjupWO
2Fxfh9yYIeN3LTjlaKYjef+e4+oO58EFIrNb5akKT8bcxpeFlA74v5j6p+AkBQ2tolUxCGk6ARWr
l+JAH1TjOaxpbewIzXxpVZRLN4W3A3yI5AXYpg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21488)
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
