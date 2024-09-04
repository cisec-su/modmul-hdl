// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Sep  4 17:18:29 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/modmul_git/vivado/modmul_lib.gen/sources_1/ip/dsp_macro_mac_26x34_0_iff/dsp_macro_mac_26x34_0_iff_sim_netlist.v
// Design      : dsp_macro_mac_26x34_0_iff
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_mac_26x34_0_iff,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_mac_26x34_0_iff
   (CLK,
    CARRYIN,
    A,
    B,
    C,
    PCOUT,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 carryin_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME carryin_intf, LAYERED_METADATA undef" *) input CARRYIN;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [26:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [47:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcout_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME pcout_intf, LAYERED_METADATA undef" *) output [47:0]PCOUT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [47:0]P;

  wire [26:0]A;
  wire [17:0]B;
  wire [47:0]C;
  wire CARRYIN;
  wire CLK;
  wire [47:0]P;
  wire [47:0]PCOUT;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;

  (* C_A_WIDTH = "27" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
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
  (* C_OPMODES = "000010011011010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000000000000000011100010010100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_mac_26x34_0_iff_dsp_macro_v1_0_3 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
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
e57lCa3ADl56i3PZYeatftfEj9H1meDBLpSTgHX9DT0ptng003ElxNeeeygElsZ720ZrUsfnzE9S
McYMbRVrZJnu5ywDFEJBEKR8ZELA2KnfV5XYMpgyKBaXmLbMVysfzan82+jH2Y1nZJ/ydF5trykE
ATxPRlx/IzXyrqHyDabpr1OAOtMdmMV1f0wtSpbiq+5IsIL10FomOuekGPXyyU3BfzwYEEZ+ugTx
xgC08KaV4tqMlp0x/Q7iKaWrO3nNfPFWWla4ti83PneN5iMXOAlFHy16eFV2WuA0pz3OO4lQMxMU
Kcb147HLhvs1Y8jtaqlBQBcVayQlNfX0mz3xag==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cqVloi543vHiJihcUDZl2zHGRU7uQVThfLT+UZc3AzESG33XYDd/Q4vDmcKvW1Huz4hAkpNUJWHF
/yKblND5ro6YlUSm3DlQWsRE4A2LEXa8iRzwNK2D5A/sUo5Y14K/gcqcArbsPIzeMw4VxkP92bzV
5i7tAO4SwJZ/90MbnX45+p4GGYWHEVz/qlHN9XY+AmB0f60cpj6m67GCGsjGVyVk5eVnpyeeD5a/
Frg9NEu5rgArxsdsjCxYi09gbKC1pI2FyLLjPxOsfR55AN3WxdUIHFbmjUU/I1h3afkMG64RU5R9
F9OwebGI4wtK2S5lQskJtmmOSvSWgWeGy0EHjQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 31520)
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
