// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Thu Aug 29 18:45:59 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim -rename_top word_red_r26_0 -prefix
//               word_red_r26_0_ word_red_r26_0_sim_netlist.v
// Design      : word_red_r26_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "word_red_r26_0,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module word_red_r26_0
   (CLK,
    CARRYIN,
    A,
    B,
    C,
    ACOUT,
    PCOUT,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 carryin_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME carryin_intf, LAYERED_METADATA undef" *) input CARRYIN;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [26:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [47:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 acout_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME acout_intf, LAYERED_METADATA undef" *) output [29:0]ACOUT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcout_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME pcout_intf, LAYERED_METADATA undef" *) output [47:0]PCOUT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [47:0]P;

  wire [26:0]A;
  wire [29:0]ACOUT;
  wire [17:0]B;
  wire [47:0]C;
  wire CARRYIN;
  wire CLK;
  wire [47:0]P;
  wire [47:0]PCOUT;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;

  (* C_A_WIDTH = "27" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "1" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "1" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "1" *) 
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
  (* C_OPMODES = "000010011000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000000000011000001110011010100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  word_red_r26_0_dsp_macro_v1_0_3 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(ACOUT),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C(C),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_U0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(CARRYIN),
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
nZ9PXDYPj/UZN6zfnwi+nS6MTnVgfCZDdSAbLaQmAWym63nPQ+fvMYngQ/aUaqZo/A7Q7WUJxskz
l52IYnBqyxFSJ9XyhW3jTOKv7TpYuoGf+jsk3nZE6qR0quunVZ7JZzN7aOXZPUmpFq4XksmmB0Ov
e3eYl2EbjSOTogPZP+SbcwsUG1LlH7Woo5vxfoBiQzuffwalsEvhXxJgcBDvsUz4RyKpqaPsJkvP
X0wwwQDV/Iat29skO6c9bOFHTQYt6KpdyhpBL5ZnyPU2Wvo7TFpXgSp1jYJctLYbk2uuCuhJADYg
c/d2eul0766NDojcybQ2apa1pm12cHU8kfQcVw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FViVCdc+LATC4bXiS9SOXvzExOwizBgUH7uJGHGzSNNoD6MUCvGGBDY7U+fhb+D2tAlIbR257Qf0
wMPAtr0UDpxeK7VskZStqv9EliFR8jOQc4LjwTxMJSCGo/KJxWNvuVXd3AwlYho1ovI4DmgTkKb6
PuZzP9wlaE97tw1kfgPqZ5xALFZpbgW8T4JfpyUGxat0uUOqojwV91JSdKL9rxabFmx5MK7aoGoF
wL0bf+aj7qOmBIuD7f2mmHRdVUuRyLt/nXar+6rW/peNAy3IMLc4/AYfFwynsPsN24mY0w0W7kDg
ajWMHv/7m6t0DNMmtOwxTmTL3y+1AYQy4sDSrQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28816)
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
