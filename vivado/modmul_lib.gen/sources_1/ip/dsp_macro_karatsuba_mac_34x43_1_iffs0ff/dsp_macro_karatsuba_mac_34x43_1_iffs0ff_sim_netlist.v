// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Sun Aug 18 18:07:01 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/karatsuba_dsp/karatsuba_dsp.gen/sources_1/ip/dsp_macro_karatsuba_mac_34x43_1_iffs0ff/dsp_macro_karatsuba_mac_34x43_1_iffs0ff_sim_netlist.v
// Design      : dsp_macro_karatsuba_mac_34x43_1_iffs0ff
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_karatsuba_mac_34x43_1_iffs0ff,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_karatsuba_mac_34x43_1_iffs0ff
   (CLK,
    A,
    B,
    C,
    PCOUT,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [26:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [47:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcout_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME pcout_intf, LAYERED_METADATA undef" *) output [47:0]PCOUT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [47:0]P;

  wire [26:0]A;
  wire [17:0]B;
  wire [47:0]C;
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
  (* C_OPMODES = "000100100011010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000000000011000011100010000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_karatsuba_mac_34x43_1_iffs0ff_dsp_macro_v1_0_3 U0
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
A1E9RNrvNstuG6Gb9YMXBiYQjjTSVnYkFCwGAcMplyqYhPgUTTaHTYBoLwO6tcVDrZ1GG0QIomMK
MDMAnzK+uPHPDRm26pSr+MEjBEI6J5h4W3krkfCWx/DRDOL2hVX5TPkfE5O5m87Ua9HtucdgSQcT
kLx3MueBnwTWFGtjmIhr13eji0u4zoQWOYhHvAO+A2T6Y/nnbSP/Me+KSnjNpSLO0lWEJvCnKuao
CNFa1X8kdavBWhdFLRm8M4j+yjY0PxTaRKDMGJT6DJbJvrv3sRogWJJbzd+uH/9VXPr/z7+Elh6c
P9jXvDf8CjiT9KwlZ2ZYkF8N4+rJiyaqDq1Qtw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VuyYpRHgtsRl3P2dXgDcxl0PQ80wiPEY+K0utgLQP87zIzAOr7YKnm6PK0oRIB4lv4nSAm5aWYRf
9Dezviq4S5MGlrDFRDK09ivVeNDj3C47F+CF2xvA60YRLqxQKG8VP2M6OmXntLEwaHfdh9ZSGBm2
zGyshcd1Xbnr8ZsMmnY0ZdKNStS7yB+TUjlqfYAxFDVzeAHPol1799ynzz4zLx7jtAcSLVS2wqcF
RvP1GLqfbwx6n6/fYh07pDajVQvJaKVnaN7q0I892BQtvdgF5Fq7i5QFJeQDwshA2fGQ3Cqd/3Hg
TFeTk1KX8mD5nJB3T38RElwzd0ABXtPGV4/SCA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 31456)
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
