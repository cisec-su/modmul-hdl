// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Thu Aug  8 19:50:17 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/karatsuba_dsp/karatsuba_dsp.gen/sources_1/ip/dsp_macro_mul_26x34_1_iff/dsp_macro_mul_26x34_1_iff_sim_netlist.v
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
IXBWk+CjG2UaC3XOuwJh7uYtKIN1Yw3PG5xQg3daEnw8pcl4Wc5/4+Ipe+J4JNNDGfyc4HXvtcAL
K1swP3AkuVGVbs3l0FvHKaIBXAlnDcFsiWJXNlJNXYx6NK2zu3I11VZVp2mb/Ed9Qb6Z0+/ucuIR
8uUbXoOmlFlceMjx363rOp0C+tBqZJd4z9v58DCV4RM8xgSyxZ1qPMyr0ReccJybqMZxS6NQN4KS
7/6VYM9qQZTie9cj4dhU7u7PLro1IoIC5iXkdWNNJuW3qVEMMXD02+WLHLWjY3FHt+7KR3zgdHJ9
6KskW9ful71/x9+WM1nVBZ9ybGZ89q5upaeXig==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uTGqQCrrl/gMrXcWZxcWhAtMvnJGYs9ToSo8+sAoB0bLj6ZPoTUaK6aYCAAGQsD/e+fCt/O+Qonp
WOGOqQR1BegaAOv661JxzGov5U44RT2hxEnQ0GWg7lrsEgqIkqZO3TNt8/8z04gA4uGYZUZQ8wTn
yrmKl0/tSD1dWEpa9G9n4E5DoS+wAf/HUUAZpzCClpeFJkQ8TkUFIN4lttjnOyxE3Uh1ZP/qn/Lu
QCu5YyEzAdwWDKzjBhq++S7bpu/1o6jkGpghgKSn5GafXr28eGj9EZ9N03M5pz1Qx+EVifeZksw4
frosqXLPQIhqIV/BKnPTa8DBxItt/roCuflBwQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26336)
`pragma protect data_block
Tq+oaUWH3rSCBiUgIGFNGaSHm4cZw4zeMaYn0H6DPVUgHjpPIcRBAXkcyPgv/Sg+xqveyu9S3L3U
2ubYXnh/H/BoIczHHRs3IHais58jS/25jHnbTPyMFSmW1nKXGGlGU6JUPCTNqQLYxLFy1+e1zyhr
6v0tnH50CweBNq2WdfQVzTT/UJZ3ssFs+KJPM5F8FIGPbNpbNP0AeDJWohq/hw5SMISya4btZC7I
Hm+brpBgi6MxH4zfFzsJzwJdfDVVSMKLnxQSmvAFc46b4qKdtQpkbz1dwrm1O5EY89676AfFoWFi
Vfq0fy/7/Q+UHlgNxel7bTrOMdfeUs1Yrg5gMyYmYoeU3T5ZxVybKGe23keekf+ZngMWzXzqJKPR
3RT9Re57A7vEVjfp9TI2vTTabpYOVXlC8cqT9Rr7YJeDfRjjRxMoKWDBaj+iEWpVIQR7WOAdQUrv
CMW+lX6WyTDPDgwO2sYNWYqt5NFDpfWzTeYxNrUzyfFm/rB0EA3F0PRVeb9z8h772cUkVkLo6TDz
yCkE1QO+IvILADegqGnbB2Hs72U8sS09h0joUJ/PqEz0gm4V6YG7dmSqEsrIi3NGv+g4IASmAOwE
5CUbvc427236hrUGE1inEs0udQEYFV1hIxYeCxsr4FDdUP/Dj+Ma21EBazdRkvUPfrFDt4e5Hi4k
VEthFkAKCTgit8z97SxxqfwLpBFU2z/SISZiWZzj0QTkn5nF27ubLkZlQ7IptJqQmKEzC1rdNwFL
ekJmnaE4vbUnwcEl0NQXG2YyiFMzvMJZnPyJXdOrzxyjBQi3sJBxo/qrANtx/fS0IMzvI4X8YFXZ
+f3uzDVxkqPOFFmLhiX/GDwrFOciY/kYQyrEpGV2Q+PE9Zryg3tlfTrntYjWAUI/v1YjYuQMxT4K
yIMej2PRi30sbVmdLCVJhxjenH48k8+TQtQN/bkYFJxZueyaCROccG2tXH2+uJuBTn+kHGzcjXD3
UZf62K9iNnkiq1gHVPLwcP9jtCNBY9nD/FDxC5h82eQlAH5msssmOlWNOtEjlkPtIpCSB1j7flCN
SzJd+lymhYqDMc/0rIKFMggZHdFmmCMrsWr6xnHReYdtflNEUXeDd/dffPMuqGJJHFitFmyZwGHj
j/KKI/fmaAhixnDEvtRSN1N2AlJcqVOuRVr2PuEfqMEvpkKOxxfbAtVbRxcEw36O1Uv19TtxeZMX
KNPO+H9moWPBR8GPGgQQkjHy8RvVPFxbV73j+6Ao1MJAkfPZsbO9pNSUJ7bPbhdJAARCR+RpQA26
SNgrLRj0vfhNi59wT4Dib8fGJXc0Qk2BMxePH4I+JLSFyRY+AhOuccWpDzAnBkqzZJa6bDu6rg1q
sSQdNEL8DaxtR7X+AVBBtFwwpws1v9D3dmiknFVdVywOBgfP42qJ5LViJLYba7rdDyHiS0lPM+h5
ubowworelBy0mgiWDWf44HaVkKXMXuCHneyx6GqF+o0Nj/rW3520N9bHOko9FtlbyVbP8WUgOoqA
1bvViSFbteXbQIR8kSR62KFcx534467iq0KuFVzLiNYiDvVE3jVZBXZZti8OCkDYF6v8LX53+N1O
qayuoUOTlE4uCOsYk9rDeiky/3MWl1rA27dTeD+kuCHni7gxeLcKnnxqeUrKTuiRG0ngmT+pIswX
ekmkEdqrYgTAnfzlaAASf4GF1iDToAKBLcT39Y/SAHm6yIFcOflkfq1ct/2TAvsGJyeerD8qL+0P
noPlmv4HD9imXQEw1MGDT1lEIVdIvXCbs4dqDF8+CgvTvQOofTUZ6jLII+BKd7VRATuFXGlVMAFa
KK0fVnaeojuRLoVBApSW1Uf38EHl9ioswUgW6P58JFWGguXMPBsnTuCUUnQvmKuFzWBqhajL9Ho4
TuT/0vNDtVQRfaj51kRiY0xbwjpq8fIaKg8fKz+nEd35QSLQls/i2+FMzBzTJTu1wiECBGB+5Ozz
NVNzyQrJX0D7o9TNUL3nO8trVIDhFme1AyDEq85T4RK/WFd/AuPTAZysOLQqhjJLNUWbla3VaGoM
g7FHkSFqHGMDrAji44eFVUPUHkazpD2sBCXWn9lmVr6EA8ertOXJUVqaUXaHyUyPwQPfCYry8iP8
8gKQNVjEBRqsJlXy6JrvKPuWsSVGgcddTCRybEhgbPZ2bQgFpg9lATZXeI1aVxnQtkeXT9sWJsIY
extlpdR6PN8LYTjonWrCEjgfHZ7uamlRgBccHLEfXxfRA8VHPM9jqsqk/uh4EN0Y21CGkEZxfA73
u6d68YDLR8CKr4qAW73SVOkxsYz4Uhq7E+ORnWLQWR/ECIikTXLZCuclz1ySloyAKsEU/qXlzolx
slR2LZbmM2r0hK4FrUhHKzKSsO3bz8tWMcdr0zCoigRyfwy+mPRirUy+KRS56lw8KzFnoNBtabiL
YMRQk5GQJuhZVnNa2GheQEMViziR/ba+bPfNSWpckrsG2wUvOnS7irCtYXs71ecgvb4ykCTAfI9m
GIdYcybntWPMLVMTCMLoE2d/64A9eIUZnFIP2XNH2l9J9DBWuL6M4goSyjyewq3FQYS3JAb+YapV
sPNghiAWiwc8wHhgYepLWRFkBVZhsfK/eK4ZD08hELT9Zuw049qNpdnMSowvkQbbWlNA4U0esv9I
2dF9mdSa0+k9s7ivZ7YVL8lVhNdHLLJDZEzeOsnbpBGWnKu/c8FqKtyHaRnbEO03dvPZnJCyW1Qg
BriSxZNPpXshnNRy4SbbXczBEbHsyhDTniiPyDCESV7YEwD7TpSN8Ic4xNRVKU74hujTyiwVE7Z+
0orpZP17Nc5MQlrZ2a4soEObje00hFLCrPVWfpRoAB0TJ95sjgQ9tS+w+wbvFZObOnxJRqGDlBx+
I7TSMaNEVQxD2DNFgazUrns/iywjk3ujwwVEvQmnWVxiz6NTLcuBTQH7+jSvexeG22OzLCbOadUV
p9VVGCj/e370aCQbmLiNTea9zDmkaBKxxiza23k6YNOUv/wuXkAPmodGfZoiniWVwU538bm9ZOZ6
z09KbAw3SqwgzyyDIHSxINlnO/RKCdlS8DPGFka4qgvFWFGscBxHfO03yZ8jXdeCPLLvaprLiuY5
LmpmwuO9O1v6srVyDsWpSWLAzkzoXUehfsYfBAtcV+6pFOsUeF5Qd4FuRM3srsaOy5bIKJ2i7gUu
mFrBgIn1caY1UOxi0Fbwg1rD4xChE9+lacuj88X6q9dePBLqulhCIZhF+8RRJWqSXMaamkM5fuaV
NSzN1qi+xwAsY7IsCdHWdl9OROSVXQ9hhYv2Cre1db9O+2hSbq43ytomx+t+KGBlIn1MMXISiKYI
ub6mrybLAh+zhv2E9hfpI13TFJHp4w8liwGCnRqKr0lwrOa7aBsZHYPrBEbJnYy1QpiSgi25LrKE
k4TscASamMahKI+t7+B7doBTwQH5hk1OF4OzZSEZ7wlD7T3OiGNSgSvAFs5LH9trwx4Msn/vWzrq
F91AduFZnb5KCGIYINy35dpfjlb+TuV8NsH+JAAmT5A7YBk+43iXCTg8q/7fu2wNIxRFwMy3qYeB
wVZ5kbuJQLtqtzcOLZwLlLT4vAXZ6mzyeU40QDdbBl7n5COlTvG8tnpXVq+aDcetcE5XjNeVRFCN
7bkcBffhcTjlvozHvHvwKkpAgzevXGgGEOYziZJ5jwY4fgxTKp0cs07yKJ+Z0VVZeD6SgIOV4gZJ
Vfh2w2GUbTpNMyPSoo1cd7Gu7CXYzpFjRTAxbIL/9eaQyhKdzSsQVl2obZxKlH/SKJT8Ib6fevBO
agwcRtcP0cwab/OOAnEEuziNqYyBbSX0ua3gVXay58iOtd10hyFP2EktxN6p5NEijuQ5YpSVV8PU
WafdeKrd7qqiU2OANpt6CJPuH0vk/HtJir3gxU8nfqh31zbLPgxlZ7vwiuDunD+rhc1gewBjcHOm
kecUqalvNZsfd72RtvbkFAT+4LNwZnXDpkaWG4jEaNcu9q4RpBWzrduoscZqXtZ1KFf77RRbTwWb
VdHYX4zo7guSd9KPrhWXSh9NqQxOYdtKvRrXXJuzYoOqFkF9gFxr2rCkNs1gmt0PqdA39aFIoLjM
e9O6st8DLR8AbQzDdfo3F96HAjiGumqHniPzwM8Sf0/DuVK2rvL//GN2kmhEmOc2wDVer176wOzs
LfwaDfU7LwICUx1IhLkNIqbzxjNfJVjjrAD2HuItn7S7QCU/mqV8lpeanQ/pCBEAn1OjnBvpiltC
X6RuNFh6N71IzAt5f7xTYSFLgZHUykL/l/0jhmplgBqCReVDbrvOwIFh90UKYbwGu15H/Sek1OA7
SetJfFr7/fIZTfvR35FCPFQ/lqA6lyfTqtmf+ZfwZ7s/FIJmoGPjsVS37yfcORHG05soblg8+K+P
OEujPK/47ZB5WX0F+1tQVd6QYRORuXj4sfBfNvAnaGGBsBTt2/OeFAA1Vq9dBNTWOM9phOKBxWgE
GUveyrkBe/B2F/pOlVlynP8sb058grjj6Ferg5ce1/uNpkX7c1OKSRCYngfK+q1RM/U3ZhDSdpAk
9mDlaicg7xOrp9yEvmx38RjD/bo3IrVDGwMhtmNT2szJd64u2njMxIAzedQ1WFT/QbxtvckJBwvx
DAuAxHLRWWI4AqUxjOyAAz/tiRhbbBQTqua08vidhXEZZcsXHdzHO5tUwOMmsjCvvOQGB/91Iigm
3TsuhZN2rEP+5TOS/DS8G6XJGnIJc1rwTVZNC4ETlmlPUMX82kVBYgM8bSqHm9KS+4nYevWR4elv
K+sas+SHnGNmkRePdwFfEK28XiGZAwlkWtFh2z138BRh/clsx7PUZbj5Lef95N7yCOREMSCjvFv7
3xUNPGymw04gm+zaeWOmHbrCr8/jhVLidetQhXw5yrgVkxP9t8OZrH9fohuT1KbVFUbVucU4VI3o
oqHtbAGbi2HSLUpupxZbcuPklZZ1SnMtrXoflabjoPSw+0Ot3HuRNs+gVDQlKVI4fvt+snu/TTfJ
sdbypSL5kzn8DY/zsxgghxY+yv60xyYeOnJWuNod7yTNDrXkbP+jT9K91vB+Lc9bR1bLkvAHS5/C
ykuMQhp7lEcjKSmPx70u0n3Do9TIVVtOKWnqlDHMS+vvJKtaCaCerckDLDdKGWJi6l2QQx9ofIWn
PG7vkGyfPn8ID0glOo2MXs0hef8YJaenBeXkZRnpvzmPIW4pblr6+DdnYY5lodSuB94tEL60Vf5M
6mJbATzUKMLHY3qn7unsHHhOwWl8qBxr0Xn9Zb/z7hzaVp9AUCcJUdlzprS3PKJW2CysFIPX6GZn
UGpYYajEoGF4DzUZLn44TQ24PLGmzqdz6zUTbePEEK+hgzcDLlFqzG8i52Msf/jcGbWLIHwJdU8U
N6jYla0aCZzqRoDaus5LIODf5yhE/AnS8MK+6ksW+s8PFG6Xy40GlHBw0wgSLnmt/T4MFc1OFL7/
We3lXFzfzUF3yErKx1b1r8r3lKE9iEItK0ugQB1/xb/y1wAzlkw6rwaANQdrEQqB+rlf9FUG/o3g
JiYft6A03JkupMmMsaoBdpqowzuGMYAKMCUM6CYShjmTS8PYmAYxnlDSD+A2T+ZpKo9k610L7yIL
FT5ABfk+rzcSfcpTKb9gIhXvtnL+ekx7Q9kImpKwODxhK3dOx+fQ0Yrsuy70lkk1chhvGc/I0s1V
bPhjni9d85U7ef/2cm6i04UDnQL0mwEhExbSP6wLrx6/NcW0kir2UKGL2KOT4Nzqq3Bjw6+749QM
YPEaTWuhU3tTxUfr9yDJVTNPy3jj5EQIgOsn/ULaPtJZzVZCqdywOfum/5+PsS4oA1pp7m4yvxAr
Z+8ARysA0InjMDtveDVK9pPNdiiizN1S3+eYysYzAIr3ocUuJBl+qYNf9j221smAO3m+KaK+rQel
ikHBKeCmqPRdy4xn81/9ceaW4RGoOQgourwWVAMJjJo6m8DZorvOaNXJkYJYrw87OKQZ3LZlSMHN
ARPb1YBXoAO+UURuOFXQ6C0fvlih1EBmAPbkABzPPCtZxun3EmZDXVOoLeGOsaV54rZNxyevM8ZP
K0RZbkku2/oKsrRPssK4n6FJXVa+6Vl0l5/6TjiDZUJmJoJ9Uf8R0uxO1bbVN3pgqOS11STMhebF
wAGpQkTjo5vWScCX9/gUMg3L3j7bYK4vP0S45X5yGgiA1EoTir8NkYtwDbHQNqwA2P9YdE1El1WH
chRgHyLoSsdGHT3gC+zH2+YuKFSVXsr0rNbMZPEsdKWIbl4zHPn2tZZgJ9XXhFqzRo0Aj9u/C+7t
X1Nh0ivJ4j+/rNN9jNQiMEJJJcr1wtEbcOIDIbTEw45qRpoBzkwj8ctQN8ie3Mcf/VcKykac05z/
nBn77dk2RuxFWKfBhpVz0p0qI0F8FUhc8xO5m2r0nbThvc1UfPvFrxlUkWrp+yCljvpQqDpj9VF/
jp3wYCzfElxTqtGiAlyDq0sHyq+3BukSTaiW14/Zlwo1gJOfOH4jxOj+J8LMBFXxvMpU+xS6l8Qj
i8SKGXD5TJNX6iXuuji6JakiS1+wyig/5mbILEMT72uEewMvthxRW6xnUYa0Ie9LF2OHF1jshKqy
curvyBTUmNoa2QwaZR6TIphfkHloAuJqPaL79i0ZaXCnSW5iH18VDRZE+0WRhAyZXMgyIVX5yw5c
kUXyHuCIJCFNvrcOmLRqivWxp9g66EUuZO5ksi5NyOyUnNMFUBwywP5YAqHZHWpvawIQiK28rwhi
cwl7I6/baOguGCGl3GJHas/f5TwjAwp/oaZ+lyvqoKHws2ewBu20MD0ididkq9Xo2Slso4kTCKUW
BCrxiLY7H3klZxR4x3xKK/YBKyXlTURyb8RbAQQ9MaEM5o+HsWRWBeEUTLwCuqME3hBzGpoIofXc
e8toT7Bk5CWbdHy++U7TH2mV3VhS0rmYVnW2CbNK1qVB9oerEQGysnI2d0Aj9ZSFh+fFxyJpMQZ3
XaLyZG0o7UjXqXFZpEB/PGUhV2gn1/JBFKul2RijYV3fc02SPiPjGYMPeOBowUXw1omLA00iRG7b
mj7liSZwtbbLmh5nQwgpc605ytcacNvQboeyGuhXmk4dO+St3xeb5Mk8YdOfT5H+IUbh7E3DWM9X
QzchDDsByoFWZElsMFFzx8DwQqXPLqrJ2yJcZnynCfH7NYMvH5V8rsnKw4qp/5/aiZ/YP6zs8xv0
o0hp5TZbXP+Y5Kr58Z2eF784hdhabkjwIBq24fuuY4pXiLnlhiSA4Tre3bOrH+iZUelnmfPLSgWG
aWMJnDwCDSsqq32zBp/BFGVxDAFQ9REhinsRvRHawoITT1KiMBUsWoezdlZWX+vR1909NWhe1Dxn
wkzjx71Cm0WMvyfGwBvjWQrwTjMOOS4wmG520Vrp1VF3+opGDrBmXc4kXnhb8Sm3dFjccLie0yaz
omqsAalF7Q+GX3zwV4fSPAk9ELj/QwXPCrmB1yDBStPDtRRJoxnnZhh/5E79ObMzo9AgnEgENShz
jDU605Q1K6g/hYwXPjmOMD9KmNvTw0V68/4aElkaIhFDtitEEZLD78EOU8AUHKRdokjHGkutY3t+
jWpPus72Yz9bfrgazKr2HQ/bM5yPj70f98Ep8Wp5Ob9kAKQYJ5OQnEZoo/1u2QP2RMK85B5hVPnk
aimR9V17lkYf5eI3EzoEc+pC1tal6rARHQQoKekkQfDJx8F9/QrO78BN/wiL6tb7Uh+ImJaeIlr6
F6jcgf9ccO6mrHKrDiUX2NKB2bh5u1k4TyFih7XbCgNLIhAUavZ/Ljin9/JhKFSy/n8dAwpgxsit
ia1l5BPPFJe45cbc7AipcWX1aMOAw01jcf8MnHJZnGHnw2LafoEVP1KO7bh51Ba9xy3AI0ivJWZS
0UD52CGt0DyaO+9UxvbpDurrp1BPcpg0uHiXZZlC4wS3Nx/njPzFEJxRikxLWX81X528kaCkqCRv
KslK+pmCyh9dFbhBWUwhXQybprNIoJ2uNeXbFDzUW8NvD3i2rfVTcTKxjlMhIjtjBdTyuofqZzMA
ss2VrkQyS+RZhPfblueiko2Lb4kyb+/1X/x7qHvrbVCEOFM6cYFJJn8WyM3aUqQW+JmiKTzA4lTQ
lVSwTxzL/KDtkieGK3btyiKFIGKrV3wqo4tIeUnPGRun9Q+GqtOPZfoIPJd8JjsQAWwVYdLP6gN7
fR1CYtQGRoiYFMSWsaEAA5TDAFeSntg2X2DvXbZuUg3bHthEWM0+ZVzyfrBDv+qjIMjCZJP1PoWk
wpy8sgkCDdQGMISqwE6OnT29uMWicV0nMDtUVcD2eMDbB1ftVTXX40Ial/aSY2trZfQcrKfgJT3R
Cf9ICs45K4wY46McOxFgyhaXQbCSVkHEP3aE6R9+A6Can0PZ03Rf0JmSGyUC99QSssCMZOzDEDy2
cj12CXVRogD5n1Znjf3b3OvI6/zxuZ1YtUDujEtyLBMWdoEkiXYtyQrKINT5iZSynSB9ZasUOIJR
ZePaQb0V/HfSdxryMFV0HLw+nXQVAJ8HaULvkQpb/khqkGvVzMwPLsRxkOm08R+3TTRs0DEh/2qn
Wuw9b82o0ARWE7hn6xBdFrmZDHuT3BxRbOdLV9DD2Kwcu8/WC+P/zGOqoX9yMOFv7LzK1hZ1/85z
ALksniNOif3Wa71qZ86weD9b+rHD307A5B25+kkg+2ydJI/yS1hxzwCteyF0zbq+Z/Ev+Lw5HT8m
alR7Z7qpKjJteDgTFziSh2jB7U3RGIdytgHfBa/JDDp5Ow4tajo2B4ZSJ1jI2l284VrJiHWojS4M
HpOYwiKaXyXKXxZg/6d8KmWW+6pr3fvJCEbKFfBbMFwRZCdxR9qG76AZ3LrNBJdWfqEvS7G5fIwD
/7QGUHiBmwB1JmN6QgV3pHbkIr/0ofcKN+gYKVKijYiw4nhfMTQaTgHOYyyZaZoZoZBR5FSGObuG
v1LFeLOLK5CIc+U1IkokIksaU/3G9RFvU5u/CDfWjIXkl2kuGWtMYb0dabWH5wZEX/pnLTlsEpoZ
6yh9dWIXMXt4Cp6Nm+2FQHDkB5QzyTIRjWsw8Thw/jXqFGkCOg2TzVx46J6gDwWMEaJuo0+XphoW
7+CuOHFgn8/gYMNH9kR0VNVyNgbP0l7/CqMh7S+vk30m5bwyJ5VyN3QlyBZbL+dOwgHZQSGp+9kB
U0HiT1687xfwdDQwjt4+E0vESb2prbx6KqNP5H7qSv9xgK2UgsfcJlqwMxYR7TUR9PsBjonAQMZm
rfDZ0VCCy7fmMF32OR2mC05ojgGV84OprK4kdlUzHy0gkD61D0z96F80BfIxM8FwGZQL/0/kN3Q8
WLay09udqoXqcOMCNahSZ6x0eG4g1ir6Io+s3PjFVLD3NLtFhmqw4qd8WhA7StdasifqnnP/U5st
VhWDrCE9+uivTxmyfYqST5H8yAU7WsHPKpvmeKwChzefzZl77AUnMLd/PpKUOUWFHyE/XQoQW1pH
KsvZSXU4rAbo5iqBqDJdz4wmwCyUmbEn+CpaZD5Oo4ZETr4FUdEzK3GoPuADsJ1m5gwqEN3sblg1
4OYJL/qMleApKfXeKJZCKsbM8j7u7iDbF+WQymU0qAzRdoWt7HX8ivQrXgkB5HinksHZrMBnbrib
gp0XtP1uTUyCrQcr4trtq3x5y5Bl70a99NDVwghj4QAvEmGetwA2N3qlMnuk/gFtKftCAgiQ9bS0
ZihpiNJk1WMht3WacytSMTwAv3oMDMfw7ym1NeH0tYgQ/qeqGrg4eTgoW9yLdEoHCxYFmhQaXOSr
L4lW9f87tItxjF5eA4ZXuPCYAIGd2OQFoQB6RPeLfbJrJVDYfAwVJNp+jIwprpLKZQHcBhWtL53Q
YeGtdS7SXF0TZ4qrxa/mfg2bMfexhhO26efpnOS7ySWT5RUQuNKapUwVVyt6FTfwe29EL6hVY83G
wpmcA1V9d09G3gv6R+hMLHpcdxn48F6Gf6jBzBCC42plo0sPKf3TjFo6isKbjwiU8gqtU6W3bp5A
1vuEB/L/Xb3cUpkIvNjspKdXF9mtKbPBU+scEcFIhMNiAp3jAHwI+3nfW/ScOAHXWkZbYxqONv4k
X1E9JcR4APSk57W+NcbS+a/pyxtAYST1W7C2KGKHj4TWa1QzRrfWgKteZ6t8EzMPJFk8G0J0BfJY
z0Yv28eEo0w7LgaSFfYc7fR0HsO6w3ui/uL5W/8oqFnzdQRlSnVwbezJe+IYeHreGGKQCl1/nc3m
a4GALUPdczGIJ9/T6/r+eOc95qv8wadnA4z+jAcxVZzDSz9exrzHrzT7b6EBmpBDZ5qdGVp/8Eln
MJXg9CVrRH/1VCo7m0V0sH5/3Bza0SXdA+PVENUSNZuwAmvgwftjcYwcwDbk8L0p3fc3CJ6lcW8T
1wdp3Ni7W8XKghmqNc3+Av5806nYKSsQEPYVgOriwi7HirIOIzmgEUxQhcwq0i7wDmyaVrv/FZMy
M4DrMYwz6N9D5N4M1HUOXrAg6tGV4bXM//JsYkEUxoZKcWXab/zplRIO3XZb28+nS+tT46XM1r8W
rH4d5+tyYqxZkxV7MQ1+ZdlNkAtOeja2HZwgEP/Os6DzbDzqfmtLqvX61M4c/TG94qSVsYyAEcQQ
tw7fVtBAyKwYzRXhHsq0n8GlALbCCFfHD3ohCLV4Me/+ky38ZKj29oN5DIAgOlsmtkY8melRqRoO
MFHZfUt8xa4xh/xwdRek6uXSp9yOzY9fRFQDrtyy10dT9wEMtYtJD01x4MT1vMm9urgg9fd89qZm
WYM2CwYAnQAECQudQD43fRWz7qiOThjWY9ey2taqSzS8/J6UKzQef7CFPCjcxmaqLDH4J072zHQ1
m5sGWCpJNTaaCyLsltYKlGt0Ws93b4Vl+J9ioMvZe/LIUamZ6CYa24lFAJG0WS5jmF0u5QozMqEm
uNLs1gzyYcqxB3HaoUk4GIHeLr4INzLJzRpZuFbJJhbk7LObwtksHocGpQy5bph+/snYhuqBUz2I
0Wh7ZhtXHTOQ7+HneeW81ggMNiemCAp9bz7vswuWymTXZBL3okmK8h85BlxkOIlaLWW9SSiwmDjr
LGmL8b8N6Xf1f4exEbtwPWHYZCUkQIoG3W+LRso3DGFpQUHUkGPsRtk7MpB0kc4TpIaCRr+/ha3H
TsEoG0WYiIEHaMVDkIilajhukMrS+eYRhg474xfMs8Hpx7Y8M880bC1KbNhTBhFB9NBXFIzJOfBl
R3BQn9Zz7yGMaaklA8yZwCZch76Cirh6dlAw4cwy/2I7z19Rx8D/9wuc5yK35j4avftBjYcUIXTY
MS22oSbse6gIP1ONMQGPnqsPfG2NdCMqXnEVM10GD+yOnalge5bq8QpquaYomAl21O3bc8Sa9/HL
jc9QF3TAwhN5h5mnqKTCFU9Dk+xgbtCuB8bBll/r7fyDCQwjg5FKnyk6GGwGGuwqysksS71x/Whi
Eu4bnwLo9Vl59+Vql0lNeEeLu33Os/K4lKGrWzLGPJIzrpJcloKE0EmRQAjQU/xN8bawN+pfTVAd
lCOtYBgZrCLDSsBr86jV1wst9OdVRttz/RUa9Q7WnqIoHPSkB5ZGU0Ck0JKg4TWB1xyqoD504Op1
R+AY2syDaRE1Ys+TbRU/4GeZQ6eEk5Qub267YzrGR4Bf8l4pcbkwBYauzJN3dt+8XhWIFSOCV39O
bq5ljlMfngFeM261DD4h05VcnNcgw+rNVCmrFCFpnNnTJK861fRCRfv3GSuu4M2Ufh7UR/69Ogbp
slf/JRBXMUi2sB1Gj16cqetPGvoXZSFSi1GPOQ4OlJzbta0yOjJTD1ARhUbbxExe7pdvsVe952FZ
VfNAtvW/t0PtmW9jkTfM/sP1ikDdcjkpmDbqkd50jVEJNzpemvoezAcrH4lGDgECfpZCrn3I4m8m
rW87lYUptPT02Bm+0HPIcz2qJWZZ7JaXQhk8o9RoteqKwv3LSHsa8s1nDDR+k3/iZsThCjx1OzHo
C98RD6Iu6Kb0/AdsfZxDmr/7+8SJ8FkkJmQd0KCUwpm2PKVcwVozwUmSjxzAZC3xNAYPkYhGDFAf
7POuDpHjRkh8X1upLeomy09eCktN6nT+kntZzuvsDC9Yqx56oHu3Tk42K5bxLq89ir9Oj6tSiUPu
GCaFTMvAECVBKU/A2dR1Fadd6khYDcUe8KJFF0GoH+LXsqrhLw9y6mA2NZzbGtF+KdoTSioHfTbk
MvgvLbpSayFLKNbVSEkBlpjqDF2gRT0GjbE9/tlAxPkSs7dgIMVAM0FouEbG9871AlX1vVZtGO/c
SW0qXjKYFtt3y6T3yi5vujyVcJKezF8MWGXOqm1F6Lgyn19mNgBPzTCPHwkDmRxjlIt3OHWCLtbc
qe+6wv0NYTKdUIoAPA0X71CACZ8Xk5JuSyzM/PvFgGTg78WMOldMQK/GsIIFrKV8S+7g1Faghf5A
6K5G6sEfTToGZ04kKo1W3+dMsfFkIxfg054s7Waj3RhYu2wFPbeUhv8ru/OwPO2CPTMqc1kZQJOq
kz4sW9TtvRIWWB8oIMpF0Iv5P3BZW9L4Mufk/OXyZeti48+5qAoFJkFJTnQ0+4xoUu+0zn8dLZjY
z8Md+1WvXsa6PqphYNUaLql7x36pb7Z95g3K+nZ4P3OWJx9H8Af2863GJqXd1RgHMU3yVauG7pFb
PKjeQzr1VgA7lzXpo2ydTfVlghiUSvSmn7Tg9nrj+i5nJ5ZXihIW5Yogg5b6P2LgsiyONGYXB490
0XRSxb5+l6UTTGqr0aNxjLc0FsHYS1dpseecFY0QjLJul19DMTLJ2WcpZisIsxTcukF0cXreRrqk
fvIVJ/elLvAMltwwYThovA7GBosN06SuOxAAHa2+XddHwFX00BXhYq24oprgu4wto2G4JlPsWdXc
hGynFGXkRgNUL75EqAjRqXSrvGWlkFpEyt3/pznnWnQWawjC8wHk+mK4h8wcE6up5eYVLLsUf1iA
vHnA+djRk2LU4IQNOkEyEqI+oHdY+DOkeUSVpKLknK7K4G89qVdeZFVfQJiASkzL/nmX5H/wxFDK
JP/xJC4dAg/TPqh/niykoMH6D8cGsrIRcm+fURC8LXZRX7skBmVTEKFodd6l5d2dMb5xiqvGR2Nc
qFpXeLjrFoNd00z80sWpuf8vuBDHKkCffAT+MHdqp1wwRcpq7uch+wjDRUjNbg7cCMOZ+2fBZG3h
iRnire/9S933PI37xn27+bp6fyqtrWlgYxP7f6Sf0y5vpywj2/blClwP5UH3C0xl8XoqBon/ZVPZ
ZLZ2herrPpgKrqAWVc7FMDM5TMH/wKO6V95CCrGnsgoyM1urAFXNxFTsJfDlhdJWx/P5h32xtrY9
k1C/tiNTFY7qrTxfDOTuPsyPxDaqOG4HqJl6uGgCIG8z9O7mfJ//qzO2qa6sDKQah+QFG2fJrxXJ
a2IChAl34xUnnHstiXoRjh6URGM1lpX8klHdwIDK/bRhi7oPto/empnFuWi/WNc/kBqKoEvk/BS1
pf6pSAhVGaX9NK27cshfHSZOBBfvd4+JJRpIq3SMc6iTka+hO4iKNvWMSz85qXrwGuRUCBDaAr6p
7Img0gRbcwXxW0qs3k80jV8V7PIjpYewEqa/oIyJgL3fDIvKK9GaqLRIjH+lIe1UAJjwJBiSrje2
s9GE1B+sTWX4s0jtnswlC7YE1khb8VOobSMbxUZ9KZtEj5cXe0bugN3XMaALi36y6Ym/inE9UYK9
iWhFu/QHjGTGoHVgjxZFXjTEi6Cjmh+Z42vyN3gur2/Gh8shf11ZndNLoJ9nfyRMb6f6SzZMJQuN
SgjQZeia9/eQheU+778SR0x/v8p/CEisABx6AyviTGZ0iTNy45EFp4pQXrwViHwH4Z3j2R3Bhggd
exonYvvPF9Q5w2IaKamPzbcheiaArtqut+AWlAJUkwHE1XtM8eszHazKXVw5Kosf0GmbMZWwl8Kq
QsZj5Gt/jsp9PFsvXwmYUK4EmrVCI5eG7alLi6qxx4AhGmbOQtqnNrsmB6mCJwd9CR51qBO9H6eY
gmOIrwO4RafU87UvhBc5KKtjfCR4jEcU8A4Iyw0gkMAnKF7yW+a/iRYY0ANJTg3RgIqsSCRXFsWR
Y8FgE32Td7JhoWBaYmamoO2EOpe9UHHTUq9kG89HtnQjFj0bkBCPyrunBoAAdlwDK7MQsWtKgFTs
RhDNthINkDMGzl5j7Ugw+V1V+DcE86HdSYfv1YH2paEsl5j8FweeU/b2nPbB0oFxlyKOHue3Iq8n
jEu5e8aXeghMoXRiMsd+fPKABx2Ett4+5L2WWNjL25LY2ZcHyOn5EHGRYuyYgrwVCGTMX22ylEhx
1cWlR0C+qUDhwN+p3A58RjyyJ/MPisguJzgiDCTCcab1WTWN5rlvbzDI6y5bF71hTpNJateNJtrG
dfEhrVa80GY4NYDwFvak2fExbc4NlF4PVYEAsLW87YGHgT/cJsTv3vgcmsMMkmHrRKoYoycira5N
XzqsySyAXCwgO5fJkSY6UfKvR+5/vfVsjNwQg7ZskAUdFI6fJ3XL2zReFLPNE/Q6s1XHHOIsWBTD
REtN5oFQxs3Xi6NH4H5BKcQeR0qeYT7QUlwA7G3qOU/HY6nZ7ccnfqBZ2qX6qKmRN9rBQ1nko5L8
UFYbw6WdLmqo9BvwfgWN1Om2XfL+9U+yDuaWltk02A2KaUJTssJ2/KZRLrXN7EYCcqbScrGdXLkK
zEDvkp7AjspXobZuhrM47M3e3FJhtLQu9KX+QcAGyc/mQDZgps8oObVzuJJ6LQboXYyeP8Jf8wTj
QDaT+575A1JmXm1mdhYqHuMDe25eGnv8YJCWmLZmTnqFWbnhTdaItUjulRlM3UrVb9Ir7G3OtjuW
i21GAa/X4eApGsxKeWqxihzaNs8/57DzFIoUtoMgXj/+3qjPBTZZkeY75l6LIsDwsrXGvXGXX3+5
sP9J7m+0332/DlkbpWVJ4o7nthMLpqanL355//GAxFR5hlaN8vm4OwFsX1Z7w8AsX9RKVJCZYXHA
bbmN6OJTTnu7b3z6eBNjHzCvIoiH1/Gc/jTlQYIc9rXy94E6IQ1attOjN9OK/4eSD/+ib0XyaQPB
frckiPE4KPZpWUDtT83kmNOEMh5HBMeZwch/CT7B/i8GS/PnFCkNcDyFrCzItTLz7GAbI4K2Q5IW
2tk0rGtoDPR8dzbEqUctU56k/qiJAjG9kN7NBY2MrV1hLeJpBUuT/NP45qLq+2d/DjdN3thHnB4w
NRTqG8nIxoszpWHbNK5aLwVp24IX2hVM/7lxCZEyA6Er58ARUGdb74Rxh/pzT1nK33wRftKh1Kcn
fkpFY2qbiwukC7wcAQR1F9pcGQs5vvV1NJ+pH9V2RuZa7RIP+TPXNo18SWpoAvWvcrAivpDfMZCg
I5ruZyQxt3e6AgtfiLl5LIfkxUDrV61mQxatXX1V5wWK6dzbmSKmPnC9174CpB32IyPcuu5RGmVa
Ijrn/r2DM+M1wYxwOeW/m9ASn3nEMZILruU3SdYHECB/QHIHMUlIylPlttAS2J9Oq9i1GE9Nfvtj
7uuagQNEh9ggMvwO5P4WGw/l3hFGB364gyDrUTXgI0KWtVYYwoLWfXn4ff/khCSp6bxrUOhGo6wD
Rz3zpUvWDAtJ4d748YihHuoU//cXjDzi85iHi+tJAjib/1jeZ8Gmxe/Mx5FmNrd/YRIUz3ARY67d
Mc2vPrB7NvnGgELhSO4Tb1QsgVwy76TZqDLa0vroRL359mmlPHT51ziufV4DxahLqlDKqDJ8mUvy
+bLdwb28uufStfIQc4fYMDMBehgfAyDAVpz+CxLUjiuciPN4jlnMLT9EOht4mRpIvJ/gVINbz3Yf
rIPAxKAl9E/bFoSmI44gHIcd/Ww1H8/2CqLkF5k54hP8Ze6PsQQ+MtGZXMdsA9fj+DZxEyqESmRF
5GmRLR0SFCQnok869BTfKixESfVsDfYv8nL6qh/q1PR76rr06uEMqloC39EPqYPiTn2coLATBiOC
nCZIeXD3R4BfWQ5ZHsHJSHzW4IJ1OQ0coNXD62t9R3zKF5Lsb7D6b6GJ+xUF4Bg+biam3h9RLJNi
THC68nUQYKRxxSyvAU1RP2znalIXCEGNScqsiqp9iGJJ6Y41K6ProltiIlBI4taHhtKDp1xJ3Wsp
199noyjlrUDBsHmU9dyTKyHW6p+a1ICyvG6PMrqC+PcbzWol3nxqIQRcZTtCPLI2xw68epTN7/Jy
tivch18q5BKbBV8eOgVwQDNYCspksmP0kL788nShe85avRyEIlC8UCJY2sSogdgsoEFe/bB95Ifk
HwEDAry/2eLFAzOFbKRqJxJjOczvFu64/D9Vo3ZfoMoHB5JUmE9Q1Q8HvUUNrl4Cv+bKE3Ch0+up
QxyU0pVOy09+GV8hwiwDd5Dfn3xms44rj9Sa4iO7zvWJpLOsZWhikUztcvs8uMkW35Gmlq2+WUup
6MiJ3Vgg6GG9ckNFU7fuwyceSLN0Qnf4ZDVb2pQbOYIRDZrPjLqmfidSdUa32FTACTzkx+INIWTH
BVkYlMFodl25fTkTcRv5BNuP6g9/NjPS5E+nSrWtcBsFHvxwE98+U4DF8yE/Iofeunanq0e1Cd70
UHic+Nae8dW04uzJTrraTCpmXxpHs002EsvhDTkoaufdXiB3YJfAsCWu9swW3+YTfzME66WDDEE9
HaBanXVXyHXTeN3UtAtbNg36WEGmOrSq2afoiwzBu0BilpkoJVjFi+62uVWq3wrDq9hd2P83j/5Z
n1SSPmsGsWN8dEdyogIK1Bn3XgSOuN+pWkQoFi37pnaey6Uro48xDOt1gLlcoj9fJydZCDu5UDrg
h5qyOpac3yy9MCaOcpdXPemtFiinKOYrfmTMmFAQSsFoegNHGKK6GZq56jwYnmUqUaXh/xaLeplo
MLsV8gRIldim9ybS+9oy753Nu/xZPUkAmF32+JHmHwnhMDQIg9fV4I9OFrS2B0SJPYHIfYjcnO0u
LtKWXJ4ntelVtlBjDmb1KfIzW8nW2kxYK9ndX4yZezDteuvcUP/g7QYTM4luKVdRh94WGx6FVuz+
tSdZun0ExBXh7iXWOlyIToXR642RbNxylmvbQiPcpKEM5i3L9dg2nzEVFPDjgKBx5XeO1rEU5MgL
TWzVsjWW7L1pj2yCy36MtmLxeCD+gM4U5v8gKeM+/qDI+PsJKsDd+iEtQ7hgH3Ijab25ncZNt2ys
5i8aRJf2h7L7Hzs/+a7e09El+q0AJ7rMXN78Xu72JDL4hA+9K2TVbaAjipNIyHZOiRfDSSDjkSab
vrOCIiZiUS80wiS/UKAj1ZKka7mXPnxj8ghkctdejlZEp9wNu9uGZ0WKrq+fLzgsIlvIBJ9WuWKr
1A/dgPQ18UnScWBRr6uSolU3T7WX3ZOAKAUFsEvO4EzRbFh0vc1shzFFA0CZRg4vxfS99GcRLD0u
h6dura5jC/V2dRAGdBjoCVjifQXeXMZwqv+jJXz4ynpnWsoHjmuT1ShCk++CLdJNw2+2/vHNjKtW
2XQQTYDtFTp2rJn4+W75mXSohZID+sYedn4k+VJmyV2hWiOLcTUeNKJfN/3jMunAP9QMjRDGQ4zQ
42zLmJT8suIy9UaZIff0J831Eg8yAfKDRBByvRw0sGBfR7K8DeHpOvJELNW12JfofqqOzUjPDavy
w5eJu6N11IwDnRNgEiJV/R3u7l3xxB9hiBxDn7BhrH4QFsAOmfybscygyw3WomWcxcZXju7sJSvV
A6W15+qDyvPWB7TXB6QSfS1RCgMNf8ypqPnHyUcT4zkwpeIqwz0AD8Seh9Insgv8xfWeM5Xma2nE
9OFbKJ9iATli5RFE+IsCJjba5W7C06rvkUYMpHmCYruodUvhLkKmYymiAVQMlHZfr0Jh8+FAwV+c
ABSf41dR/MFmAHLbReIVFcxSMF2VB+U8UvB1WKiSAO1OsXbT21EgynGJ+3mnnqw5YXRByjnQKMBA
cGqKs4p6/+8TZi+npwz7Nt3LSlTNSwRHDr0ilj2ZrmS5bzBBprSuOx8G1wJLXuH/IFi1+xsDnIYt
eIDDoF1kMrrr0MmIdKvF+m+TRlsOU3bbRHF8L9CQnfdiLx+RLNSf9dci4Bn5rBCHt43UdqX1qUar
pCL/RHVKpg3jHNVPkIn40VNTxYfNhqqrolo9ktBOkd67pVdk9mZktwOBVuvHFBpv4deJ90A72JRG
s60NpRwyFw43aX4C0IcBjHWKOuly1okwuq9fIGzl+hl54dxp34NACo2aBRSwdDvzSjan94O+69V1
UGBY7rqo8sll2Eqhugwh/8dJ+QwUmziAZd3a5TID7M1ax+3Df0jTe+cW7LYLQwSTLsH/oAI5s2o+
jPe2rWu0wUqYkfh2RWVsuOqq3lyCu3ij5AswM9FSu/4Iz+Iwpi4U/Mw8v9mnOivYsTCFUxZytDd0
K+6B8DcI0C2wkFLfpclc8gVPoiKjfYN5cajUbUVfZ8Q9bHRQ+u/Mhe5cGm2CkliTgkJGmIq1z5As
0P8LpmQR2MS+jUqA+sXVyH62ncO8sCP8BOhIHkznF7lsKShTk60Qbdt6HvzP1qRl0mk3Y/msgxo8
zkyuWoKEH9yDY0F+CQ1/510j2zdOUhk5esFnHu/Qm5dZ46fQyqZW/r5LQ3pmyrk4o6EOKtQmKwcE
IuWXO13IPOoGHa+Yw2XteFW6hKvvaVmV1Z9Ye3Z5a2ztYXyOVOJ9EtOaWroEkMWal/kyM19/kxyM
l3meHOWbrTs1ICy+w2QjNf1dZLCabXQW72+xwJgb3tSz15cgLDKK9YyvWyNM+qECfiIoeAJjRxyC
uJYco932Mb/tJIJvd9z94unj1w/nfoQLyc/nNqvvhcAiJLmF+1z4UqwFHjO2qL0FrwOULwSe8+jQ
ZBTb9Y/rVVpHne+Wwew5SEu6emt0Rv8+rIPGjuCt3nvxXSxiDJlIzt3wpfkDc0QibcBND+uNLvI6
8IANSvNlVCXZwf4IKbSVfrOHHMvN2wX5MA8qY7ukuBDKnK3hlljK4TackA1wISSJu48tOxw0a6Xd
kBHRtm8PGli+8pCVtjaAm59OHNUFqsdnV6npD+/geQR5YZ42ORqFz6StPL1Q5HnwZ8hnOnq7ZKIf
unffKKIBnqppIhyumjS63/GzWINPEqChnd55MsEtkvmK0dZ1cqse0cTMFcBunKtQZZxMEFzPcj8r
ChrfEt7F8wnh2bU3ENQVjjT8IBUUJaGOT1A11efBUkX//9LyXBUoLs5cSltuy6A/vFMJjIeA/44u
mRtXjTew4IdBUghqFLfnH3x3Rqidio1pgNd3tznBftZc5wq0z5pW8l4tfbpuR8bQLbeiiquLeAO7
NSYcxEQQJ9PWnEsddiKPz2YWOgoP82sG62cZoGrsFlnDr272E3xECzxG6NppZAgFpCVocLi0esnB
KcsTrpAmAKenTVqb5sQH4c+h/wCmSOQkM381zx5zTMSmwoIpaEiqujQj18nBZMsOxQHr8/yj6Uec
yZ1X6yoZcnrzlwkAbZA+WfZ3e0dMCMvSBMsbAoaX74Axf3zX8iozybyrPq7+TmrGZDSWJnU4zW2k
4pXUArThqjuAMoa5FkWTI2FTO4H89luBP25WH4GfE2f8jiwKs5nHsn4rvcnaQYyWnWiJFRZ5szgx
FR9qV2gmqXmD5bcLD0Gb+eiAscOczNoytbTaM5oa6BFn6yJgW2AU9BFKasHSgiqee4DAU1IG1n38
a1Z4v4uGF+ebYT/BW3BZURkkTobIsJCglP5fP6E3CAyplIBh3OH5RAtLM4qI/k48qw4Wd7uyFrZI
ObrxKQyuqqCa5zjP39UfDnVNwpYR8lyVFMBJHJ9mVgbdT2opax60m8NcFSft90NRGjASP44/f8XL
UgLfPw2O4Q6W9E2EVGHANr9e//hswLgV7Ox4vSD4eAA/Il96pYcB/0pMRALIdYPnoNXPEqHOL/xF
+BhOmfS4R05YyiRhwe9KPokSO5yOWnJoMbXjrfzT6mtAIrXxolv5m7qoo0wdA48abz2MxUwPTaHm
Nns3Ts55vQhA01aBeJO9b/g2rvcQw01kJ8Sg5daVtXFZeEP5l6eDdX566LoAp9ZB+B7FLAU3YZ/d
97iRXNNKVeKnhyC3laKQ5XFHjsaXTqxubIxj9Mr9ETT1ZepcgnmICiYMCbm7dafTgxtWiD0aFsTp
PVTbWfQ+TlzPBwvAdsdiz9PgaFbX+HpiFxEI2Z2wvdluvKSXGlmsNIjEYxpuW3o1Z//R21chC8AL
qYKZBPzRHbMKhn+aKiHAINKRSXwE220XRXI1BKa6gk5oyuSbX13TJhvmfyx8jtYiis/RQo4Umayb
9qAFZ7ZbPzJ7Ve01k1klS8/Uv4NdTUNgJsmf6KOTPMRkig7pBKnC6Z/rpZzMWDXKBpxwwpC01OFx
EV0iFXFowK1UCngxPyKoiOVU05F/jvoEcZZN9GLM/wMGtbkchlNkrE0eA17SdaTgpjPbyuGG/Qhv
ZNxnRKwjvb61U1aoHvLV8/DIiEHBMVW7YVBrc0S96QNA/0DX09hXsXtEcss1cdqh/UFfVo67cN4R
sSEcyXmk9axFK7zeWsJoxuTTO2vskh9HHwrOmOiP8JNNXHoJ5a4+o89YbwV5/5/+WvMh3wVR6iRS
Wa84Cl8ftz772K9RYAjfe1z8CpY7YYzZoODYui01YQ+G6P7CK7CcTyeuvyfH+rz5BBkiuMOU46mZ
J9vwmt32g90AGgyAslsYv2ruR6iMd+rOwh630y+ngBaCFTHhxnDmZ3hH3RU578JC679mDROLQq6T
Kzu1E8fpSRGu9Ur1r/NfVLyTI0WgD+xyi9JG/M7YMkPqPWSwbLGavXYGwGHNvsuwRVsKgfZkSDyA
93is2R0mYgKuinhQXxg4cCpxAKJy8kqeLpWvgNuTTX6Nyb3OnQ52kq0WkbnQeJvB9RjmhfxiZFdZ
Ri4b/jyFFqH0m3/jHmV01PFTGVC38RXtXgvu+gEjQIRtCrICYs0k+wyg1mlBlXOeJGN3SnMd3dS0
eLk8oHqRFN8l6G/z0B1kWKDQazcuWw2G40+aVM2gi67MaScmJYeqlw+flA3l8d841EFj2VmeHc3l
eTJrfsXY+nEyGbqd0XRpWRYhyz6tkx1pWtL5naQcPGcjgz2ay9maU8MvuZObQXk5qoahnGphBSMs
+8rUauhYeN1S2gQz4VnO7NqoaBZ5Jkg9os4JKhDQ+4g0Qrlnf/QomZXwyGTKlviSn+Ndu5mF5tbY
4gB1J36/RgjYR9wjJzon9FocCo2wwPNfVy+UADa87ADeXYQ9E+dGCMnxCJBUf9x3U97Gnu9Ch/Pr
wQRKGZ2DgcAgpENFK7vOrG9mAs7DQjje5jFjpHN/VWJQ1zr8Gx+5Nbb1Xsj+gMlztsgMDaBK/CB5
sq2GG9xg+rs6frefykV14KZhxRN+NlpHojRWAt0frVCg/vaE77MByWG4yfGVoJCUKnb/yd4HTukV
3njNbU8dDHk7TeU7GzB5LfwSVkvk1e9BWmcufvU+tcP+LzfPhdXg97aJa0ABjh4biG2Y1F0LZ1CB
wSdfUOr3I8jAN/bWhXpAdGnQTG9oZYSMNEKmIfu9Pj0lFoNNbll3GD7LrCAlsezaqpY3DVJhhqxS
QeZu8cqXwlVtMX/1f7yjZmIaTs6N1Eq66fwIq5gBI3OfRuGEwMUZLcNosjBwY4Q1r1lEv1raitfG
TvIp+Yrds2yRPrsAccfuG10rKBr2F09BoG8g+9sZbj0VOCIw1sSZ1o6h/1U5Uok0hriMAed09yCu
lElzrnsBPym3fXXtvC9YV1FCYRKFaMkA8Klam6RmzMNDkbYcIsHjCTHDH0laCQV6KYWr+kk+8bT6
cTX+NxtX7jJRAPt5fk62GCf20PwndyLOh66m7qZgBmOFG2vgzOUhtNlRMSfu5i//XptJL+kH6fwG
IsOSizDpUZLMyjYtMz2ldeX+W2SbKqu2D2x0xkeky0+Efu29N/R5kgPwPKPbWvLu2gxOkVz+f3Ad
eUgmvVWSdfmrKWXmYgNUbqLqxiD4duu7S1dKHvWfUUTflDnO3Y1BnCXbtDBWKRJlng1UL+dnwSiL
aG3s8/fzoj4PabSfJ1EfwjAN7Kzio0m3tr645SowDfc9A3BngRNyg9VuvNJOyeumtOI6AzZyRud3
6tsNIWPS04h0Vp2AfeWeJVuqbdSke8gBXGim39IP7bBhe5fKIKonGqBEoRpIbHG3imS3hvoms5xQ
91moBfS8kJU1M5Ky60e1wTy2qzFXt5PiKL5ZKGwXeuLfOwe1PuPamlubDlhnRklaBdofOBl+VLKa
dHxoj2l69GCS+njZ9kxMrq9kZa1d2t3igJSpQNYLbmBquo/yXga/YtjPmdxIiBEyP/CVIBJ6EgEx
AlSgClzaeNvYopXFHXy9+6+BEOWF2uXFuv6qhMsJ/bF1vmNMQ44cnVZfB/XVoEyP3kmvT1xMDVAL
gNvbP6o8ZEYJRZCp78EZjCw+71j1LGTakia9UHKf6Y2DK7MrXQP+2ChBC4qKnGyxglwZoR2oGtjN
VqQPOx2sNtNmCTiYkkri3geJbnp+R6hcg7aHP1+jpvdT1zoYwuKgltadSf3A7vxo13HH8gjbjL96
n3cFN7oJDdDRv1ZTgmtc3bIEFl+KxkhHdQCvKHjbrpsmxTezD+gqMPFckFvnra521mgDW3uDKo5a
1yDG2LCke+IPf0skMrGTfedoxFEAkayQYV3dlUyVTOs6mtVUvCT+l74nKHZqwXJmUscwHku0+34i
zYQJjy2eBEArfg1lnZ7KOE6SNI7y+ATAXoUpCpfseGmKAZsY0niHh66gcnJWUFyF+nSvvTw6D6Hx
Ophp5l+exRC5AJRcbp8jHeGWVoHnSwqq11WA05Uf+EdfKDGRY84S+1alpUEbW6tQbg+4cqdVqE0x
U7Ovm8oj/waQq5yn/Yq6Jca3+6WeWwDuv+RAZUrHgXnhGwdpfZ6PuUGT/rh24AFEQ+HDthaz461y
QrAJ3yrwW3MRSbm23DldoTOzlyBbBVxFAkYFSXMW8nYeNbLKmA7OGiWGaPaeNITgsySZvu76YNx/
uuP47sKZtIyK5Q4pjuJir69o4ssCGAhKoXv2UxGpiN57K5pc0OD6bOCFdgIdEM5xrrIuWUuzPnAC
iQm5wxoLrIAT2/nONqaP63TXDVJMSRPptqeslKZuhPkDUzlW19qBTleVv9D2cl+i2bFDUaChohXe
je6P7D7bja6lIsekfwZ6AVwTJeA3on3oHf6V2xUXmBmWHs7wN+cRJ+k1mdcQYNe9af26zmCKzSp7
iCYaLwfZKZiNuQuw92Pe1e7XtvWtkgWIj2thDTj4e1MydMKmzSJB/tUjS8jPDV1kdKBPQXy7BLKM
nv2BFsvLZbAlmTzWYz3KO7/U0UDqrX2sT8+CMpMrrwZpmuxM8X2GPCNfpcpd0GTWoiyDJaKIj/TT
qzzKFDuxzcCGX4zQwLhpf7KZBKRn8hIjgfz2PdQhUevu4qWRVTPdwG8H7tiCJAtLcUL4ORW5B6TO
evVjmvaPkvuV75BHgzZfE84W06vzKmMc+sHgn3YeGcpcg9ALg3+4eTcfkulmzWybFEkNvcBAwYtb
9QVLrdvkibFqUBtHwssb04UUEfaQBa7MT9ge98I7C8Xo5G6R34joYeuRjuPUyAbnnDYRWK2yoQ76
Teyl0kq0OlnCG5PXsH98YTWGbwbRNiW/IXu7NWUx06zLVPkjs9h/pGQOoqilat5TDEoKN9OjpRYG
0fWkpo1SEA5+h9rFr7IdrHgQQDp/SUvFHHAS8VvVdRpgncrfmRgMkKN5bu6VgWMVAeNsbXaxFfL6
9C0IM7iIGaBRWLKoyqxrNyBwJxaLwRAwIDae7GHPKgolsmlXXCG8p4reysagjF2jnf3XopTf4NTP
TRXvspD4D3zGLLaRle2LOCs4Mj7Hw9GX7NyCTD94RbJrBz/wFOJXDTirqJ1w1dthJ/Z7sIWZBcYs
9lFFQRd35PPKV9ImcL2CwxZGvgs9emG/sXQussSar8yrUNdc8Xtun1kbllcZiF8/ETCh6SdQLlvc
tL5aMGqDR+qgX5v9dc97U8Eb4RYOFVDmJsVQ0IyATRl1I4xvpbL7+ZlqWBE9JLaHICBweRCoTV/I
xxinxYoiGqVjrfhLv7UkSekSTGLR/V93V2HCII7l1u1+eilV26GyDEoFHaeDA6wqBr27gqL4YxXI
el3PL85dqMwTU2iWBMqxdBWrQ3EG2rkVeAPDtViiw74z1poOQl1Rp59N76zX5ph7n39Y6Hojc4FR
bj6CsYjSqG74K9Ps3q6Mn12VE0zhyxQjrI18BoKWoRO+NdxwhxpbYna/53p1uuya3e7rtonQW3b9
YR6Pe+SweDmkuADQ2LrkMOK1s8go0ntTiw9EiPjjC4zUx8FoYQ4CDgHUPC1cGBa6s6Kkf+dWb0hh
7gs19YixvPHTCObI+tc+zi8GFf6anqjlsuhxWoo/5Zb3/Aaq+zIQ+vMxhU5kfVBikzyHvZhofTG8
f1gII8YsrLp0Uvm4Lpm0jx8NqfVoH+axvbQrEZwrZhjlbub+UdUmDcEbHnOy39LbjWb3PrWtA1VK
UQkBEmpn+lP8x9cUCKtFm11LnRcwW/DbQFu/OVqRk1fEjWmH+5mRZGXspnGTMGzPWostGt7nmGml
iGkcbk3wXRQamagTq/hYT/O73oaEAF7AX63jG7gaxhznEKtoxu8x1QISObBy7cyaigg1aCa4S8IH
EG/Cks4xWYTgujL304Z9IVHt6ZgKOM7liw2lmDw/B5NPG3+zSXSqEaiezr+KtbXIzerNUULcEvDi
wnkqsQ5nqGkaxrlqA8cgcChic7Cw9+Bn4REIH8m7wgfuULIW1MMhRsROQICw1MdeFfQXwXlyBOMf
sUlpocUmvRrvl0XHkD/Q2NnauTDJoJwLihRi6bG9YMvqR94MQQ/l2c/0Pyhk9TtoPfueSNQfHwYv
CIf7Eg7FJZ4BvDhMfTUZPaYqqNsM6Nc3K5L6t0ZOjniqtXoC3X4zNA2/Bf9O9AJzckB2Dwx1FkqY
j5KNCPAh35Ah/zah2TQZvIFoHq4qYZAFO8rvU4COXgzol2R6Y28UT2OUELQ6cY+JbYvu9Xpr4KlE
brFMqe+caHejOkQTjwfZuuSOCFHaJc6QBnUH9E6riAglyrYYaSLuK+Iycmqi2S09y1KBevXTrZqG
4NYXEcAhlKCGKjVQ2uZQy4JNz6a2Kk4fUPZVp/oRARjygDuZSjZ15MSOta1ZT2mpb5OEvxQm/+XO
FuqMZMKZBVVIUIdDyD6Xkj+U2JZWDLcldd5d1ftTIhQYaz4BuJaGGaj95OrzT8cM6Inxkfzq0TVE
3yeQ8vXsDcQyyV0jctZq+u7S2dEoQ8vjtbE0Vu5RXtEpzOaO2EFpl+74eo4hj/51BK4yLHjW+q6H
/s945AME16HEB8eo7nILrHUgvtHeaa7jv6HUwIlXIONoENSoFJ6eSM8DOEOSPMep5zDSW1jB2uuu
ALyRF/GxHp8HcdYUcFflAslox1aOFm/iCV8SyvTOE/8GgMus2jhwdpFXBI3NcCZi6zRlQw0Ywk4E
yzjt+dNmgHuEVVPfky+7VUlTBdU5TNITBHqAstP7eP/INv51OtShGWi69DbIQiuHROqd7sOQ/DEt
0+D4ej/vbzaXKsJFHOoblBn1LsVVgLW0MfWL0boqw4Cp3Ju8sSHVkr9B5TBxkkooF2H/VWZgmGtg
bvip9qMrXAryGpHPfwIw+GS28zvKXcL+Mr6uVGKV8DYP9bnxAvtGXIbzi2wgzbSG1GAAtJBpN5fj
w01zvhoxgG0TTMkpaRNoEmS5QR3NlE2I+tXPqelon3RfYslHy7HT5E7MFk2i64XfWva9+n0V5yem
8AaQJLpice1HmfNDvViGrYY7elgljSNtgG19zF78OhHQFl9P4KO5brEeGDJDAv6l6DlI51Wbdgwn
jQg0Mi5NMpzvzJ1j8now4Jqltmy3ZUbPgz2JfvLCndY8oY0BA5gYmqipXxccWnl+b06Z7gK7Ie8M
yKySaAmwVtvwblwYjTU9R0qvana/pQtxb7lIJCBwJ4jAGR8z3je1hErlGbfjuXt/gqjzPP7YJVXD
P3n9SkfnWdfNfMDVv9QXMX7P+TG8urPY4/QOxVTjMQCgDHFeBtPzdJwB/3nMnNClgsvRkFKW0Ke3
xT1hdCEmgk3KmqZefA2PggNZkxIL34sd/1ypQWxL7JSGEPm6fhazpYS5F9be4ukv2cdscfZc8X1r
b/VN4Qu9XPU8YZnyU3zIioa4VcTAKGkj2CxmdWCt48LaDQfy2WnglGr5H0BTXqxtRRNU5UubQhBb
q8hJirpPQS+Ig+FwZ2GKZDX7mEstExfGRQzuII8YqWl8mB8ByEqjKVveHn8eADB2LL5tbU7oOGSN
rzTdmpy+uggZOYVh2Qzv1gTVl8cAaN12zuFVkgAfBHIW5eA+zEMFqhV5IdbDH1/5eS1kJkJ2LamF
ogaeXRuqk7ZqFmY/181kx66HUorDOiN224e1LHl3+GxdoC2KrIXEyoJKVq+LBK2lDpxAVC8TFubN
yq57mB3hHaHf8wNvaWmw31M82EtuqcN6Vr+C+NLp2A5PmlOZ4/WKwgEWCUqFexXJ2Wzk0Cd+nYM6
jQYqO+3StkS1yXiOHPuhVnX1aqikQ3hS+gdDMeZr3zf6gsmOxouvrwXbhoBiXZzk2QEzrzEsiqgn
owKf4uMYLA1RFCA1dhMGxqfLVV91XmdwtaHnZ3jHr/p3Wo0wNdVxaY4OyAiouwYNVIYpUuvkukoS
08PzTmwCL5bz3MrgPFiHAPy9W6mJiQ2c/3s+UTV/gpfLKkPzWDGhbTGpanrZCAWTW51NoArRPLzD
jYJ7JJJZqKcCQjtJsxprvOrk0Y6+lUX6nCnm8+GSkhi5tiefCVnfLVauichBVR7ixQeWyUqXxrU4
5J0yi8aLVzmdPpQqAfJ4c9Ee7JDIMIILF24D8MQM7626g300o4Dk8aofvXF7TZ6EQjxcHtSHg3pz
y/IkB3e92qFdj3fxl1DC2drVxxvBz05Y7dck8fHmFqUtSKC6AqHMOLS1LDpQEbKm4ICEHrgZ4LQf
u7czdYjX9YffHHxlVaq/RcNgNkWKd3x8vus5GyEe1yXs2kxwxbveLd+lXxkxKltl6c3W7mQFl3Is
hAYGh5V3QHjE7Bil6k7reLtf0E+MFyDyyLm6btWlZ1pIGcbXgGchKUK3d3ZEgYyweS4ivoSaLyHC
wO1ORb1j7J4FJ86e+GvIYtNiZ2Fjz7o+BnokDxb7O+8VtTSEthYU9EPmPuh4CJzVdL8h9x8C9ISS
/8JkWWFvdOtLR3RJtw+8vxI7Vr3hUiCjXk4FZiL0EYDQxKPdohkFqcy9TSVwNejVQnd5Kp/mhMRW
6l9tTCFVeQzDqGD6cSL0tC/rPGs7RkuulaOUCeXzO8Zv3TykpljnZmsUCNylEEC4foMGuNxq+pm6
FyQZD3+Qux2v65V2m7/XaTetaUHUr2SqsSZ17TRz6Fn2DHEFCCOAFjrTz4hE1qKLv2g1a12/kLrL
g5vtuhXVwhyKb7cNWPGKmLWi9TkTzXal73X3YxfZkAoN/iVg7scYJqqUZbPW7uYP9FgKur/ehB71
/SzBZrEc50x0H8GPML9EAIidFR3unyvJOEmr53vLHxZdWT14tXTFwZL9N/JzNoEuXSwmbMBjFVyi
csRtOp9/leVSHyMuhlKZn9A/DQl5WhCF9VmcNi6Mgyrp4yYwaqbEXhjl2olb2K7mCAUUf5iafSqs
rFDP4T2AELDJU4KbXNhppiD4ucASzX31etXyiWLKR6ZXyspISBIkdyy42qvSCVOB2m1bfulOM5W9
cBN2eqZZ1dNc0tywszs0dEM9SY9zJ1XB4Qo94pAy9ayoFfjIAzwlj9SYQHVAr0PBkkk1tbSu5Z7M
ioYGQBNHvC6sq+9fgmJW1MMDNrC3hwZX+kv7+6G66XX81UmHG+o3xlbBLnoct+YNQQYpGOVXBLr6
QEyTkaJys3UM1rumIJSlSmq+rL+qhy6NFjKcZHYk50eYAGXQidsrUQi6MvHitNAiHHEoetcm6zjT
E+/fi6GIFpEwZWpuSe/w1W167IVyxwlgQDG9TWS16qGnIAg0DI2IUAqO4ipOu4bdrPcWkszLN78S
xGU/GPhEjN0Yp4ui81kuF5r/Qb0mbMKBvr43WJ+s0fV4OWJj7/TDZPXYwciYMR3GbBbXs8kiPTR1
EAoWUnV0p5Jxn3xtGD2SIS/KqWPja2kZGRfXjQLKVb1T12eI7T/Y0h1aI8yv5rJib4TJeNWFbHvW
CfHDs+fVK5uAgYL1zh2KyiyKFdjfkyqbtfGUt8p1sL8XyYBMdm4wJpmO2sdBLu1vKLgzoWZKV28X
AJIY3euaEHriLX+Xk6RHr7k/PLYO+Uv2hwkGMjphrK5L7T6/No9RtESVglFlhhIRvXGmQn/ehorG
nfF6VZiySjR0Bcsz8nZykDz2goxc2CUtqknvJO7fQAdg5LSzgXsFyJ66SkWb64dUfHgJghhV5GZt
L9dt94rGOFPrdi/Kn/bOc+CNKO9GUyWBPeK2Ambvu/qYRJIZFva1QFMGRyrF0js0FRbd/rJKfuWS
uo7H5X2gDjycF7yct4QmpzrHprL4SSMATdQYTH+A7BWS1g+ADtfol94T3UzGOkHTjlvLdbgYDMIO
1uTCQt2kawaHpXhNCjxbFE44gp5K4RPB1uWlbNQo/c+umGJBYKkcsh1oCZShHukzapwT5oQByilG
zeCYZ+5A0pyyxznc4a7+MsxAYt+ORm7ftH9v1+xcXZ6W1L6zFr1FYNAfISkqXsadVdmztzZnbE/u
HHCorij46hMZ+YZgzOmMHAIGwZqfxzmvEwW48Nq+FemCl3UoNQ4iufEgRfiFIqqCnT4M0/J+OfhF
8dkm0O0eFoTgwpIoPTIW/bTLuIKl/7F/jeU7UaBWCGiqPkapCA3vgkiipexrYorIoyuDmcDsD4l9
Mn4tF70Xxk06V54cxgMtyVgOM4U0pIrKGYosUP3IQJCOl3tvC4wk6XV/H80g83MBW6C+ouX7IAdn
YOGaTvC45GRvre+znnnEahSGe4q0x+fP/bDfdCoNLIF2FNKPGV/j4IUBpuUiA6Ks1CI4owbVLTIu
VLXz/tbDx9urJ8CjBAbHrzl+MD5xFtc33S+IFDJ+d0n/hetbAtz9Q89dP7e6Ug9xCTKcasmh4mXh
ylYegA/pkyEVKuoF8UyoRZS0JMQhx7hgC09XJA8Ik6pcUgTCHcB55arSTCJEF2v/vR0AQL/cD8TY
jq1wScro/gEGwscqcJwwrXA1Yk2wP61QPXgeS+kQjZhBFlaQaHPCJWcM4bySWTZrM7YJZ0rGNW33
m6ZKCv00tYdhrABtHuq5saZIgogaCZh8Pc3EBc5zRBczsGhnXgJFutkay9Xse4OUDWochcnEzcFM
8ozmrCTrV+dTHH9clyQW+8ROFSBOr9YkLGQlDzBVJtbO2jtxb7D3aJmLiBEVdjmlGkukJzOVVUnc
3AgEeXYaVet/XQUSiWdPEMAkztvMSBt3T+iWhn26uKKqsyigii9urk5l9xWtRmamiuGRRqEnIC0x
+/sRDwDYB9jpxpORFJajmxu5ZDqdCdho3PJ0OAPMBVpCuOlsTMEih9X0e94+N4G/s1SHg9VqYvZp
9S3qzh5+8K4/HV1ZF8FwOLu197qj0mXrlbQ6TETBHu0VPIQ7icVC3DJFyc+4ByRaS2u5z+zZ3KX9
plWvjswumzElwuHM/kD15mU/DM6xO+q/IEoBVhG3NOfuPJRCWF2CByz8KmZj/2Pd9TKhLvPptYky
lZQnQ2TsAMT+Bvs5o5Sqx9WE8C69IOxZndPEYRKb1Bs5bMKyNnXbdaYyLfYdNoo/G9ih6aY1HUoF
BNC+eHkriUX18qFU+jAGna9+OIm832jqe9XdEwGT+eNillekHYSBCnfH1TObsEOrWkMCO1cZuIsF
sgcMaliklsgU83NBY5gy7SaXjLzGEDY1826VfJwQ8Ufcum8RZymGPRJeyGxmV5usVsS9T0BU8QD/
3m/U1sZstIDGkpq0AEdHiyFFvCqFsbTOV7XKDeXlK86gnA7a4D2FYK+ti42mvY1raeig0Zqdd4Gt
ZJm+VJZ1DaAPfM/NRf+n8i2mYatQDt63QX1ram6Y2+PAHO0cPwmY7MR7jZp+R5PaymVMZjaS/0x1
6l1sM8YHmqoIlnQah/cPhvU3XA/D7K817xoQI/hSHPaQcAI5pfxVBeWjw+3JWPrO9mrQ6u2/0Dxs
hhEmzP+e8rXpEmkD2iCd30dpmh4FcfWmERBWw2EefQT1B6gSNBWwQHVVMVqtZt1PJntS4GASHtGb
01ILsMejisoSwUcoNDW0tUjEaJBlnXdLZsuIH9CBgijFYospQzIKjaimGWNn2uneB7CCiMpe7Sjy
e5bqGOvBygt10c7CXf91ndHFumOJrxDZHOtAW89KgCkYyco6sckdVe+iX23qwikZPikqY2timx4x
zdeObiq+LqGGY9WNUGFYMc5ZTGbFsIBbnoWhezwVxsTNvZVPSj8TsLZvUMR+b2xmp/LBeBpKuZ+P
qJFfCLVZgxqDpa+crVTl7vzwqbTee3/OPMQa3Hlv5wvUy66WMgRVjIH0xKMS3Rd+83YxaBWfScoo
ndsRtk71Jl3NTJoIGlvVkG38iB6X+DUZxEMjVVhfYWQIKaC+h1ZRCjeG58qthevjDrfrRyY1eyqp
Sj4AvtT0WrwaOXRn8x1iP4aMgVRK/AzN7CIZHls/GgCLy3e8BlmZlljNZGEFzhPKGPsbUyzOxyXQ
9+oTug7Xou7dXNuVaVUdPkgpho4ZSfOfsCFBC4/A26EVTYGerPYpdu19rQ2sUg07RAK3jImRigz0
WXlgLyN7oy4qT2pGgSKyeqGZrIDUIVLk1prKlxqBDU+PvBc2HrBilpPX+uKQ8UOJybI0uofh08+P
JWGxowNFbZVpUSUfmSo88oS9rYbYfiXFE1UrO8WkOKnp19RI0koGEBp8eNRdGAPp7voDYKaioCwO
vaA+pnTss5xa657xJ1FbRf7TojZCT/hiy6NZATAjAaF1J0yt23FWWU1XiWzhZCJJ5w3xFIc0QqPk
O67zXset5WZTL6BlnlCmZVpgNE1PuXWhOpugsJU1kjgEYKjLxNGzekHxEJ8vVXnM7heApKDxNwT5
2ywtuqaZp6ycAPnmM/27zvucd+riencXxcB1bvU82yUh8JsnUz1l9MhXxEXS/yh3x1FNm1g5mP+S
GJWazXZamEVbjIJURqT9bJvJ6lYUkGX5V/k285iR3q8VDnoMcwIOVSz4R4fYFCEAYddzD+HYTGmj
85Fkb+owTKIqYb9qnT0w/1MnI9PZHK6iYfqh2UYZrwHl1/QPTbtUF8Qbg0+p42TVKSbfgTfcJr6Z
ni9J0pXGP1IE0Pxou1cMYUfokQPHHCLGLCkYRHktflbr+MU5xxzSXhXfB7XOd4LG40HCo3aC5H4d
GcUGQbTdHPD65ONarofPopFiKFV/QCPxh1GhM2EayhUogEOC8e1hiurVGy5FRTjfgfhL9oDtvyyL
HxDYcosTnUAJF0FinkRJ67psXYOKw8E41pjShcQC/1rewNWhBwjEFOfBFT0iBCI04JRDAiKVUY2E
8ArTzg7Fe+hhS5fcX1/j6UmNzm9KTIXhvFMxxpfwRa9LlK8y7AGxq3QzlfurIo09iGhGStFmmrJ+
LFlZWXvoA1P5pgVtFDBaJrfz8booF/5yhs815fzjuDVe0rVVRfXISET4i3eadTsGlaa7w+2H/2Wa
86o2USSTMU+Tm5WA2ZCYo9XmBB+TR1mpEVLKMtwMzss+ajf/8QHNBUgNYHa/VYqXrR7skFWvmZQJ
QeA9st5lPKOxaAI+BuwlItuUqXddAyo7RRSM5MbAONvqWc05CGRju7/U5mghLLt5329ZeRunAk43
v1GbrX6FoXS4jkE0ICXeCLBczYzhEQDj3MeJqH37kh5D+0Tssj8zLDC4DX+/EdhDkHj/hA6/ynrp
2kSM/vw6wAu6EmtCCgibThRW/t1iG2UqxjE6SZEH9MWMEUN15Hzcf3BpobyutEnfgn6RUV/inZRH
cVCInhS5zHnFBZos0UBijR4dJjYmgF5oozGPfxohGBh9ouGXJpSK13W3ElsDcPrflnm74FBc3FTp
BjcBCvkDFpWIejKB6HDjaF9XLMtljycZQqFtP7lzX3gMNOY8Mx7OTjI2EnCJqTqB96reqCJGVnpT
qKnXtOHp/akPpSi4WOqVwlkfNUIGzWTe9717c167nBqmp7HUOTTCALnZzP1s32O74zDjvJUI6+6z
wAOJqMQMeGQXqQvdavx15wJl+xpUqmJtBNCJ2nwHQdYVyG/jECBpk8GhmGp+vxi++TsN52hmZbAA
z/7ZSD9nr3NLDTLC4EXIAy7giofzsIgx8fqj6zCHTsZHOrAFMv9Po87ECV5VArFnJNK8AwLNoeRt
GuGftqVjKI//sJfqsI5/GLzbm0DafmaxWZuK11lPi+Y/lzAKZ5w+Hj4Zw4Eb/FOoDMy9G4NWKqqx
6HoPY7YkXfzCy7RGHwK6ATfPqS+Ju3seVSuwihkxFGm7+2COl/sSyBJDvTTFxObA+NRgCnkqkv8P
D1dyW1ELfkUHWCY5ucr9cjjqjHlgsgL1yE1rexVFRYwjzrAI41luZRNb9jYZ2OLSxTpzqGXTfIbh
xwE0553VeO2prtGtGFhBHbPiz+vSchS3c9Etu5Qj0i4CkWw6s9iwfnGyakNzX17dLnzZFxeiRA3j
Txfu2Mt0jCkh8lzbdv3qCb/AvseU6DAC+ToWCSmPEHHNm8nf0GebNK8P8hUAnXOtigxonbP+usJm
5HcfA36po9avDRTGpT0bEJ99YX9ugDhVksuxkAJxn+ZqwR0ma/pJ90T6wXNBCkTB7BVQ4/VAwsFh
v5EM4X5uwI/SValeXvljs+yPeIz+1dpe50CX30Pys+VY9jWc7AkPZlOVGt/Kn+L0nWN9x7IPxPis
cit6j0dyqTmICT+iQkKgBZS1+Y1goHHNLovRSPjYGJsPrHLqumvmS2kNE7pX6ZTxBms6Y88io8YP
JfU1JlV+TJ8NymhMLuhJFPO4ihV+aw1Z8SWCAA9sGN3l0Sm2Gk/26+vQ/WzMmLGIyMbWro6xJIvg
QyxV0z69xPYSsxRh39QFa0woVBhOCsTPOdLjYIiy7YccZaS0bkbCIrJUNsFiEHU40GYWsUZyrZRD
tR7yYbUeMOtlevxJCkqCTyS3YqMse+JnLEm0gFIyjUTjvdmMbvyGZ84IERRcefktgdslsKNeBvFQ
VHSmk425NoxMycCYijl+KRazjYnxYAZfff4r1QDtcSKvLpDOwJ4PHbOZY/m3SKXruEzLAARdyL5o
bVuyC+Uge4Xjlt7NB5F4LLaq6YnVjxhVMiwEf8eqTgj2MXMB9HBEj9VBOnGY72tIfSahwLX3OhOF
L9ZbkjQcad4oJXdmELWew1vGHxeZ1M0RFuoPT/zQ6bS5X8rXmOHUaQ3eIk5sGlNyCug8yDkDOWtP
WApyGwXXV0AimBPPZetzudr8T4ueyrQEmeFAJtpt+/xu9f74WFGkoGbjQomYO8N4uWk6XqrB4Xle
T5XzZRFZ+NJ1RsEcu94SAvcJr5Z4beV+cA8nGTpOSnGpOoq0DVejykvqqsYXegZh+RvFnFmf1dKM
4mrgr9QvOciuX0UN2GB4yne735KcqQspXVCWicCcJOifVVrS0uAnRRiE4uj8pxyzmhL7hN+mbOif
+FfjwJHeOy0QND9bm7ZvWAZumCSQ4zxR7nois1GMxOjAOhoiAo4aeAadCVYhpwBWaL3VcEiFWeZN
0pEjSKjrr8XOtjS6SgwDSJr0qNKspW96+iHrNYhigAjy5+YSx/hcHoIoTbrReFx2DbGbkMqk+1yG
Ys2vChIrqh9QBDghc1bhgoPpxKsxaUlo5Hvfm/f0dOdn701xoQqPB3u/8ogKM4ha+RY7/4JrWiIC
jY7F/wP9VRLKTnkqmzsxrtmCfYOqC9atgkUnPP7d0ABR7xKPil8qOsB3YfHVWCgRwA7WJOxRvesk
BL5Nk+FdbDo7uYZznqd9xZkzO5s4bqr4aEZcSDKOzX4+W18CGdF5XD9kP+5I3EW/LN5SGcY46f/z
MKw3yJjnixtsAOCb9nxC3lUIdAcyGEFEPb6T/5kTAvYDnp7QfwnHa7if+pMFmfOrs278DDOw+a7M
rX1MqSbgfmtT/idpwck/7qqjhsqG9xA0onDiuD1EtLZma9soM72QrlHJb3e2fbYceN67JkPrkGTZ
Ldc7tTKx7/+feRs6zaCF31gm53b3XnoEPvNKlsBWMmkIx5IH3rYW0AOsNouM30xFxc4Pj95X0hYP
fWOqRUGEWgW0zese59aHuNnFW6WSHF+uTTejlxy4r1ywtv8PTXvm26fHbiwxyLLmX2ofyg7Sip68
K6egkAZ0cl4GSEKUhN9eQNIfXAtQSwKXvoWgnN/aehYdW5LuHRMlQdm0fWqegFtR35Co/fbWP+G6
rrnIgM0aaJDonPgYE6q5C+s1lCR2EJOT+XIbrFwuOPelVgNtYDvOsvCD1zY2ODiIPQFiCPRYA5n+
2tW0xVxJOdxP2nI+Yxi/aZ/YengOZG/8BJb6WNgocN8PAap1xms+Og72G1VPRCBKikPoeZ6eOK6m
wVLY5Hc07UIrPV81/WBQS0lKUwJruxdzs/8g4078xGDBCCWtH99jCA8RY8JVpg7AakqF4+bUxlK+
9Ond9bj+LKwo+bq6D4IHl+UBoIYGTxB0YnJssV/FL7tEghy5jmm2O9Ydtzdzb13Y9vaX9YFrkM1W
ja4wp/ZpsLsjdxYRpAfFa0o2UP+UA72PznLNWCMD+jpDMRH1g5WuupjL+LWwKYs5ZIa3uurm/QFL
wVPp7PAa5Cw27hmTcyD8oKRWwAKRubihsA02fM/rL225ph5zxqpZK43a22BhFTppfYpbHz5GXLBE
xAqMHDLgUA4nrHaKyC7kc3naMBuy0goGCcgVslWKVa6AQ/2jRa4koFuk118CMe7kuIxeNvYEGveo
YgI=
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
