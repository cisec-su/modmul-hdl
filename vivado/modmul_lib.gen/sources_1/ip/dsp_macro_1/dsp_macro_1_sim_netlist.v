// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Aug  7 00:33:37 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/karatsuba_dsp/karatsuba_dsp.gen/sources_1/ip/dsp_macro_1/dsp_macro_1_sim_netlist.v
// Design      : dsp_macro_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_1,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_1
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
  (* C_C_WIDTH = "48" *) 
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
  dsp_macro_1_dsp_macro_v1_0_3 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
ihSdbl6KsINDQrY5EWa3EghLCWUUZE0Lo3Oev0gat90vOl/VYAjA2pInaYSoqMBYE6lFISlxXJ4D
fuFu/9ffqwePZPHuzzNM4tm77fHgRD4xawZ0a5ZHWxgeGkFDINb4ON6yFwgw0ySmeOhVtTeHXslg
kGMxgXqw2XDfMqAW4J3SPF5o58DGXz4OBEil9eMCy6CsED6kBQx9YrZ6FejzsU2X0n2cdwWvO1+P
T0ddiro77R2OKWsSPp0NhGr2NNi/0n5D/M9Hzs2nOfQkZeFB1Trf9ou/OxyCFL9FvtRyfDXyv0wX
OTgWCraFRbsw9CnO7PsJ5V+cG70/2MJmScdzeA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDJc54/2J2JFiu9AlEBqEOXSvMJzMb+FFMp4ON6OeIDlJHaRPj8pKmroCWz4thaareRVJPG96UT5
Te/NPCuDpQTvXeDCgMUvgPGr3BSK5CUZ4Vx4FhBgQYBh2Xg47bJNPiMBlyXVKuLqYz7Jkg+FQbLG
6Z724DyyQySFdZuV8FbRp9EGTHjqoXpPwLZwiYaoox2x3KDROkhGFWZqUF9ip4//d7/Za0lMIEb2
UU/PKumIPa/uoKlib3pRv6lTIRCz788e7OftYDcBCkR2tdN1/I8x2mICtjpkAMzp0l260cBP5QvF
69GpJ0insNqBOmfbRAYy19fvKVddU2SceAF+Sg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21744)
`pragma protect data_block
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
+o/H5BfC7Ehy/RVuxASKY3TktgponaVW1gIH
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
