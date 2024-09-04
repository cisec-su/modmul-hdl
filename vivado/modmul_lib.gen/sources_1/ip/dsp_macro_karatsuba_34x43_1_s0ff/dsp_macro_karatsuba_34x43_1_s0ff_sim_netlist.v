// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Sep  4 17:17:11 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/modmul_git/vivado/modmul_lib.gen/sources_1/ip/dsp_macro_karatsuba_34x43_1_s0ff/dsp_macro_karatsuba_34x43_1_s0ff_sim_netlist.v
// Design      : dsp_macro_karatsuba_34x43_1_s0ff
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_karatsuba_34x43_1_s0ff,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_karatsuba_34x43_1_s0ff
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
  (* C_REG_CONFIG = "00000000000011000000000000000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_karatsuba_34x43_1_s0ff_dsp_macro_v1_0_3 U0
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
DhAQDBX4CuVirSMb4uafipeLo3oU+N4Gz8LexNgltfip3Blq86kd5wv+qpjN8DaSdTkUNlgsIkxt
alTQSPJf3KAcQNbK9GtDHE55OM7kirtunhIT2PiqJ87pvYbhYlWcBsqPbLz29z3uZc6t2tsfyTAd
BDe2egWlaVuUTc6u7iYrAOJFd5hULpMczjnwOMwancYzgZEoA6KB55K3KpvJcYj6sKOYhI3yPMZd
jWaP++bNvBApZMV37QL8kgJZhvQnoPd9fUW09A1eq8rxOAGyAK6OFnE63IonOnrcIKG1kcZJYAue
zV2A3iWjA7zDyjUVBJar+RZ6DXclbXlq2xEV4A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KQnrOGZLRYqwYY2/uFadYX56qpOp0LnFAVbL3dkXanqLpyBJ5g7f7qZ1qCHTMKANrGhPRrFrLWvz
gOumk48mixbTFygfPGVQYV1IXZkarTbUwY+P/aOGdDPfLMWT0L9XLXReZBe7n/WRLmpt8qDtFC8N
9WgUnzwDDfBqa7tZ+ATQW3/QMHkHIoxVNhB6TcwelRqlQw/gHot90HqZw0pR29JQ4h8mJhR+ceIO
JzD36OAriuGCSyiquTTwMWcA7yFBZIEKoHgnOl0lBYMaxVUlusxgPPQm0gjvmvDhCf0OkxhRg0Hi
PV3xgZjrbDFtqWfVi1pQZN4W0xyuSQ8LAjkGRA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21824)
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
