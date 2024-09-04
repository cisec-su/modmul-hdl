// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Sep  4 17:07:34 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/modmul_git/vivado/modmul_lib.gen/sources_1/ip/word_red_r26_0/word_red_r26_0_sim_netlist.v
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
  (* C_REG_CONFIG = "00000000000011000001100011010100" *) 
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
Xgbz/b4hGc48OImI1jH6EOag7fKmB2uh8J9s2jpSf6waU3vDa7MfnhE1pUdbJu40z9bMvtTuY2Sp
0M6IiCXfwqzNJEYnC20jFM8J76AlxanFUKztD43C/C9jqOGvVeHiWnqWixN4ehaxbWe4DIY5zqVf
mz0lY4PKCpsI7a80mstqx2ypmeX/eKzXPGm4M8o4HpOrwWurl3ldxrvk9EgAGrGN1Th3huYd8lSW
WgRi4VW6saPoCsKBZVbmALdLG8NN7p+gm0LUe+FVG/xHQUlfggj00P0vkASycFGDA0rVmHmTYqbv
a3OcbdmM15K4vODaEJUsKLwMYtw8HONs+rL5Fg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DVVKw1yj5uXZxH4OwuU5NttEdTSIqcY5wsLOn73hcyvTMgapbLER1x923LsBvKR4aNlNu/PHzO6V
6sxyzC2V+9nlvZmaMbN296JIwFIpW0HmeDl5SW/q/+7MrPy2aKAVbSArSPQ04wua5dGh9ICHRcDQ
tq/S2IwtLVzn97v2iiBeIYAVipiIUaQ7xzzcJ3NwsesslMt4xD78mxDt7o0mWsWh1t3xsS6SpxGk
VTmtuPxMMEWkXzgPYvaeVBADMNQa19ajJH1T+nLvEMOdrMThJpefkfK4PMNTb5xPDK4gePegvRKn
upjwkgnUZDbWqKvA+EK0L3wbhSV3zVz75BJFBA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28320)
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
