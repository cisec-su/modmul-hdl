// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Aug  7 00:33:36 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim -rename_top dsp_macro_karatsuba_34x43_1 -prefix
//               dsp_macro_karatsuba_34x43_1_ dsp_macro_1_sim_netlist.v
// Design      : dsp_macro_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_1,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_karatsuba_34x43_1
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
  dsp_macro_karatsuba_34x43_1_dsp_macro_v1_0_3 U0
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
WtnCf0xuEFCONKFXMQKD+5G/ijFDIa4DN5DvVMIZXHzPO5xNhDCROpq39LjYO/xYG1cNtaOAEy+m
b7iApGxwDrfQkXPox+V0QI58+MkP/UtwDgF3WM6Hp+/eO5lwUo9TQauJ9VkRFXG2prVLSuf7ZIW7
jyxJEm9e8VfrvrTs/LDLkESaYHR0BA0lgQQoHE2x0u8zP1Drx8WllRVSS/dokgBHtYXFgryaor6u
4sTwxBNWtOSUQETjt1nhw3ky0thpnMra/jSlTF8ELUu5VLDowePFug/7dXgEZbUYTzrMSBivUP8S
VD8Iux/LK2Zyrzsl9c2Rl/adCi8v8NoZdGMBbw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XoUl/sGTafM2CJGY6pPA7uPP8wBb8O/iwoKEKIN7VQ0YdsggOmKgAGB2uHZ6dbgragdp/pWiiFO+
StlPlXFO8ZJlGZk+y6yYAd1SCPdHhzi3DXZ7858wAXxTnSM2yWg5cc+vbgT2q/G3G7QZbviQidav
gIWk527EsKlI/VTvr8iK3bar6iwEXntJB8GPPDhOYBj+/O9zqz/J7wwamUo1VRtLR+BW0/AvKVMO
JlXcC6kkJQUevmZVAKZHFR5UOYOWrcs/HfuACXJPKni0l3oHoxlVSPjSQprrNtvhqGq+CyG/vbwz
rkhP/A9dTSgdiBvKp1ypESTnyXzNcrhmm3cRdw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21680)
`pragma protect data_block
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
VFf/7eS3uaypWP6Z3KiMYe+VDyo=
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
