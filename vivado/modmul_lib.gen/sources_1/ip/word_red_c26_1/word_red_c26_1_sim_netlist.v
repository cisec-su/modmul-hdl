// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Sep  4 14:39:41 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim -rename_top word_red_c26_1 -prefix
//               word_red_c26_1_ word_red_c26_1_asyncl0_sim_netlist.v
// Design      : word_red_c26_1_asyncl0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "word_red_c26_1_asyncl0,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module word_red_c26_1
   (CLK,
    PCIN,
    ACIN,
    B,
    C,
    ACOUT,
    PCOUT,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcin_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME pcin_intf, LAYERED_METADATA undef" *) input [47:0]PCIN;
  (* x_interface_info = "xilinx.com:signal:data:1.0 acin_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME acin_intf, LAYERED_METADATA undef" *) input [29:0]ACIN;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [47:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 acout_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME acout_intf, LAYERED_METADATA undef" *) output [29:0]ACOUT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcout_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME pcout_intf, LAYERED_METADATA undef" *) output [47:0]PCOUT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [47:0]P;

  wire [29:0]ACIN;
  wire [29:0]ACOUT;
  wire [17:0]B;
  wire [47:0]C;
  wire CLK;
  wire [47:0]P;
  wire [47:0]PCIN;
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
  (* C_HAS_A = "0" *) 
  (* C_HAS_ACIN = "1" *) 
  (* C_HAS_ACOUT = "1" *) 
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
  (* C_HAS_PCIN = "1" *) 
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
  (* C_OPMODES = "000000011101010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000001000001100011100011000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  word_red_c26_1_dsp_macro_v1_0_3 U0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN(ACIN),
        .ACOUT(ACOUT),
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
        .PCIN(PCIN),
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
PuKDmMv4V4gdxJl8U7jI11UGFO3y17OySZl0Y9FBAKPNpxtEnCqbVD25PIpNLEHT3YGrwwqqBs8F
oTf6/mn+64wDtznoLGxmWx3A+q85nQIYKS0gocayRmjlAfUWM5F/ZX1LWcpwBCIuqxhtnCnGjF9T
RKwUVNYEf3dqeP2hqnQvcnAfCxGIUhCoftcYT83Tst9Bzi7k5DeqUK1nIM+yAbwkcagGyJtsaMdq
pgdiMQRDoh+YzPbrXu/UpQpBTd1pOE1HnwC08UfCYYkSGMpSI/lX+uHn6GvPOhGwiUXxnKx82BTL
VLurphGUo1EkdoSlPueLehK+ebZ0994eEzSs7g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mh7sBCTnj57Skj0N94uoY4+bVCLyVHDn34pVkJdBWxklC7nBNvCFf4eDKJJVWOoi/0TdtwPZXyM5
EKOsW57BPlxg2cCzOKmRLVsmRcExxSYNiyzC1kR/jELnGrRyu0dyjKlCWPXD7qXxT6xijAq+kS3U
547cGdIrcbndeXRMaUeC3xHQfLco3VEnvofNviNLj1IYoSuGfmyf0uTkicGkQs+MYkyGYvPBuIsJ
nZr7Hke6K+Ot/O1migZF8vjaHDiUmE39TuQ7UlUd08uz21PDsDz6Z1nFOl+J2mSjDFTRetW6gpLj
L114HkxYuAbJ2oy8IX6WZf63QgvPouMMn+DP0A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 41712)
`pragma protect data_block
Ubu6UrP9+zXIXn/ikGIcz6qPTCGaGKSiq7XdvlAw67y4B4kbVZkSNnrbg8yJk/uX8s8U8UMQUVAw
g9v8pgmqu7kF+fFZORmM92XmVLEBSJZ96gU5jDEF0VdHTDnulo9eq7JB+V/4k30GX8ql+H6rDFwV
x2qI7NZ04mhc9oIfXMakBnubDZMMF6mNy0lVbsOYCEQRj+aAj0aiQHdog/jqbfXQ7w01KiOU0RCQ
ubBjInvyf3ORuhGQUB+B8jIvHj5QF3SjXR6Zh5Zm/7XHeJhhR4NCreiISv/ARAQNby7xSEHIF1EX
/jfjie4RJ7Q/QrtXUu+ViMh5QhVkv1L3+ggHib2Yp4W4DuKHlyrW6+4vEY25X4ILLrWrJ0eAimUI
0qg1SVCdgLySeyGeUlakxdlER/ivBx+HoH7bcqCX4wx3VSIcDWEDt3gouYy6XAadUPwSNuXQjCHg
rb2Y0UbHYHTvh2FP6wtycViZa41M1HXnaTaiK3nuceHYlBupfDO+/9n2QrtpEu7tQVChesebXYC9
wx+b1ks2ukZK0ob2uzqmCi2JO6CdUHtYbupSkfJNJV/DX51IzYZNPNlMWagUkFJZg3Zb07wYEPCl
D4S9crx55OSF31A5ZBak/Z2ojsTkF5BkTkDgNtTvU0ipxPxGaQXUerGVKfvXdCPHJghWDUtRzb81
KFyUTgjYb1iFmuIac5EPgmevHNGQJ+AMc3d85e96dcwfWuBMFvIPsWD84CiKLv1aqYtPgVXaM5BM
jwyQJuEomJeeWbKmsHQ74imVjskBIrNql3HPrFSDgt4z4E55enpxH3XxzP7RzVjAim0XD5weAkGB
7IQridmfL20tB39y6z7AVI9xsAF7/8XdEVP1wi8vXjPLl8x7gnsYe/yr0mYXe5H8hSnjjOiQShN7
PB/5s4WotSqrY6rv3SljXzYCfdc3RN/ylBB+vKPXUODp4T90fEOlc66QcI6lBiYC0CrSGqWB7lnM
Ww04vbDbZ1aC/i767sWL20vopXLbSUR9ihng2fbCV9DelSd/WYaEGqJq8HKAb0laHlh0C9tjZ48a
rqReT0nd9bnorg5p25b7WnQvUZg+SZHwxc6TXmQKEWQzsoCoPMN9VD04ETAVaxwo52bcgRPghCNB
A35QnLCzkA8Vi8BD6I6IL2iCAGUQ8UShOh6eRVAtDgZjmSCOdXTpJL7vedYEsMAQ7CAjFSE1i8rK
eZBxWBVAmwKt8h1hpQpdpTJXFjRTYu69MvGj+6IgUEVD08a42i0jWcHDNTOsqpXTvj88R22ppcOr
vFXZO2x4is76cSe4QstKwiDeyyJYzauaZRz32Qoh8qRXzQN8hfTGre9d8fsvP94jnH26QkO1Q13X
1vA2Yq6F/ltMghf2UqwO6xS3JVSlGg93xtsgq1+WmIA9bCl1aG8Kehg1PhzVJ+Pvh7mS+9kEokw3
7IB1Xin60lHGUhMABc2gN2PfY1HsX9ZoBNoUzzXoLOPbl0KXVNPFqigrqVpQJ515Xs0QHIUWX1Fu
Rvu3iXfdCj2Q9bAG8ufJXu9DfKEqvGYI97UZnYbo7YCcESB/Kv2Mb8P0oKwZjevkYuATDrEyN9PL
iGkkAu/N829MKZ+xzDST//fB8Z7ork+wDz2EObQJDPJtnnsB2Ib1i8wgNRVKIW2pvZKxmVjTuB6T
PYKQcmA0So+bBV8vy/OARj/7zJE5j9gje8WVgvDB8psAXO4c09vxq0ObX8oJ7NWtcS4N5wLutg7Q
OT1g50F7JLIqEZUz/ZjGM6Ht61jgVsL8c2KLLiAdMfBniB7XRXsccH4YrP4d9A9rfjdxlBPy8nmV
SnXXCmvR9FQDGkmVTVdo4aUqAv9W+CRc5pI6HnlW5UzYKx7YCdjQ6Gxq97ZHA0MaYkHbVyihVxrh
f8IdzOkaqiN0GhldoqPhQWRdZvDaeC/kN4xBnhPcpxB8KvYLGcu91Q7gVemtvFrYfPWOEAH4v0vg
XRmitvu+G1l0eO6q262DVF+hv/Le8yYJu4EY/JzYExCVhqzvrZ0+ERsBqE+P+281Cpz4kU0I6H3W
/lP/1Obgajpb4OHu1j33v5LR2jIcTufi5ItYQW+araiSJazwoypwJdakEUFzUgMn/yCPXbKSscBl
cYWOMF6QBZaYbu00jjjwC+1IU5gqTWQA1Dv03bpgGPikQzU3TLYi2v2e38oEROTXSyNRVhvtOYgs
o4kwYuUxZBkWIM8iF1BjKLlJo2caEIy3TCgHKO/IS1oNiGcyEQsmGQFCYg8whlfZ0NS4jyH3LUOu
L+rQiTebf7ASBsL8TF+pKJQyLrEbhhJVK7hhs6eWaVzIYQTPH3uv73zfSwv0s99JuIHelUCpYbAj
fVi2+J7ZYrYOhUgkAYduk98SfTfMjIbLciQZnaY4xuMAMz+aWkVleZPOyLeamFkJQdLQQNBTxncC
INXyCAiG8rxJc3D5bATYKUGganAgJuse9U5ay7aKwbohrU4UoHMTRGh40HaOlOEc7LNhtVc/tVm+
V8X0EdFyF7b7YTbpq8i0CXpUPOFB20M9Lca3hfuKvAjTf4bXFnmkUSsCu/xhIPevinSLFb7IZyDI
pOM1fZrflQclEIpV/pPlUJXoTP2tgCaA08cugoiI3fzoko880V5WNEgEBRDZbAZ6R92Zse6zYBFg
U+rqV5t+QIYa4UbHygpeWD1ElUSaVGSmb8kokl1rN4W/5Ypt/SQnH9sczUuFGP1CHeEdQT9baMyQ
AFzGlTjKOQfK5DG2Vqps523mvgHQOMt3OJQKJXGdntUH2mPgZCWloRvFcoS+axFRKiBk4phc+fkw
YurlRzrAoSj/+lZglvONco1xwKrV/JIYdEkDDODPRUbpIlprdhrvUx21GfYiyRfCEe6NohQNQV/f
zzjr26tRYK9kJD5vdKHEzjY0LNgiXYO55M2xdw4dSBrJTuuX4DF6TXKMl9g49uREaGdgXqKgGhxe
oPVeUXUmQoOH17OdOFHubc/1R4U6ZKulD1WAS84KY2H8YPjkBr2pKAbXEIkks+NZH3sxnVPXrPAx
b4tDyjhpV0JMpqY3M/9PR3Q3A8t+JAy3yCU3Xv7me0fUSRvBcdL5qt9tTwDTcTMmaCfzCxB8E/MR
yOnJQaS3vdsPLRTiEnNMUmOFA8Wu5STaAiajMozVYdcF9u2nWKvXf5VYSKRgV2OZm95eS0d0WMsN
NNE5f5dfk2jH9OGLxmBO0IzruuKo/4gUOvpre1a+Q8S2b5xN11Gsdij6lzhSlRu7hTHPQNzvki+1
wCpG36nhWIpulO3lX53t54YQo4PWuMCuwj78kNe5ELrFRSd7EW7Mmh7CkSbfrjg5sN7HKl1agBjc
ZAeTyglktz2oJpi2gSGV2DqD3J3cGibrrKF0QL1+Iqq1sEQ92IOkSzbgQlKmn2+qYpQeo65vYEnE
D5iLNvNSQXT0GGfmTmaOZqHOHe1GM+5NYf6an2/TzEyg8DmtRh3KLwtrHD6/ICU7JgfkX52OGdh2
ggzopTX3NyFjL7CBs9SXUQTOfnKn04TdzSfLNTT+wHjH5VcboVH+R8HBxpdqX7LMRbrHsxkjPI6g
EWbb0OXtq9L2t38EJMLUrkWmkXQQtn366otTLbG2oRXMp34t68gOfQVgp9Pq8P3GKptMMoEEmAy1
TJMyRvKc66mUVtLqtPyzFeLlEvI9vLS4tJfL3T/W2YCkq9bywcDc6aRwFLL4HiTg0ThP6yU3+p8q
dgr1vNuOHxD7YfygDeRGmDD3CQPqtoR7Ct24GKgJEAp0gFEcCwS0SpkAod0MHXP1jk0s8xv/FOxW
YNfBQrnQtAPkUY0W02Kufyjp3fj9I5KOWc3vsPmdDBJKS/PQxnXKuVGjeAoSv1TgTFIqH4nyAcV+
2i8QH9rSHLOo7URFGRJIxg+O69emb9N5ZlQZAduW7JPcBGASShyA0a7+Dk97WmiJOs47DijWl+Qb
S69yhcJymKTAxEuJlfhMJyBESSF6c964rmkaiK2KFXR5GBvIsafTLwrLaKX0xW5zKa9r6O+3KFtL
e4b4c0L8saTJGKt9uC+Jqvj7TqLKStr76qJIJKJP2ZBJ44ZLaNS/VqS98Jxzs9a6ElIwEejf3LT+
f49wONyE2wrTrZdKEcda/TduaQlr6FCkt60Mt9evDsei/lC/r1Jt2uRDSHZN+xpry1PVBT3tg7uh
heAe95gNQQYF9B/4kX9uX48jGvG09a/gfgihB+88cHYsat/o3j+hUmYS5jtb6LPHUBvD7hz2BjK6
k3wpx7tY3PMpGZo9MbtAKx24LxPq9zUs+GCF3nV0RnuPRKFmi5O3GCYBhZZoIb6JEEenQv0ZNnVE
lCm+0PyLG5GrNVRBUo+qx7Ts4/83QTxYyS6Z92N5DjZUZoyn0i8Vb2CwBSW6vF+IzIxSubZJAANT
FCXqJGRCpEs+pbQhSAMpac2rrg7VvacWdKpv3JctFAJslzFjvkoTukZlhH8fYNlite+uIDOb8NwM
xZgb2AKhC4fC53+GekV//3jeP2rTJ8hKwFZhwjwQKK53wl25RfWxKbX7RTroR+0RyjXfLt9GVg22
Zbdx2OJuU6SnisQ5UTAPflsdFI0UQBWmSrpoobCDUy4FxzMl6VpQyr+kHn8jKy4s2/ByrTeji42m
BrZJtDyM+zz6Zw0+PITJ7XazoG7Q9QE3YLQ+Ss4HkCqhGUc8bxHeOihUHWvuH7RbRw0Tj9q34bf4
afWXf10LQM+E4S0tIMq9xLazvhZtFAChxT36IesDyyfh/t8Tyxd7QCDg+r4utlkWHEd/UYaMqM3O
xoO/ygaXbVt3VrVPltqzcOh97UijFoJXOSugYDPZo05ulJTQB3Z/KQUUWGEDLyNRy1Mi5MCSrRYo
XfVm+nWZqvH2YlprHDGoWvmU5SaRv0IuGCYO8jDM3wdjbxxbpcMVFbDtWkYyDbi2r7QYa1d6DDzk
y6Xm2lM0r3tQskt2ozZKdFsSwg77VEtv0ZJA8X1J6XskIwJxNm5LqQUbjkjld0/H6P/AhaZI3UHR
x8t0OXtytInxPIvJuLX4y1N4tdcDg8IA/lYrZtjg1BMCEKj12krkszW4phctysN3McJrhaLGdaHh
BStGYwwLd/170Itq0kW+vQB+IKK0nxE9FrPGShehlktAij8W6EKne8ikV2PpDELwBYQig2yk/qxf
DOhy0TFycJDEXNuob3VMGAVfgnvlrl0ej7NpSObfmE1xusdzpaPIhlyDNTa5Qr03uAmHEuYrUURs
MI8j+apyXKJUnIgTqJaXWOOW36/j1EGGX+kqcY7WG/RwoGWTG+In9MzGWGR8mwYGPktMPKVUVgZp
wnYbEP0BAnNgAXL8NFj1rrvOslFSF/D7BDszRppxA4h7RwpHzXaCzOcCLlmUTbc4dpImmQGqwV4R
0ynyU5oMRjH5hrSXz2N+HMtl3k7jeTjzxT3aLoyaqaXF1arSPAK5Q6xVBmYmBufqFqV5PScU5r6w
7KYzDfs7xa9ZnLctQ7SHs+3G4mkS319PyQH+wB/SXNc2mjHA0reylcxD7unLuC9g7rnXrjcsx4Uw
00MwpMLf8DjUwRr6srvY2kgdxkHhkbirb6o9VJk/KvnCvwz0qwR0/fPGSg59tybNKti0RXS8cFWL
2Ly0rt2c/TFRX3W6QZvxazw6q4lxavGVT66UFmfuX8V7mBs7y5bbG0vlzB8eatGbm1goAwaVpP3L
5mWMvkhS6Z1+YrgTmldO35USTM6WHWrTr5zkni5Lmf9hR4Dx6uNdKzdRaIcfJhoc0UMXd9NOecPo
a7Rvw2cfr6MiSNk79zYlC5En0g00MuWSmsnWeucx2azt8xL1+aFYgAMNLa/omHqiY8AgMBPil81l
JjCAFds1JMBbzQDiLZRHXB3HShaNZvCqU6rC3Svr6l6tJGymDvhUdIR7k/G5Tp80VdQpch+fH6TC
4W5EY3UVR3jOaUcHfhR11geYPP9lKU7VMTmyBMUcUz7LHVKwT8xq9vJtN/tZu57ldQwTL/HFzcA9
gRRhiNMaTQWe7ovTpUECIkffiRgDKfVvWyw3JdlvT7HC+U1rOzHNp4saC6VcBx/a4HjtwmFUsjZe
rRX+olXg1spV9och6MJrH/IOBl47kH79NbLSKHluSyoAN2xRHwV18HdMkYd/0LWsTGi0SKBuHiH8
0mhRHChYNIt46SQgaGymmHjLGb0pYdp9tkj2DY96JFKPdzpZ2XQcVtKpPgvibX5hSMn1eMf+iDve
0xowZesdS7PFF22sERHFhSH8HF7+7OEkprsF5g5y1DLwXE8KQboZNCA8ggF6YQnq47xMFRlutgw6
GcKUHv7TE2i/BHL0f+6GgmD9vwpQDX+1id31Wc4jij8tXbBp3eKAKil0jOrBlWd1JbztmPt1uwJ8
+frLOsojIUuDErvSqNvuuDrw32hutVXTMGEx0v1e3n/buojF5dEmRW8LEyA5zl9UKMU0oGGOzc8Y
HYUnZtmQhakiOo+Du8/mh9IkzXqmya8YvHyEOSrL9L+zTtQAw/3qGa3bPJbiH2GD4mlOV2cu+Quv
xrVH88//jhN4eBgH6ynxlzQbRGarXu9zAKRlaCM8gJ2BFOWFPFDSpNhA11aPYajZCF7du6B5DiPu
2bR+iSRjR/8hC4muNS6p6XB7fJQYgo2cjSlgtahB91ehhP41QQD5HUSlOWBdTH5lGoNdGasZVKhJ
v7EUzksXBBIge257lvIXxLkqDsbumCjKD6Z3f6mv59u+4O4lOBsc81+By/YiRPiaZQsFRF8Y6DVB
eUo7/rVnqHwjvJCsSQcpEXHW4+VA4GNCUWRS/eS66+bFCkcljyQaImuumITbkC2gjREUUhbTvgK0
rW62ZMZfGtj1tHYkGVpE8MVi64IOaWG9jK4ljrizr/XmegjKoUtmA9qUygJNigSSJISYSl/AReoM
cS474vufBSsr96ieqaNHJZO1MND3P81uTwz5FIDUbMkvaQPXN3hm1SByUyZsg7OileZOLy6ZDHn5
Lw3157mau2qSmDyDB9B7psguytFQQrz6BKi0IRMxW6QyEmRScLFJAwBoAT57MMC45dGCbpsC1Mvv
NHA4VQz8O4uQt8xByQiruLvUX9uTusvt0ahl4d0NTVUQEsl2Aec5EsaOV3DcdT72/qYwoL2J/dxT
QhyM9Z3wJ/1ZiCbbJEp9y9pHrE6eGOzIrHXS7qxPmc23sPRdtJct435MxLD2zMH1Fao1wf8cG/kV
NBYVr02VCPPcqY7lSzgEwQQRTYa/FF9xBtnWWhuyF3JxSwegiR4/rifsjnFjVq6wDU2XgdnEmBpo
oxUfHRbWQ+szGWq4rMjjFf6wwZeaG0H5DQy5uN8p895hnZNNSo0PwJEPcLcvJLFdcgTfYAIWMxxX
+zoXi/ur8hNmFOMk4dFmbgYoSKdpptC08zADMa4rkSrw6q6jRS7jV9Rr+f/baKlCwh9yPMqomYlZ
kcIwFZ0/lCSEQz3+iZvEtlMa8OKld36AH171DoC14nuitenEdtsJyC7pjZjybUKPMNfODWkUV597
yLO0zKk0hhNXqBxQpnD9Tg1PnsmuymmCO4CE0Eiw57CnV1FsmPRJdXrrgqw7TG9fP6lMtUPczHmR
7oM2fTtal8LoDS9jP13tUOXisx4IgU/fmiWWfiuJ3PO2e/fehiHkNVrVN3WWmfJpWLnCXjSBBcKx
FGZ+FlNjBZJj+AqIWa49YR60Y/GiqpQZ8rAv8dv3lKiQhTlnvPaQvLYfYgELnzfmX1YOoIkg30ZB
MTyylPXAKRfjRaDybz+uBcM+tO/QyrBa2AYjidisiVC4doVIRcHl+/IQM6SDTzi60Db+NQL517uU
+Zl4kKQaU7aXzIS5OJHIezYWjP0z5K9Ke/7CR7v2+4MRYMaVr65JtO+ex4DlvPBgFuBhCZZO0KVr
bFKIbDQFiuwE6OFqUddxXVScMfcy541Humue7d+khItXU0g4cWnrkIDH2j+9ZALs6fpTd8jXPtkV
5+oRMgdTfarFqa/4CrPgdNifH68PM0B9D+2kcMO00iUdN/O7Ir3xwcVNjcF0iJLUCMKCKvtuS2zD
vDDuusPcUWvsbKpbW8YpYWiO+TvjC0goClqorTFjbcnElYfJQn2pDexAiBcF4T3C/aoNyaA2Bkql
x0qQAUEObmgBjbEud3P6KI8qZSfEqNIgEYGsgNlkmDHhEoV8LtEbz6wPlg+dEUWVpC69vKNN0OQU
NVsEo1KeyxStweFB/abTU4M1BlOl7LudGgaTDDzw9PnSqHWAqyXOQceTOGMLWL0avn7siaX5Ym6z
5vLJZkegf/1k5I7o+bDeVTdlUqmpkaohBev73JVAacboomEj8ZFaWHPibY2W809bsF1VzPH4QN6A
AeR3V2ZjwsD1UCG8ZikviHx9lABCkrLJ1GpeGSbJtwluc8B/V1lxZz7NncnePMs4Uxf5m5SH90BI
CcGiuo+AiT8U3/9WvXPVgNj+qRlLEN8W8XtZU5sEqCJAYJmVPCHCEus/B7GpPPcZuuLYB4IK/blb
hbDYPDRbhte4XB8ZAhTMPDv2Q98+60PgmuZPOY7uZB3zh/lgdlAhUS5UYo3hyE0qRpeVzQz5pEaJ
nnR9L0MFJKRJikmcKwjj27rb3LbYdIejovH8WZcrIwEeEbHiiPzYSnnkqnI9msh4ZRGCsUU2QAUV
h07d1UdwWEsBP4Jp1NvIGS2cQefTJjasx43HusuM+W6JjTEUzkHWbWx4DXffv7FNm4APAhEnLnPR
IHpp9rVem5Uoi9Q7xt5LYgKRD1Bx2sVecXCRaPKm/IDuTqm7kK5fjTcs3h5z2Pjza/7OzL07Q6Z7
y4JCN1BNzbBOAgfYWUbNmZpMSMIjRxJOrSh25snQ9YPyiMdG42w2cVqlzxu15VR2oAG+UgrdIaay
Ta1TvaANdVc8kKXclyzYwPuQ0fhXe3z6+HHdOUj3u4UBM5ujdDxv9KGS6NcPuKLxalUyDTFMEQ0B
WorcmDrBcBIsln+cjEB89rEV5cV5OJZ2vmqbKIWokwIoSmQnUvv1V+vqHNwdztMTj2FqYqevxzqt
3LfW0dev6VtIfuSxubDkA038eIZBOosQVaAUTH0FJ0JeXs9OiEYN9SKRI/ZwTI5Ybk2diQHhEvyp
Y2HS4x6DF7ddqXYNOExCb3EoaR/K1Z5MX0cfRpXERQ07X7DIdZjkUNnNd7n/wpmHmCcY14fZ4FC9
tJ9UCTMOpJg73/V24EAiAbNkjMQcS3MNA67Rck1Jw/eJivkzTjTDapkHMX/acv+vJA/2wLnAHUN2
1CkLdtVSQGyrizG4noUdpfNE+KPTmwH0RbrAH2x3BnJziBRZ6/q+LGs2CikhOmaWqZ8zH53GmtnC
wV5JGK4QZW6wnbk2p6S0eKyHpD/+bcR1lVw6GtBk3n6KOUF7sr+s3er8IsXYhstzfljOeDm3wo9k
Vkf10jen75VYmXhZGkKQ6JEi3EWS8D44XOkmfn05GVgTD/R51E5d+slorDSWDHYv2BDIXAegodaT
61g2oael7dL+6ijymbfkT47CqGAWkTCeGVh8AlApyUqsdyxCEZKOa0OvKgmEu3LMpodGvsOh0oQa
fdPVbHKJ+yFUpYlhPnlt7YvNGDRLJTGX7dpf/GKtF/pz66nYx1endnFhIqbiMt6nvXReOW7Y+obH
Jh3Wu2sf+9zi4kXEVPdLKZWKfoRDFAs6G6iJ9O0rqYt0VMVyd1gbv0E3l11Ll70GCCw3pYkRwapv
Mo2oqFZkGdDylgchZ0sNb3U9LFNG3lR9B2WdL8cpPgwMO4JM/4hGcmjK9Mfc8qFXY449x/+FTp4i
nnX+GL2GODTDMA57OZNY4ZXR64QbGGhzELA3Rbp0GqgXnq4NYzTedA/4xx88ve1l3pHz5APkLA7w
rZfxTm28CXjAoLRRx8M7Zd2uSjf72HW5dAml3xdKhLKDGuhSwwXbRzoh1+uU5AUycnGOr3gS84Ra
m5FZAYeTAL+knNt7rQ1Jhy1JN8WF8Q1St6pT9//51TEeme8Z00OAgCm9QmNAMFNaTUwYfKQeX9v3
iapyCsij3FFrQ91ooC6tztVfDmochxEvoEkxMfHIkeWLXHSrIcTnbRkPfS3gu5VS4oq/nIPJOjF0
kx1ugPvuzF+3U6TPOeFcWSrcX6NNOFNfAm5Q/K/vpxJZJVSWhZU6ZlKUOWRUfACf0e64uEg6SnZF
1kusKtSO+b1V7eeovbykZr9tfCP9jMi0Vj+zIGyluPFG5CQzXxKN/R5cc4G3eRrMm31gnII2SQ1o
PuQOYGgdEn4/9b9zJS6BS10NhLy7ND9iTx4YMGghFqLPnbMJLDPED0AI+XdA+x2uYvznmLzE+8kK
Jnr6pI04CgT/nc4Y0N/Y50BQZTjJY5o84RVD9pSIvvHOhbAZAYVWEu7nPVzcPcA4meu7uKJ8YtIP
1+yyD1nfdhcTtPlGu8QdfOhBnNciQM6rUZs5qM8H+jikAxZqMJYw48evLDQQq7WNqTYyk5g3EElq
Ourvrkj2XfPDx7xcbCu/IKPIXlQsJkjSHO3s1grTlo7FYckY0HScp66OeM9ClzhRqIBxvwwWr2mC
WVoJ1LNezc4HO1WmNIGJ8IaQXCUns5j+EPzDt5qQs8FtcnOAGu0pELDOhAQiI3LQVqf/Ss8O7Mz0
jzl9l+wiFlU1FBF+RQ83AEWDtCPqx2jTHCe/4A/MGNOGC3eU8kBL+xaX3r997rYiXh/6CzXFkkZ1
/CSHk+xxMpR9+SlNYmpzOjkYnRXabWFNN3Ur4JCTCHqDj7zUFogldkqk2HocFBDe+eJAAwH37so0
nNmhWrcJX03tUPnoM6dcpJrbWfXL+Cg4jqHbrggZzyvC9AU9UjUQtzx/bmY1Ie5U8QABZjpofjSX
o4VXcc8EpUHzqsdMSK+GHg/UhYVPdy5Cly4U4s5uuT/saZ3CArFWlUv1PUHgKt2foJPxCjXKs/0F
WQqJDbQtt0hEgHhwQmjHK4GVN4K4ITyBtiSUHdTekoX1W2Ru3mAcEGyaMbeS5WWro51Q+DAhf4KI
ksUCBpaq4QRAz6q/O+b3WoOILMs8RaCzAD9+HGe73GfzE2qO3UP9Rduensfja5SMzUtScNpUAAYD
YmTWSQ3rhqfrP1EpLR+oO5MyLL2/87foTSvbhmIsOJrOClGcq5eANnO1/izyD5/gqcCF/2fe1B+l
pzrY6+aR7f8Jo4PFSw1c0bwq2ta6DlxJfnMHQ9nCozG0MY6Zi+r2qkgASXeyMsetCCyLLAqWQAFF
QZfu0SWV0x/v20PtTrB3lb59dHvGXECEvtryIBpl6CUXqqI0g4ZR0xsauOc0FngYY3gkADjV9+WC
trOzscBuj2nntFoPMlh98nnadNK+bEx9Rmmk6e2abAI4Q3dtVT2UeW/5k5Rd+bnI74HK6DMZnn77
SlYu+RhzAPN8pBwmnABdW9vuXEfPDbIzCLgS8PG9YH1CyEcgLKkv0Ca5AY8r26LU1dcmwRCBzvmK
rzBBRm3boDns6q4jZBLlL5/TMkgz5uBhJirJTfsMpf990IJjHS/gfks/gxFmcVdtlhDJtAnKjscT
ZUyXIr7ku7j3vA8prPLwWsCzaHuKrKMnoXFvBuAVcEWe3D9y/EPB8cjaFuQ7ButhD0ig6SIimAqF
l9hNQq7nHn98Zoh+ym8u2zuub76Wb8ECJulCebrhEYmMSHczZjlRO9fFgbfuLy64GfUeklbwg6yV
qEpVhwnfi+5a3SsAbRhJM7Jh4H2p/dzGWbZ5CzhR3AG9+Tg8brD3yH9eYYE5ppZbF2csdCzKf68z
DcZGi53bLMmIZYA4njdYLQem+FPlmLuof8Z9PpfFuTIzpGG3NIq8dUtq272oq5lcTqnQJNa0Xjvh
lbA24W02F0v9RoJF6sfURZLPS3hTUgs6rc302ETw7JPD8LWVysjIUw95GHaM0k6fYaF/1tpr3mT4
LC1IdXuSyrbkOYx1lNbytTLnM/hvQVqn43jhUcg48BmnNezHvnFTdSdXksQ3H+IHNgKAar+v1rLD
lhpPP7O3Wt7w/cCbnBdpmfQs6ksZARMdAIC3d1He3wwIXaIMmFNfEYY+AdFY7vE5UDwczXmLAOPm
vbxcGXxmIdaM+bjYj/i9lemy1qN08buik4iYgWtolK51pjkHSXhLlpwnWGqYesihgBQnuVG7QuwL
D2hWDiO/ZmWAAEtwAMXHdmVTLPoAbYgI+cyhCvUjjGme7kF+12RMxadtcFAHP64OCxaTQC8dpXQg
2oKBeaHs3MpNmK+9BMjlZu/XvqanshxO3pM9dJcHqnkzQ82ewS3SxVSFsTVPDf0h/yTWMwl4sLbI
+RSrwszTUOoe7/3x61zx/BKka3+1SCBuPyBbMPyZq8JJ1JobVMnKyjsZd1v27JMKtS7RU3YYKJpF
MTgXXOxpfLIKojiumByrhT/71jTdW+c8X6O31jmJIHbPo3IlwZcJ8ZQfvJX/7Yiqsn0d2eAlhQXg
dpn4Yxswn9aqiH0nO03Z3B3/gMrk5ZXNlMS0iUjwnH3roHZTzbB2+giopOY2Rp80CjOGufaQw69R
GWGeMpLx5XXhERyf/4X+K2Y375dE6fNuK65otyuaGdzt6RzkJa3Wpx2MUsQde4teypvKppZkEUkP
9oCog0X5MBJRW9eH/kaK2LeCni2gdNUEV5yNXstXZbeVLxZsWpsWXxfZT88XKhe68wKfcVOu7/ur
CuQ2HGCC3BIvEhq7YGFmbeaQqMlPTfZFzHmh2r64KDyGQ74RtNR9WpiY3JJR3a7N6BP2DWC84lBs
hb5flSGcRKgvggv024GATBwYiXgcXljV5CSrjOLSiep9afeBsHNl8nilXjH28F3uS1QPeL86RPO0
E1NqA0SgZF2aOZDEf/1MttZmFfAgoGVxB29IABMwbbvS7zKRAnnB/C/k6ae/GRkTAZJmHafj4J29
KMmxXRwQBRDrhzER2Q1wcM5L7JZ7GeJNE2bSEH9d3k+UsSQsxaPoC0uWa0pLAjjzKX5PSiq9T5Pz
usJ6kY2vWKVH9rX3b+at5ywSHC821rmuqyFr1F7pfavDhNyidZti9wn7w1BuqsSmhVzdown9i2WR
8eFhSGPd6FVsdOCAI2n/Z0ROdm/lK9hWQE8ZsZ4wE1RG8+KeTFoYSfRHmBq9Pm6d4xaZ3Av+pCeN
Z/Tne7Ea9Xgrt2YFiaR8zO39EIlDRb/FPOSjm6oVMk7XosW5mXj6zjtyRXq9C/1wo+7dBVHVoCcK
JzTiMyj7cpZatBbrNNKygGggU/b6274ZFvyuJYBEvlIaovJ3vjSwbwbuZzw1HsdI4vR359vb74Ih
c3b90w79Be8sQ6CxqISK0e0tcIhnoRGw+pTfyEEinasleKz8l3Efu2vmXH5fT3AKIXL5vO9y6QCZ
TflLSu3eBPW0TVXHpprUEuUZ5QPAD0inXyriBTZgRLxOWIN1ZuqOYkdkmy9/vKsmxUrcDkqueExC
5AgQ9UxVTYBMZ/ucp7ZQKq3sU6UGy6pWeWVhmi3+f3xMa2T0Yzt+2ZhD0i2Nm3T3ilzSMsOwPS5L
pXg19JZjecnPmsPbQUmaajLynrk2qyfPNBntIzL7qVBGFbcqrladqk2TcSgt86uHBrdPCSw39KGh
/x8juvrCKzY86j4M8gmkTcGp16Bew6ntk8wavgTnyaG9Fm1qTm+EY3x9cuGi9Do1kbIOZ6p/l5P4
E21mwjXe3fmsV+HbTtCocjQ9eiPh5XrUR8nncKf6x3XNqLl6u+YR8iw9Q7CJEQ3DXOloMDiNHlqE
mMgpbjcjEh6660H2A2glpb68+yCHC3vLk0y5fjQV06V8BAVmEMsytWBHyck/Ur4efjlPANrd6oP1
w+0XQfbKYHhj6k3QnYhL//Al0p4JZq6aBaseymeL9DMHziBWyY9ocDxkKdJk5BsHkH/rpCcFT/5H
pBFFvZIqPxfnF29HzPISgoOEEYOv2Sol7DAVcD6nKep78UR6BDXBNnEv7Nd+SKGE5eKZrBq/5+tZ
0F8KIn790cybTQwgMnYgSqB5gqeZrLpoW8qi1C7r8dVyEO58+uEOcoHGPnYVR7X6Wb1M/cW6u6wU
YfQNhHvNfJQ9NXOZs4gGeqL2zwdZgmFMTuwdQ/sSf5dqDnir0+rsBV3VHb4/KJVqFjRaRh00Pf0h
3jvPC1eymy34F/fF7b1AyxGgPBgKq1PJnnjIolKLvx7FIE3JTKJsSE/uEKbOqArie3VRCOMjykPh
+dc4cLwPiaVIqF5fQxv4FNV4AfCGeUSd0Ex9nQzfm5747L9j4QCfGz0LrEoKrmoUko5gCjC7AsC0
tgjGxTTpXSyfp7IXB/Ikk5srEuuVhHNacsCzHqH/71B7aZ1S3XyOUtUhsKWWm3BJ84BOJ/Aspjtj
yMtQmWhGwyKxTA+2o74Un2dDcuofFuoTasnOkpyqE5Jfl/OuuI/vS9Edr8mGIFXhSxQTSHp02Ihz
xjJMi0yQuZyHbaIVFU7k4wn1ORLOwV0P+sFCW7SnbRDgl0DQMU4ahdAq5+WOMlPWhpqRf3Sf1zul
m/M3GtfN5WONaKSxxXeChJzdaMFLTKN3//8L4e8mwPap7LHWQllvI5KVeOFP01yUFnnZNu7ZDVLI
nkPJMVySeVaO9Xoe4mFmAnlMOf697MMs67y3Mb+US9agcFMmZe6N+5Oqw0u72gjWqZJlzDCVsG47
dqEDqwWbQEyvd35XL7KriqeEvAwdVLtD5yJUdBtHv0yD0XSUJp928tD9ZHyIbH9lXpCchCLyHvre
GrQN6+UE6PySwbkrgC9ofywdeM0Dq3IfwE4MoZ0wC/xh2xk6oEebKL7RpLkZruFmsTc6PrDfImTs
3caaQgBs2mSBFQmbjgGhjCF3pWBF+AMTIo/0lZLuNTQGx4NpUEHFm2Bs5LRf8gBFtiBFstSt/fme
FQOMKsEFS2wCMrOMPZt4UbaKuxdRm1TBblaIKMlOnzXWdyaXzBOa0a3BG7VS9WBs7qF6CyCmX+ON
BdKMdImVJXxZVnlh1ZNywrm26bz2Y8zn5tws84WaVG+hK845GE+IdjHD8mTKYMUQ+X45wOX/ty6d
Nal+X4MjDDEgkUw05txP83m8+V1psqtADPFrD7aqJI1n9OXm7ASm73qtFkx8ntinsh7R0dwjMBwS
IzBQ0qalvK6O2vPJ1ZkY/tOMglgOnGM4umfBHqQrxcJ6b8dbhvmv8/hrob6EJ+Shn4DbRd8HCtgZ
QEmH78zTvruiYCQanMbOHJKxYDtneiD6aro4zPuRWAS7NsodAKcOKjWfab46UADlKrBwJN1KY+ke
ZeXHwHQgD2ffnHsUC8Ujd6QZ8ctoXXvShIfzdg6JiBZx7pP6ygV1c+frDnERN3vN1x82n5ogGMzx
JztFr2jxCB7qBfcAa7Q4q8UtHaebtrYgQlxf8bLLD3+B/m5VPD0FHgAG+91A67pzNSQhVyEDypY0
LuAk866/RDsVy6fXAI6RL3A6xsAXOGlnR1+7DNTGhXcmU0y/AI5vUSeWL0wppHcdaOkuDIQdNiWo
wQ3H2dxXZp2nWl10/D5CYUK0YEL75oN+pCNRMaSx3pCp42UCfep23ArmjOvuNf/LCP7vN/sOcO7N
C25SEIZ0CgsVXtZhNiblSiCHrebeOMZ2/7OVjHSKeCzeBtZz6dhGDntcc+WIEfDhBi4Olwvlz5kd
Rnk0lQ44A5gjyjkokiPQ3ssA78iH+y4qleNY0n00BbDa7T2LUS+3WD5eigd2NPdC34KywSyEa5rR
yVzwN1U8Gh/txnswrfSXirv6efKGjwgFMhQY0aD9wl9gPky6eymmXHF/7YglUt48cNhVVV3LHd0y
7SOMurTdGat1hCX8SBb5khgYYqp9GOtXpx7hmMHkAQUQ/6M+E+zze99JNpvqFfAqaTOV+QMmwFrs
1nCorEi/Z7j8m58XSWd3HesaSK1L3pgYUFopJr5yeKcJnrMFkbYk1vS56fp05i3k5ZNxGtLHNq5y
W75ZpKQY/O3v4BfNOBt6r7s0t7+iipsQfW5Cc5o63hMzL61gLS5N39p/MAbmofKrHn7vfjEpOaRz
zFDLFfw0cswFUbBsKopjhlwGGKnwR++cvCmd22/PGejNZwkuriR8DhE638/SBCN01qWCKbqahdNl
2wfC/gSmAdyuhDjAcdMiuwJKnyVF/aAdzP7Z1qXqZWwV8CdIQ70RGsxBOuGJ84rlV2x7ugFvoaEY
LWiqrqGVXpYEe3aBNI9ar6HE1ZRiWLrbDeTSoKmNvel6du/rSiQaaP4gibJp7pP1xD9QV3byNozy
9VPL09FBl2HQma10lHJlNA769RXEWYeAJi2VUQsV8ZiqMt7rIcB2tPCvSgLlGFxVSloQncJ/5D5y
27iv7Xnuyv1X1PfSBbiuxIp3HI6G/F16DcyH8uYQp9Bb00YEs6BrKSupeFRhldInXidTkvYQZHzo
y0QGxmCb2aRNC560TrNrXND6p+6mOJi2TUruKXiiXiR8QFMbU2g41b0KK+h6WAm1DxoigrSbm/1m
61E91WWX5jzlijQ6gnGU3VnRFsHyfneP7RwqbZ1LG98cJRzj4nL4ivXYPIXTiGJHdyMMsu1IjMh0
WKWbxZSolxAzuCHFlE1u7cn2M3vkJKYF0axLvoeVo6DH5NbmFb51LSfQDKPeHUqZVsp/xoV7HfSu
rSYHvMWc62WBU8uxxnDW+qq7JUySNZDQ0e9jQ8XWn3kwaBN5+GGTMZxFKUdqdZi7x5FBGvaCEpG3
Kn2rWDwWUtIuxwQgFOFobBw2lDtuW2JZzVUbzKqmSEz+OC+67HhDpCMUkaOa4Y8Qy9CZgMIlusks
73RF2fKVTcGY/GSJlXJYDL5QYBFHpPPSpxJIZ/zR9L1N6f7iYfET4k6mD7yYyqtC4nFDk6u05dsK
VkN/BmlBML+N5fjpw27oAZ8+Omnj3oY7oz5DhOuG+xsl+vH7v5GlwXxdIVUPkJTIeZAOh4VO4hOR
p8oLTrRdd7T9KIOBex84k5eYHFaqU5+D0fvhAYus2VpIrM6n2XlvLO8s1wl/9dKQvtymgm8tZ0x2
/4q4GNdN+NQ3xSJe5g+3W4wtolOIkbClf3jv/DXsn+DEVtUXJ2tM/mwJrUn6l0eu5nCvX2TEGLNa
eXWw93i1AE4YLhvjmGkzvHMOilEpwt+SLtc0uopXqYouahJ6lC4ipXhgFsToqdli/UC9P/QOHMBC
faz4SYvDD26F49yjg+INeMSBw1n2aCs9CyMiXZnYROKD8gZ3RfEHW0CbGXdzXyr+Puohq1kwmO7l
ABtXx3OSfO0loEFXio+rfcdfmOTs7gCqLHj153lyr4NR7Hdw7er4zp7k2LsdJ5iyBjYDSherlwNk
UUHJ6uY1E1jFuN1H6yKmXxjvYDbDfH8HzypejxmQaNIle46yC6jPmIEkEsvL/7eoQnjMr+qmImxx
fLFCJHoGhHb7vNkN+9Zyf4c/46EvX6Ahn/gcc63pK6m3BidoIQpwJeAbsacAe3WQVLf+uXTNr9Bj
K8bkrkjE/i1hzmvIZNyPSha7h0xtE/ePsnI7QGVL9fqOBhWlGlIGhhFnjkjfz7cZZ4jlsSZQHoE8
AOVtl/WkVeGYwBuRC5GAym6BVoWBPceDgPwUiSY5ic+qgAhmplDaCg7jlOiIAD4lWSzjpTfIQHYm
RW8u426r0LYb1sDxNlEEsf9VHt35Z4PqHXX9rHjZsmJxER4qZqscrRknN9HHNVyrk6ja3f/kQAte
Q9O82c42jxGyCJIW6uvG6HSqH3Y8/OTuIv8BqdcBwMMv7vBBxoA+r5vAVjJ5dOrzhS+2MwM34J07
siGyI8iI98kCaQ1LHMDor1vsKsYrTQm0WTXsgXABSaHhFaq2cG7HH/T2+RW8xIc0IFoF8T53DGHi
AGY1y7yZr797RW1J3Wb3lyavidNa9Hc/bwlg1qC/zPKLTkX9YpeWQmpsSFbhuIWXZ74VFUrLO8US
gC3CQZ2EMMBKp52Z4ldbYkEErTOwtTVvL6W21yN7ka4Hi0R29tbcCBvxD7JBzPrQB9Jse4QkfcLr
eUND864W69l88O7AWbZMoGZyYRvK6jO9ZeLLBGON7SH9p13J2PWbV+ao9df7B4n+QIFFbWcsPR0N
RnhQ8YOkTCk6ZRSO+7JPpbK/rtC9aOPO6fF0sknDE+e0o/o07VvZ19G84BV5noonrR6cX+Pdj8eX
+tGvwq5v8A7gteEwuhK+h/2M46/HMZ9UTNb8itcSjIrPI5RagJjJbgMfvQPeCBoMG3lYvzLJPk6o
mAgWQ09WiJafT9/ljj+cnPE4hCm4qObH2H6yPZmAqz+bI9IWjakOBiqUu1NN6FZ2mCe5NJ+nWpT7
hM06I9qgdeTGkvLl7TRCoXc/bqdeNMPZcikM+BLYGJtyBPyEH60lDsOb2RGXh9sQhp9IDXMW7ppP
HSTyFL2X+wZjyagNYmfuc2hBpz7LQM9tqjqf122f4jtnC4m9o0ShrgAWwHQ1DHstogeGKRc5H1f/
81zS6SR5IgjWqs5vnHuBZs1KR6FwPlBQ5rQhkqP8yU7rAUWL65hjKJ8SkrAZndFtbUoKjkOGmOHZ
0bqpECq9n82+TVNED1uVC/LFQnDv/Onkw8o7Wfq4WNstnorb9NcBZJ5PoDxN4OFik6MMuJGCisop
X57JenepV08K6jJzxEL74dXqpTerq5G0ukCgLcNDwoylRWNttIWhguKPIZ5aeTiIna66IZLV37J+
+mUX11easW7v10t6Y1irt/T2BDQbwZry9iO8vYhRGny0zKIgYf0psz58JntRwPXGHnjAmNzw0Z8z
yNACGU6r0zFxDPIKvOWd+U5+GfbYzBMg/DWYiSjd1FM65BdEhPEumWjI+VRx7YBTFZZB4ey0TSOW
RX7QghvadnQjRe57oh9D0/H1/hJu5nC8Mk12aABSvsTVJ5cmEulr//AUy1wgCrKyzA3XhRlZ8TZQ
QypP0r+P6nu9v4RCqDduId4i5kU/MKS/Kz3S05q40WL8oH6ipE/SsHTgFCZMP3qclmpJsVIRuPI1
09+N7v98ea2q9NfxNv8r7OLS19GJWBtdSMeIVdrsIYOMh5EmIh7l5eiFVL+NiHSaDNfRE5zj6TOE
h7h+iEN6+FM7I4dIAPcPfdtpKHdMGxCp2BmJpF159SkgDH0JW8xWdVbF4nVrsbo4t9H3DrGDchbR
/c5Nfn6M50nPiKIAHBjGcaUlABg8wfrkr1NCyvqSUtic+tg2VefFjiFRyWjWVkqNja3Xc+2JEOIj
X9uL7XVLRgmYMV0IFDpPURdAZt5FpiECfKnEku8qnunzjk+y9qdmgICTrSOdXfWWCFDj1Y+rvhGV
R0PMo8cZ3POw+jLnFuz/bjgKtuM1NzJia07t+8YOdaQYeCFG4gwyKvfXEgnTBqrRaQYA0FYOHH4x
Ggz8JXA1Iu2Iz/EZivjA4Roh29gxV70/qKkENFN/aNAFJubuL1FgNLftMR/OHf0n0SUU4sJG6RUv
8rWOe33BK+6FQIITQWtv6HGGcKIGi303St4EylHGhhL1pOWBn4ZWLphZlsLuS+7JyM4w5LwwHBBH
YjvB3IRSFbJMpVaRl/ReIn2bVrkA/525kYWKgu+x8Vaw1sdqBzyS2zNsPdzpisDYOQJAy41tuyoQ
iV9zToHJo5CYTHQpv5spjrZiejVBnvuI/xMGo0yjW99A1iAWEXUTTBLVP+7AIKOvDmoIk+57XK80
/mQetwjtdLUKTajXZSLb0LC2S5kH2kZLvcBNTTEZCdE2Kkpy5e7D3qjQnpPMcMuS4qoKx4OgLEMM
8TwSPn9AvBADKn/TBf2kkQU9Jk2ij+tPk/0l5xN9byB50jmMMfzQQCOb4iJLjzeiSWNpC9X6vWqz
UYd6vyQf2zfDrtKz+ng8T+LZQC4KTuu9VAcYB0ESuMEYYmNJTkZdb6bBkitgULwV95W2Jt4ndkXO
H1hHTrAD5kIlb4MsnNhQ1tyaG+ztxBqgMvikDul65IUxs/7pKuoR9qjt3u/yLeIVmWtOQ85CzBOg
6ovQ+k6JpgqhQailrTEuTeqrwK3DW+sKOSBE+TDL+M9bSv/1/ixQGmjLaC61yjbSQE/AfbPl7bui
5sPIwstY3aypw/W1wNCJkd6GaMXxAKcdJOSKWSUhLmpY4+HBB+6MTrrSncUJnw8yVXqc7LrywKNm
PsDfjaYPusK+me+/EdhQTIVeVQdAsphzOcKk57aRB83+3oDzVU55CoTDIjFGyXJvy+Ik9M/OVed1
Bo9X1XeS2UUsPCnCN7pkkCgtU/fosnFJnz9G+MoppcsAW5IEAOGKf1j9dtKC5EmpAliJWK9EZ3QE
wF9YKcUFV5WUThp1qPzmJiOCP7PrFL4AdQlqEo8t0Qt3fdfKsFSxdbz1sm2yhsDCg0pQOetI8Si0
YLd4CDquAaAoY7Aj1JcZvTgipPlOaQe+PsLEJ/fa72xKgvWZqfYkjvx895fl8PQqjLKGF0rxqjG6
S1LQoSo1be2PEz9tyGmRnLCeAm2vAyAx+26YoWo/Pdw6BVbS//SdoHJ/daJfwXuJbI+jpvyjHPvn
Svn3z0MEApE4u4FgVf1kt9GWavRD6AT1YrrYWq4TUJTK2BC95c5Q3VHExXTSmNWMOo+tEzruXFgj
6uSjs5GteAqQNPM8folPCSbsFrATfYRGaN3WYzOZIwNWnO5+YksI2wGBnh+LV+LursasC5dk6M9h
lb1Rrf9Z5HvjTDP77lycsaOGeLeofTx/WfmtV/EAL2tHPdZMZCgOKmhdsXNAf8tBSGuKYwVjsA7M
UThMYUFN0tZLgirC5ZZkvIy9O6INeSfrz4caDgZAgHG8QQA1XNt1/ZtLBtAJQObk4wz2X1HjH1+W
jsCh0yEu4T6JZGyfSF7qb3ARYjecwbUUelRGZy1qV9ebBmyIKcKkUPHn57FtklpA7aHpgMOD3Ojf
7lSV2cyeG9LgOI4iGf20DpUhQau4N5BhewD4uxjrg5gsrq+6x2n6ZbIs3pyYwjmn+rUzlqhxV/rk
o1E6aHUjKpEduSmX2pyKdapM0fyhj+AmkG1gJDKjPu2TmrfNrZNmtAaEsjlQyLQPx63Clo3oEbIR
EwNSBVYFl2/iwShVyoEQlTRRCcx+bsrMlOWwezNMujddNZuxJ2TGJ9coZZK68Ki6kDka2ihMPH/+
OLFvUSJGcH79/rrWUXvlHKhneTjIkxc8w57wjBA/Bbt4zaRu6qKiVKAqy1XNKrrfLqfqfpfxvhtN
lqBppKULiloZmh/alWJ4HDR8Lq1t15fff950koltbsOMxJ4P4iJmCnUXQsnIggO8RblR0FzewY7T
Ip7Bl7I6Z5hFTM3812a4F+RpFESIOzpDOOr+11vNKtbcRyKdHovGXXE17nskIxmpmc3dXT1Dh8k9
1sw5C40L+1m6wHfEaQiqClZXR8g0Ubfr7xFwmZqVihq29Zc2vgFKUfPCYyVMPi4sz11dtdC+2HsN
7rz0KVDuv3p/cJY06+2azoM1BnPU8KaoX323xrI8fJVg6CEsrpa/d/maNPIHh3g5p5H2b+gM1fx9
UMa8qOoZ8fCfS8gdGtq7pFCYD87yMis9dfoXX9DaZH0cFtVy6APM/68JQz9jtSn5tCwK7PuRyoQY
PE5XcCfSFSSjhQJoaa7oeQRFHRvBsgAdy8de44QcJD8VJeGImu7TLvDdGZwHSkNg1k2NGSHAAcAX
C4w2UIO1/TzNg/K1Tbig/1H1lR7Zibbw3Zr2WYwadk/3rvqUFkAw0IJ3t2xcOpXL3EulhBHxdJBS
EDc1FqD8ZGJ2o8w0RGUmO9KgiMvTgCt7lggE7SuDINh/z1AnRu2qnhlje5B3zf645Dd4SJB2dhwS
gxy/zkMUORYXoIogaeBYnGih2i42wppxOvirt1BtMOUIIQ8EM7kjyOIoaLzbYT/BfZq74GmhPVK+
VwtkHt2GVvj/FumbwL/OC8f8Edh3wtWxlxIdGwiuMN5E4dbP0t/1IacMlZVW0Ah540lsVlY9POhD
Z0vLKsNAUyjqIRah6+lvdbZFU4SHmUgU9QaHPAz1/FCb3zVaK2Fyt1km6G9hTuVp+3r7mhHYvfJN
s1BrFfqGgTwWBBI3dLPZUU90VxEoWtcsQhF+Za4M88HOwEKVh80gSzDgYu3wQKfELW89UN8P6Qpe
QDRP/MfOwSFLSF7MKHP3kr3A6nJXtJKBhW2aTn4mi1wDZ0PhenWrIOKMTimodMTJ7gNzpHZhSARt
ygqknTEOAXpRes6/Wcc0FNQqkHFtaiJs5OkrGWVN6NgzuoJlwi7b6dsEzzjsGfSxqK/Rz6B5IZub
JjBVyrP53YDLIMVP5zYEeY2/mpaplUzSiCUgy4jkYojb1LOH7ooN+n/rxD32Da5G3SSPoRaOspyE
2I89Kw7reeeAfmUjRrJ55IUgeyM24wtXigHzrted4Qr5P/CvNWR0mnVngpizN11pVZrJVtiyQsf7
aESiT0TGl2RLy5vEJUB3l836BnOZNEJUphx2xd/iLojvmPN3efgZeH0YqjJR2EEknuD8fJSnU8qr
KESuc8S9y68xfJ0eoznvxhG/ZL2M10GqcaXxzSZ90+fxaphhvIwHxUEchrR5J4GSK/UXlFUdcWUn
136B3c6+prq6gYcHUeUJrfjIZE5zCKcgfjTKlfhceVAxHqGT2G9hC33dTRi9Krbl+exrL2UkTmIf
3PtFsr9VrO01rhyACOYiwzzTSF9DRrC2vgmAOmP0oRpK6K5svCEi2CS7UiYAFh8CwvI8uAMlEDZj
it3IN4R+hatmbx6EEC42j4z9NL99n0QIjlGN7saA5yyTNerJ7Nwne//IANsQ5haaB5K5OGEH4/XE
a0I8lX4kwm07u37pkMJt2XhVTqC2X9bsNfbaSkNPgs4LVbqgvnZZoEN4VYSo7mNF0mhhGrXEyPw5
lV0O2h+9psPw7a1tN9ae9Oyo8/vXPlUmsLFkv8osdzBTnDUdPLs8SSnWBL5XjTuaR9tKnz5KZEDH
OLny+FqpEjSBcdcMNdaq4LM7apWr2r1agAZZE/sV32xyoRfHcXeHTaiPhKtdT6WHPVd6KWDlQaFM
T3VRyewXgPVQarbieYzv3BNIPW61Z3g5fCGN2mewML8M3xayHZk3rz8Ov74yLGmGFevL5lwvTDrp
WGgPEfNQDYK7EJT/U+VS6AW56vX7wCq90T7F7HjCgIhAEXQyi+fTlExh25qv4zTIyNg9Ki0C3ePc
cefNl8b+BAtEfphoqsoYJSqLlxOGIEr1KJ/nvHLUzNvaqNhRDBxFLDYozQ3X4BB+w6yfRS+Iq8zt
8uJSt6x+3W0ytq29RgBfJ0l5WUzd+5Vq/vJHEPEW4zkqb2oCvF5WYcOCRdukquqjyJ5Gw6KJM9X6
F0pP0/w7/zmow9vsyIe9NhWuXkw2+hfeDlyZejHa9SyFWNaB9ka2uh1/eaiUJLlOU11xgGAR3X6O
3PV8vyv4alnMAd0dihbFfLUm1Scql8LrrHicm6ngmb+DN9Y+BBBWMziL3fCHyeEa11uGOL9F+FbE
yMT6p2YErWPCtu7MspoMNEXOATem1e5jrs/drtYBYj8XX7G9q7v8uxhnlcxqDcwvVs68JfMbIZWY
q2n2M+DMNo769NhsE0uo3iBFNNOC2JqRSIyPI1GiP9EdBfoqvC5Hbw8fh8YSZtGguwcueVccwazc
OKQl3rA83otyUgGI4XdTq274PTn7OZA4EunHYF/CW+piejxyZl9el+WMLWOfLD9pb8UwgujsjZAK
it4meSD+QTt3/HXXfWkxBAOB8lhlGUs/BpFZVktJ6xKBkSsyvPrv+JX4E/2EN8Dmi+0NpCJ4/9ek
lR2CflPJX+o8gkAKCsjYtGPwf8hV/4PxGuVw8X+yhhq304H8aSmI1/imNs1Cr6Jm/5ArNA96OJry
RvV2nUDakvZ6SWZS5niXKsrsst2xy7ZWoJrW5QJFbDt6qxWyXuV0B0kbsnbOBPeXr3HXc1RoOya3
8EGetp1vDFkW1DUYSOiN7gkLIrCMjCZokJYk/tOIXu/eERSrF3jom1TOyMywyH/jnBUi/W1WlcsW
1Xga+TZrSpYUmSe3EqyPJzszc2QFVfUPloKJDdQ2raduuYfRyHf9I5TdszNb5Xjr80mlJBAQtkY/
maj8pmiGBtIDSYk4T5jueKG9oCCCdGAtAxBRcStd4Q9CirwvNp9FRaYPdL/4hJnU5VSxPuNTbu2N
MSbMCaldCX7Qh6kJpjGPco0PF1VGWj6bBvYZT0N91AW3ZkcB+v/mwz9J/IUIPHPHZwluHY2+Tujx
F+S8bFkCd9R53OkTqVqsuiYqRvACURj3cEqYnBzlnmWGMOQoYcobWOAUa1M/UwZo+Qd/30B/dpEw
FUAcS2RtvYB/uogdPYkZwIJjyEBsrjEIjFwIGPH+SHxxIup4025CYQyIdKJJIqXSEc4k/rwSQeuB
gDyIOBQgwIga6zHWNHRt3m8ZtQzRQKml1mEOAfmSFza8oa4flH8+Vtxt1Zpz+SjylhMrHtDXDZkb
iskmk5eu/dIQrs662eJqSU++ISCt8wnQ69cvlUeKGmUw7ENJTQNkcCfttlKHjQI/qrO5Y5vZmaQU
2iZzmFwqizzpn6iSj2gWYQLlV/Mexmmy5O+IAGBZkcfL8WJwZkkIOBTY5JVqJyz9KR/uh1JcdJp4
tyD/XV/25DwVaACLU4UlegZvb05/JVzHVITDsSDhvDEEb1UvgTi4GNEdVJYENCwXYT5wVPK5abcF
lsQQ/7UGu2rc4T4Ez8lF1X9XAWgRp2uGW4M7HhLe+ZIn5wqaOP+V2M3xsh5I/O+3wyvh1QntFQd5
PLwQs4EqKPXWJEw28z5t6CjUVpNKCodL9PP9ehGR1+A15IKnGq8zqQcqfTw8xuRNubmF+PIG5Uv4
oG2U26xVXqT8Xz612aolfhUHqKde9Q4V4nvBEQBnlUOmjJIiJT6/8KMue2J5DIj/tMBVMeXC3XPm
xFmbd5/9wX1PEVzGCrnVJ1jKDLwtCpIT/H5AP46K3X4x2F5vscGjish8xBhcjvyWkttz6yd1n0Zj
NoSJYlSVcjild4B5OFXGxXk23fg+5/KutT34vrBg6GUBA6zTgPjPd3hqpptTR0VPp7fOZpRnE2+U
GrWuEU7I4TpQg59YUiF/XAUBLmSa/p94se6zLQ9YSc/yEEEvYnLaW808apgvjbh97e4hypTvyW7z
yBesXKVzInS5cc0g0Lp1I6tsobF0YvpbFH6lZTbWGzKTxn5Hd+bLSyA7wmrMD8+wQFqXZWctPCMZ
7nSSo+himXvbpzqiqvw55NboXGIU7fTt5zmvBBQK+H0uFEmb54LD4iNSGIDrdprKCAFB+vB6vkV3
a7Hqa1Po17XVjBVVIdqaWGzp1L3CfPsZI/tc4ezaOMniauYP6sY0dOKYc6D+njAJHg4dEvgfw+nN
B2n7zajE2teZY2YI1ER/s2QQ9EDNp05yOHnNm5Cjq9sof/D+3E1js91ETGqIzNT6cgKFwC6QTeUc
dD2OnWkdnG/CVmyPcySjnN1IuVJ8V44Zr1LWmeWpc39/lpwkR0SAxrNWVr2dcSmxRnbB2OYMtygy
cLLBhf+967WJPeJCX5kEO63MYIKbpvZ4sOs/eOH4J4S9nLHOVCJIFR7U5r6/RVlI5y1KJ/ElalNe
Wa9ojT4FkKMYqmc2GAKtiHjH0Gbn4RvjFLCuzoSGqM28NVquwlCYdfKK592hcSeT9y7RQI59ffzT
fHxSFIrpvBuQDGKcI+W/5gtmQrMgJNDvlaptJcUFB+gyT2BWgKm2kVXuH3zbSQduTydETsXJ3Q0o
Kpc9IrXvCI19VefDKiAFzk4nZTBTSQPZGlxqozT6tPTnqfrRY3P/vhBkFUzOcUdgOudqNpa+DYT7
oEnZXRqf57asn7toEeQ0ULwP2tG72uXYxlYUWwHc2pXrlrjjS7Tm2go6mE+wEZWWfkmEch/6nfyW
sf8Z2PtTUE2IZJvRQESQ3QrHCnGgfWtPCySpRq2NAntyPLW5cWWio46Ps40C85qr67PrDzXPQHDT
GyM+fF/hEZ61VnNWWI930/fLhquc0oL6kAYn0GFnw5eVvQavWAiyzW0rQag7F4qeFeC1TGzfcOkL
p0BoDgVGR3BhKjhxM+I8uQeSAZFjshtqCF0p+cKI1wy/Vi5vHAZDf6/WWlLEP/NdA3gBSQ1LemwJ
VvzTw7dOHyNaiQM0zDwC/zhTGT+DtupifNfxcqWmhetn4r2W6CTOKE1Y5FQ9I3iWUMXdS7OahNOl
NoA4PIm0Nf7LCqrvHmsMsw3+sfs6lxPnZRoVbxQXtx3jz8kvfbMJFRWNLKBjbves2JMgvt43GduH
ORKAlH1WsV7PSf9KFc4Nm6gS1u7S4v4HcDGkDEHSZoDstVn7KK3HmQP99UkJURkstG7+nz//kcYX
4M/vnWjIARfHWfGYdIR3U05XdOjxNHbHltzFPvPjG6kc4NeIPI2e+MwQjyYVhcPvht/Bf/B9ivZe
g5NTSN4OsOa5F2emHoA6ue2rPKFfqUlF0vF+36ldpxGyVo/B0q7sVn7QholFr1VvvqGfgepdVEEY
Tld2ZOBunGdprpS5/jzt8qlAIvDecVQ2YzemFknF1t9JhWLdBqW5M0a7QNfqdEOBLfm0hNbZJNca
8aNqCkrsVC70sHSRO7ESAYrp9uvH7Y+Qb5mhDyXZkpSgmMUhR0QgcfxJAVThFFORewOl8NBH39HR
hKSD62lvOiMvIm6kJGPYb9aRmgP+SnrZPD12VPTcqPZmeJz4SBcGOmfw3JSXjC9TWfjhAjukMO6b
EnqVjehDGZsdN2MdA5QMi5QVydHxj8ayGThYK5HOGSQRtjdBX16ZZ9+TO33sSvo9fu0LUNdCx/BJ
c0OYgoC1C2pT/C9FrVg4O0rY12BJKnLEWUWp4F5Z3rijHS/2dU4e/ROma+eDgw54MQWhTDJxIEy6
B2u50S51rbOxFSM560OkMZNE36EUsoj2pxKtUo0gUAE//epBexl+vco1E5bvXPL8Jaj3wPmYqv4z
1InKuZSAWnaXTz49an0n+5aHDdzMUNrDib0mlNrl5wuuSUOCJfGCflIPNWJjGCnbB3jWi1O2/GAH
YX0KKWlEzK9CbGtz0spzq6pql4LIMeM39seuqcDkxUtoBTfvPgN+FG0hl1+1z4+/lzBW1aB8h5+D
fG9YRZ7jtuitD38ErEir1Rm2mgLXng6hMlpf9NRCs5pJP4dCqQI4x2DDhL/TZmSpu+lwfubTEyQb
wjchlOs+mk8h8547oQb2Fu1H9EG7bZY5+osRhsHeNBHTm0jN5YDvg4Ojl/SgMHDoKAFaocHyiWsh
9jmh5gb28qrzEhLfiivIoLYrL9FgIzDxrfF4LkuXo4v7tlilt7zVgqzEIDglC2mZoLqrn788bj6x
IyzJozg/Qzmz9jZJvrUjKoST6J220UVaPQurTLtJlz7+fyqjiP2R4Verb44KUpK1HA83QLhlAc5P
B+Ea/gA7jnnS0b5KOHB+1xmiEqFgXAHmQIglH/QOKPQfwr+zM2/W14piqnYl9CQof/VZdXJ/trfz
jpWVfBGNSCuH8nbbHZbhU0IwYQE7sMa8SEUBFg6BR1Nneoud3DZ4wYAKlYA28JfFXpK3lBMbnwpb
6VXGLVk2Z9dMlJamP0iSmNHVKzahV4FjsGcs/59NraGExXr4roArWEw3EhXEIfZRq7peFlyyc8RZ
D1X7f4YjTPYUVPHHMeBML67lh7/TlSSLUinyPSO1j4xASiGAKJILYvt2gAPuwmLJKGo9osLGKikO
nZMd3UeQEKFTBHb9rVX4gTkWGCIQlI6Gyx6D0mMMbLwprzCorSJ1M/sfS74tX3YlUn/RoWQI+IOo
kGND5JZbhEJ1NrHQSzdjNhnbeu4n7HMS2UaOYHITi38Sw46O7EcsHFZRcNYBSwhmm1Y5WMvNXx9/
L5cf6+wcVMReNv/2pl2BBr5OvLogtVlfBTju89HBvICENOzcyGgv6TeV8ZPEBo8euUojXeQ6U1pY
TpjmyNs0aRLSG+KWLgT0FksfBo5tHPoF753NIeaTFqsvyJO2fzMSdG0EM2vR4jUb0YxpvYgMrNQR
xNszth4L6LGJDkviRCUcG8KpTm0fdCzTgxN7B9wMtPmiGenz507tDNt8q+sPGW/WkBfCXw8QHC9R
JQ3+TZ1p38qB6TsJCNdtLHNm6cmirWjV/+zXjO/Mbhp8tARAbTuKJx9SvAcNcV3Au2BU8p21UtaO
p6s01H3A9Rb4UpQx+dtMNvDL6W0b1MIfgn0uP2DSltv85k1uOBZTxTocvCSRlpUq6NSLRTlnPs8S
W0psU6whugtmLyrZhL19SrAZ5Ctl2+QmCNwnBkdldipmRsxVGzSJYzqx9ZbXCZnCVxeoUjKRsKr+
C3pqCG6H4khRoIcF42/EMJkfmrRlQqVWmTum7yQE3TzOiuqUkiD8fQo1eG/DfZ5Mb5g2UeMEXUM1
h85wLWHm7dmu+aUNe5t6sJ5O36XxsVhgIH1hxaRyjL0k2VMPyqAFdxxDcdB851O09BDdlzPOrpjN
eNgYMCcBGsplZ1wsfTSCUfC5ULwWMjL0uO4MWiovtmUCXocJhMO/cYZ1RO1pYeCxSZihDLq8R9WF
46xrLWyz7FjET/IaoBp4s0RsxDhb1FjmK1XBgfQa4wakI6BaBfKXY+t50SC/xOvjHNJ9RHp/vq2D
wBOxYxBnDIBM8X/mcKTdYsPB9wc7Ra+wsG5Er6q0rZN6nQWAR7aaoEr61X9baftw9UhgjTlyvOE4
uPwtfFUtNoEAsOLWfzK90e4HBCTR0GAavXI8/dnQfgvFZxGLsMiE/SpBzl0lYqVMUoHDNs6fiayG
/SmeFSE2X+gsVCtE5tGxz3fMsZ4fBmf+Dz/m+VW6ZjrDQXihIQAjeYbruGHmczz5TzHm7e6LxF2h
vdAwGx9JCHH+kjWnId6sVpXLZ9/Xz3qO3YKFDTCU5eZM4LEzvttsoOQQSGuBg1d4/2vQTm1I1Xa5
Ob5nxQrz85pQ3kEA6aEKMd1g8CzxvRpW2NpwI4hnkdIKjuE0gUtSPUUasREz8F3lQ8HuGywRqigM
/Ey9ktxsP6U2OKeGrfdktwVHxIIOnPGzvPgCO1OdMyiVD8DBwMKX8M4xuv6BGFqegSy+k7IWx3oh
wrz1x+/6oJxtRV8PleG8fDSFPFOPo0yWI5qNSRa2cATI+x+2NkUmJg1XTnQj/F7LFRaoigsMNNtP
0CzT75Xk60H3LtKXomNkN80Pzdo4CwGGj7p+1fGCmhnMxPCNRGtX+C1NtOyO5PFJQ5RdOOa9Vf6H
7ur2P9qQYfWm/VYoGIinwuPs0WKjDpDHSFq+T/6Wlxu2h/BwmXbPpNZ2WoK39hkHoAZaRtnOPY6D
AkDxJFDVTdpnDkZKrdQPwENyzAApl+GRsBu1M5skmPSunkn8qV/cRUsMiQQ3kjq/9eO3QncJ7qQV
YeIVLBB0sYbo2P5VsQQ1MNe7GJz9uUybWgzPgxVppMe5Hq2Nl5lnV+NL6Liy3YeLydu4FtkQCX4L
WH0e4y0ZCKe4ExCtsE38LQ2htWFpYmyuDJWPsjjoRZh66JbA/+SzNlHmqfgMjjD/4mHcWwTQEt5+
lcBPY4MR/Pn+iJ9lLxVzGqqY37SLfHe34rmPPENesOV7LVQTStlMK8zBxZhw35W8cnFu42auDbMG
FGq/Th6/MU5lAMw2IJZPDa5d2IdXq24ooVypofnWLWvk8YNaFS7213qlmSGnFzbFsqi4Ry4xujM+
7Ld0sCzXMt51P99s5HYT3jk7pjLgMnknYnM+y7Bj5ZlqvIVJlTUNfNOThgjTx0sTWKOAMZ98dicJ
gjMLP1yPhmSLEMbnC6Lh7NHfjFnyfw3SIKSv+tx3eMlJn2p7XOlT9bjfgH+cJgHOjlhpOrWEMAJ3
DNuCxGapURtHtCz/Hn6MKb5pnnWzih5brQFFApJA8EcEQH7TrLndVxhJAnOejuRjTiB+vbC+wH6G
JMbmvV1xKHll7AhkpAReEaon3igCIU2LMN0NeBAvUgZseHGFSbIne9BE80B4JE9N4R8cvtF6PUiw
aQCXSAagzzDJa55/4jVgXdVxb9W0PAQ/VwwOv1hal0L+aZvCYdADsAdECxP7nhyQn4bDOs1UJb5N
rS0KoCaLf+BaioW7dGCQ6dmjf1cor+Jsva+usVgVydH7UbZ13/8EPoI6xho3d6pMZhyxkmat5bYX
kQtkNHpxTp1RTqN2ZUdiozksJMxaQOKS3detu0y/rwz6O5NIUFPozlPi1tjCXIipmDJ05Hk4+iPe
vbrhQNqWYyaiJ82iJJjNPpucC0Umc0o3zaIcifPEQwr369HwrL4+Jc/xOoEXT17u8Kz4AU17GB3X
9OIb1zpenQY+0U4aqddMVsPk/3GibiQfNCJhDLPFXWGIDs8HleYiIIVZGLtuR0tn56kHomxtGESV
3KL2H2hlWnTSGCzIl32e/7DhLoVdn0Mgoa0ZUrzLv/kqTstP1OZZhuSjbKemagVL9ixmH7OW1QoM
K8xEuZBY4uIPKb4Q7KlrftBIkwzlRtJJNacPBqnMiOnXTCPK2Rv2CQZmhVKn1b0biqUATxyelCqb
oWqlz6zy7g+ZE6n3GYb07AT1o6fvyegB4S3vf4RgbytAf/zls9y/6l4wZsCbe0TzIeWEXZKZoDaj
aqveJkLu8I57nhm7++uGkom/Z2A+eZQ7iJfNeydrosmUrqkupzD76407G6hIJRV2e9yyYMYq2UYK
b28HS8nUESjnDdxfxP+uKYwW+LjfJ+exI2A4n+wLcpGnfLkRbxyKNT3g4xsfmZARUsNm4WEWoWEj
sib7rqsURgEuNFvnyCnBhlKjpqLwrQNg1rQp+aAiyKwoR21Qb7efn9f+TrhgbYLSZQlebsEibeWL
s/4WPYnWUslPmgHyDnc0v2jGjj9HPD3o1cM8WJYew4Dt/27JqWMhnJ/nABv9d0/3JdGvQwULWKZt
AKTyzxKv7ElLgqZIIN20NP9TnHWdAjrJGHlzSTQzAIEbfT8F8WuV9qqgXOvEBFY5k1u89cz+HJlA
HQXtl6WuvAwp53L3O3UlOnkYxcShvlTfvs9OgzvgVhptB+OtK3W+jGUXWB+naVnFBHtXfe2GzK8Q
GqBmCex2sht0P3/kayzIatcXYstydhwfA0+yKvHiexFFmGeDh4OYzs7BVG5t3JY+Dh/afIMSf84Q
KJnum8V7GNHqpN+RxVnQy9INLqsrW843IHRLRxKGnoU84Vr+VK9x+/3aMX+2YHnisHxjA+esCKFf
sSVUUIOiIzep34S1xcB+RSSzslx2xckeWKr2Wl+Q41bVh4D7X40F+fDhWdEkyC0xbzrMwoUlFX5D
X2BRynJDeKVUyFcz0sp5i1VzdGnOr3yzhimSGNuESduLVnOfXHBlA8gx5INc8+EOfhC734qkKaa2
s29cUyARyL4jnrPN0g+nj1NKoX5bMjMPg94triEA64wvz8CToilsOj+gktnK2HMS2GKH6U7WDWVJ
DDCuXWCD4epoFfVzEZJiODxcvX8sVPKSdpBiXEgeSCBIsHQxVabvpf+1iTW0C4DLZuz5yVSSpEB1
X2Fjx2I7cg1vK8goluDHndDrcGslYpwHketQZAeiMg0FvtCfjFjIM8KzLPxU50R3Rlpiwh+IfkDB
BfyYkFU5/MYJ/6KQJrx3ycR6yVO1QNMjAWaZC6J8vBCZzD/OWMh1ig68pxrNyrQE5QQKnmnKN81k
8YXQEZalKXVLPbFZ33mmiXbLOzYRBFWZjLjQxGskRcIzSWev4CU3D+zeqe99eZlCn4XBfmnmMOQ7
B030KPX0aCnbQVcw/Qu0TUtunP5H3Cyp7/8c2bzx4OJN28G3yQB37zS7a9+iYdfdffFf+YdH7c3d
aSkm6puB/d7Yjb0IuY9k8IL7rkzX4KtGzhQ0Y9gOXmTrrWVI3AROXoUexW9B3U8rX2w4fDcdU89O
Aj8AA9JKmXVStFoF1vAeA6iPr80oSH6oHbMoKL1QB8E0a/otB2EHk6GMboYqE8Yfas+BX/oReA3u
e9IjZLjcDdzEcKZDMpbzFn00MWpXCDv9driFglfqfBqHubvToWLL0NIfZwlhyE/N/QIRxZX/TosP
XdnSQhkEPxvvj5R+YymOhsTZi4OA+97CRZ2WxRqa9bgh07DRuzTx2lHvpatd2lVUZ+XOq0k4izir
Pj5Kvr7TYOXzEsRDOXsImdnK65IBu11ViSIYi34IPG5WLhbvy/6m1oaqJgjKIPlAn4G+c4I7VDNG
WdW53T4BTnXGMWyAjNkC+bF38W/FAwz7pqr3iJ2lE/87CMsT3Ia+m5Lg30iwipBL8OrAB0z8VzJ7
qwGY46096WMWRyTgxVvkMcp4SlV7SyhC+Dy5gD7Z/uhRoNyRgpHh5ycNUJ6JYnBOuA4Y5rbU7OLp
wShDjM5iMGdIkoEsAJ2Dplnzvy6Q6VGvIZsLt8SsISyjnaKlZGYNNjhIMRydp0J/wdY57XUqRlBl
gc9uWFGEReAXodMZvMgUMrfzAE97Sj94Xs2rwnzfC7IZLLkv/NeijQEVHzYEo3BdwtMNJCYRKUHB
Otr/Q3rKE04M1Ruvuhi1mGubRg3VWbmvRA00Ja/ToEiqTwObWH0UnUpb5flLUvS6NJIClO6kE7l8
r3hmFRIknKvR5/H7yADzG8w/UH9CkTYIyrdek/Xr9ok2auLAgInfLAMLuxu2O5XP83PCIk+1uGjL
YfOryp1lvptbz0AA/KDR5Em1DQ1XmMZL8sx12kRzIj1z5ZncX3+S3YK23t/iaysTz/PokqoUjhqi
jw0X5Dc8xqerPrwbXXD1m5t23oN4zjMTYanUVwZ4rLIHj6oaStbyMmAH9Jacb6DZuJpFGYfH86YI
AsyPpjzmb0B6Z/q7X0a6KiwRuEoqwMx1+12QRUyWeonrAeaFhj3avrs3G1ZTa+Whb3E6HZJx/UAc
A2Z+V2U40jFW1Ai1Z9f26rHuVT3+5qQjLQsvxKyR0PyQkLrqRvbMBrBExEJAqbC7CTjxFfUSQ+yK
1uv3Io1E3VwPZEktXwprf/zmsr6wJNqwScFTz8l8c8Zw+7fasz9xXqnRjXCDzvH3/D/3xtOwNFnD
smuNALOSr3caawSuKtDcYOv/PBfYHvics9k7uibAnjFmnPAjjoWjaeSjQ0/G3wI/lTQyV6m6JHDm
acFc/eN1bSOHb987icOKKCFxuG+viQDdXDccoSD+BGrXckREdcVt8UV10vSwtquf7V6p9KIbRwql
hVL1MqGuFy9eQ1qywVLIpMcCoRRAplK7urLHE/M0vSbcg/eqM1dBV/JO2VL7SvyQ3ukT3hTmjf4a
wZG2O+yZKW8msTmGBJZR9XaesumoafhmO/o0UzNCpE98/ceQe2Z4Q/RqtvUrYVXpE4pTwcueiTKf
d56Ffjn2R2AXV/uE97DetTlqEU9oiMWTdPM4FxNuCfZrL/RzN1f7VKwT37cda34Yva9WVp5rTaP0
ksqAPoTTsuVyUDfTCsNYq1J+AxyWDB0B4k6K8WObLdw2Y3ngc0F4xdUkyIykvJKZsJMw3Zc1J2Kh
GNNy6JWicVSLFYb6ZIokOCFQwZZkJhAKHjAbirB4NpJD9HGaJS6apWozpEFO5xS6CdBZ8Gwm5iBr
TIi5MWNBWWqxSy90mBcoJcX0pOK4sVVOs++SN7Xsw1AQTtmcL9mY2eSMX6dzRTmw0wdyx/bVBVzf
ct2xHlVEGDc8Ua7Gvu80RjtqvegoH0HfkIbXRTPDXjg5n7Gf3x1LTMGNXob/muxZKDDiZWAJZJFp
G6N9RmaGHZl5vB6EVAaw6oq+dy1wppW9470WpqN0m6PfmTMptZK/jD9BKNEI2SfDUuWuHpVdDdmL
1+p44AV38HH/MhLiVwdedn1n7sAWewDXlOZsUUqrv1X9fpEcqPHsqdkBbpemfbvyvNCVjaSO7IA/
qf34jF5f/IKHKjMOgMuWVIQAw/BKC5/oC8q8oBS6rnycj3GfnLEVmeGkZvyUQf5SgkLmN9ErUzde
bd2jEiNwiN79rlrpPogmlnsdWvej8y3hOWIkHsbuOA+mAj50EPHlvW9zrGQFVODun7dEURpXg+0b
jgNN/u+r4ypzd+0HXvJnyztTA6e8HHw0cKPR6vu46ShqGSFJxVxL7sAnqO6OMHVHy9/ttQM1GfiB
ZVz3FFZ0l83GjbFrOD3k4u0QF0SrUA8H1h1g7WEDg9Gir9M9FkvKsIfzhnrjQkKSC1T04k804tyE
Mja3uFagHPJJsH8BTTp98DEFP1MM7KL005YTLnrNCGW4W3b44MIpJVbW5kfwFX4TvmW27NiPMrXl
bvSJAMb01pa6UaEKhqmSDyI0F/CM2Ij3mGB5d4gtOh6aqIvAIV5SNTPgBqry9pOgG38ap+cjfg0n
UPTAvXfbR2DMmYhu2Zl2+QUkpCt2TgMi/Q6U9oXSlsrloHvfEx/tDiHLy69llWzN4zmR9E2kdLnP
n74eRACZA+kAQSRFkwSBPe8q2cRkTU8PvKnvhTgum5yH7NxAbzI4DHHVD4ElemEvLYm9qwGp0nfy
OzGy/2hEskvZcrBqq/LFsYCGzciVjmLOagFcTlOrKruUEPAxB65Cw047QAEylL+Y0poYpDSo+k5S
y7pQKbCsJqxl3Ozmlb4YICV5+NQlsvwrPBdk8fSvArVsAFqStm+5Yo22/ZjiMdC+M6klZgsKi+kg
/oXYCnJ7gmymO/KJoYx2jgaAMUHrLYuNUkLRIFR4F+8hXg9/rfeqXW6ZqI5fW6cX3R85kmSegsUr
Fvt8bNjw4n8obbaptRI0I71xTGtL/Up40WaVqHtawPleiBL+CWnrjafzi5S4MxVNYc8qjv67nh75
8lF83H5DqSpTx3XmYK7YBPluMsMZMdENxkJTw9oZ0iIuFXXgbTLoyJ+u1mFeRd/PdunZeseXi3Ny
/Lxrkw24wyZkwRr/y+JCVqn/1DJGuznb07/vj5IidNnz8dVb+cnF8jE+rFB7t70/LLpjNX62dKWF
tiIP79bJFIVfIzBBWkG82OuWcNkLzooqeEcEqH9Og0yxRuCBytgkamk1Na4+6jjs2vYcC0y8n2Yr
AyuAW2vz+R5euPZzsuU+nPvbAdBXozxGEAAWYYICaMYiryhY/DEwltTOU6vRvr8pgqhVSPMfnOJf
/dp2/DiZuR63YFtMZEOFYxvBf9HNxiNIwydzLZNsTYYVZ+lxohEmW8aQjsIQmktFhxOrQTSsGsiu
/MHe59IFfhDc8Sqy/rS3yzOJorMvNr1OmgFuHFVeIDL6sXMTbTt+ZGzLH6giF3sqNB98c1ndwZWH
MDX8PUpzfRetkXh0Tj5PL9c9gpNKD2ViJboZa+DCZd9A0JPjGlHaf2ZDNTMTDth38elAxM997rf7
TDwHzfcipAWXvYKflsQ+65FQiJbfXPiyufOdcNcZs82T0GuXKw82wHyGJq1dDEsg7kUSi+48vRId
lyuZORyh7AapQnaTW+d6zdyOqtLg5TLgUPbFUgIlcBm6954DfptUw/Iy5REMUPEPEiiiWfDOV8TX
/dvfDJo4YvpUCm7DnuN838gsvRIbl+tM/VeNUzZe9uWYiSj7KcY/rR32SqsE/QKj69zBglW6kJj7
zfzlb/haq0/m8xTK972cDiPiH1WQjaZUINVr3f/eDZAR8k4RoYlwTqBYEVppckV5yo3/pnhiMORx
Rbz3AeNtozOZgFMlIwTQTPtVO2xQgEIRHt43AOI7O1eh+P2mJ2hVrCbLmAg3Ny8245mPw4ufcWP3
haBmu/oId9yL7mz9G3KYfjfMIxr/ymx3kBFa3Xqx2+jbKFBik4pYTFM8VctTWM6BMZJgeyBSlUX6
WSwCX408+ha9MdjT56CDOiB4j2iJc24llAKbCysL3hN2j7h5+V+kDMGRcCMujyIylygACTUY7LiR
X3vUcw06jyYgb0anuKe9UFZa/mmKQvm9tN/YMVXmt8CDEzOzcFWjIaJCDz/SCLzwEN8UvjzQGDXQ
vUgHYohmr9St6vd8mMuy6G4wNZhysGOnc5CnT3dVYBw8UZ4lugmVUVynrQkzhPqw3vJecYYqu3g0
x1EqfXJrbmrwWKFQqtx9u3XLZCcQWiHhMrfFOd7rgLDkAqCGDcl0wMVM0TzuZPEIE9cDknALcgxl
XTDKNy8aTc494dygrlQVTAt9PMrwYIksFOdjpn68ugv1qxwMRon5a/mgPp3xnT9YgXk2cVusifHO
aCvLArseqk1iiAJTsoc0YFoXVzkeMQnRPT3B9Ow3Gzyvsm37Ssg3qdfJz9sioAjIzKPXsDRrZfqd
sQdO7AbX+c/ez2CAtzw4kb4mpx8n435n1Odmge7XjSjo3H2WwWr+Z6kHbL2PYvu1ozMoewwWdkX9
j1GTw7N+we9O7yhG3TZi3nR63NbcchrO+JbxB3kXXbk+8ZNYqOuMjJEsNcktFvqPulXjuGrNGkvJ
ZNb/BakVTJjSG66K6KUOPsx3668f5kyYqAz+DzrCA9TeS+/5uGhigu69DA9Twd9oehNXu8DUxHXp
qG9TUE8cUxEJR4MvlQpULCG3YGpN123Z+mciAaEnsKLe+I57ZIWu4NNpYtf/VmbYEPr+qRnlFMpr
TklaTKE9Fte7xWX/13neqZUjBPXdnNuAjGcEZepEmoryIr5VIn5j5SdiT4Bq2PMagaqXHT+Ll/aq
FvBSqfMoELBZ3aF+t7e2SszJwrdwFMRoX7okZrkRUkqu08JxMPbVgYxCGLJG9pvaK4rBoszTofnL
hsrEQjq7Jpc39N9fiQItUU+vlgBYPHWBh7XB4hlvqki73JKT0YrKQf4wTCKwBd+0q4V1BMEld//i
BZCNWeH1OHCvJhfE6+xcbbO98oQb/n4NKWg5ElMJzOii1Rip96XktbbUbCeHKyzOb4fMS1VfhmmY
L2xOcT5WlBvH4QLTYrUdAqvyrXcnY12Y86CLziT16pwe4az15v9MU8YjvWV4ILV/UA0D3Xyic8P8
uZqaCljewCkEiZkUrTOH5665KMe4qH7WYgesbshPY3hz+gbCE7f96TtmwW/F8A5Etr0raIBCcnvW
WIfhZchG+zKirDNwKsVfCQMKnK1LxeuE3J0EJ/aDrX8JEtk8XC9BUNgEWrJ3Nv5+EgGedtc858s8
mVZdMFOjHxcowKickFjt0FOt+zq4Abv7lrYH+Nj9ZB8oK41WyQkJ7Iuc2B3l/bxBxP0OfaBoTLWx
G0zC4SnNI0teZXwRk1Inhdu+0l8fxxIUXLALZ3hLy5Fd/1YxmYnu6ftVF45fNieGuGMmyLHSlQ6n
Lu9NYqq5OpC93Y/u0iXs7tAdCFHM7Y8bjVnbSUtV+fwbbh4dS98rku4N4SO2gaVS9xfo9rHf9njg
lapter0m1eZsPGZKnuovr9lIE7hh9Zdt6m3jkcbYFfCIKYeIxJtT6aS5OyfN8WfymgnvLUuDlCEi
YkA1jX9EiFCKulUjXsHJD2s7mDkdAx+2uGjJMwRXd6AMMyrPJitePjm7GDRCG3Z6oz1syykDXrOD
N9SL9Aj8Iw5OMbq0PHTa24XqdnsxQizNRRDIJ/9uQkmB1r0GGgK8NnmAz441h2Sy/5AHaOeTYbox
loiqVSG1UgkrxspOO89dR2yosxiFzhv3GtAbX1a5hpZaFAlcyr9TxfQ9rbST9O/MLJjVxkTVQpM+
Pl/wOBVDV5cQy2gUck8PK3lWcJdBYTQ91XjIKhV3R/+k5H3iaKsPPMIzzqPz5xcLT4CwAJat/Gzk
Wk7GigoMMAemjcQgrm8ASDs5UJr54HQmbpf1VPusb6PL5gCk0pDaGelOQs8HDb4VInMdvWiIEi3Y
74VOvE0R2RjZFfIw6bSSV6Z0v0K1CN5QFgtzeSDEhLqcu2F0YFi3IHf5ZFWo1uPtYcJNkMplqtFc
3mu/NfjpDST8vF2kwa088GLrU+fRxQezpwuVXufLgBQycbReIB8VhpI/+cced41kZFP9wnNS0OzC
q019siJ4Bgrak6tfsLMqVmC+uyiNTtRmwe/3NjF/9+AfBXYp0+dnY6HNoOkb98Dk8EwVr1XdV0CV
sK2L4ozsr1fITHxafHw/bAO2Z5UTl+tGbYCLKXcpHsZJP7l8AgWq9inn7XMABGsmGhcpCEczsE+N
5J+iT2mYoN9IGtwmrf4kIE7p+pY2oA31mNSUGMIwTChsWWMppPOFdIrs4wtn1N0D8aza6/FcpUFv
x4/C72KhhB1AMWfBHsce6uUpM8hFz026Sz/V81e/zWgvlVtrsYGDK4qlM62dkKs+ZJ7LE397F8zJ
N78BEmFm4LFopOfuyTEVbs5h4NRPsn2szmJqoqTRug2Y+R7+ZrsuNzmGmMsXltI752PbkOSJaMin
SLKyo+KU0UMgP1H+rapNt2u90qqiE/Nlen8QnUPSPQ+5T0IhbBStoHyHK37u3svCocqIFRuXiWq6
sZgLM3wfWY3GukyDJkj84OIgw0tsoJ8/xbZftIwXy6AOA26HMRNM5KzQGCwUt5joL7MSQuaXTifK
rVpH06FBP96n7pJKsQkEJnaM3klgrACAORA5k2cXk6SF6wqJAo72lWH6nTEMuV4A+MZDyn71wgCa
OaQoBfy3pMfRHgQJoQKTncGXOnmTWKGf1H3R7Xzzq11nlJ/4HYo8Zw/Y/Yd/e3LNq7LDcrGu4OmY
p5Z5HJDBhzgX/zquO5YSOTLxC1sT8xx/P9L+hPFol6KlcJwtBxTB+YaFLSrx0g0EgYAhOcBMXBsC
x+6IheTcLQNfhLhMqZTfUQcnOJYTKpdnDUZfx6m6piuDedLB2pAXVeatAh/fuBN4TJtApFakyAGZ
OPlSpiClD7ovSkHYfrUovSs+c78su09IP1W6s8YxTRAKI5QjS1qX8eFIT8zk4Ab4ByF+M9sSyPdn
rc1yFHWU2LEzRymyW+0ORAs/yIHvwdRiol6iY1JAtZf9XFz9n77Kfu3E45/la1rb4CBValTzO+Ph
4nja1uCJEZYNc2Ej+SkrAaudRC/ZTbDVuVw+diwyubHsDliE4uNVPM+9XTIGTkp+2Almf0DniE/+
KhXga9fq7qGQ9IbBbvUFwSzWLdkk2YiRvMDXWsG39mCyfWrbS9K9DbJ8Hn+V38YOLH2Ap/C1xPAc
QfGTaHop3pdKFGN92vVXvyOI9ZENOcVCgZaJBaP8Qv5Ap7K5jqHbIaQP31vQgxnB8T7uCB11VcT+
4XaGwXzMcyK58kmyalrpkI5RFjWBB+89GlV5CMKsCaNn0txqnSfZW3qmqDo/bS4LwOYXi3WEgKy4
c14/rj9OfSmlNG5/V+YFH37MtZNBrQkHxKDGHa4rADPb5Wk4zfvpYbhLdBUV33oQW+qSPgUU+6Qh
yjcIpNu2QCNVqJzZHKhdMFkNXOMC4TQq8rNpqNjG6Z59Tcp3Wl2OxYGgFWNLHXseqSXMB2Ji+tW5
pRJuPTWxPYqjQYFz3ZJtzsFkC3xL4KKyWLuhLh+cwVZmBb3vFFdls/6aDVH4iFi2183mJVEGlErw
X/pn904pDnK6LvbqnyBR/PUQDuq9GDoLT4UnXj4I8iOcLJLCE/PLMdZv3zCflvS0IiFvYCqxFtv4
noCxbCX3igX9FqnGO+EhqWnxPQW5k5TIbT59xBppkF6dVlmD4nPBv38FEUbDz2olf0hxKI6Ln5kz
HXPx29aTvRSLymYTMVwm9S+4GXbTb/yQA2owBDShdjLtG5AqkNL/L1HapnOnHIOKLnujT5SGVyCq
cRL2+chmELkpN/PUyfIrkymV5BPwldLbidxG6MsnaG29xvMrSJbpamrqyFsdCTArjbLchb//uNWG
YVj5f0b8HBnhhgpTQdPjelAOKyKYHGHIlM/aWF5K02uomoMMmbAh83M3QAAdJVuF79dm1l3uYWD3
Oyb1OEjwzAdnYykMIY2EVhR0MvRe2CQo8QnaNzytvRElZtpIg/QQ+mhaSANKiabcqHpCz4Iw5Trf
s8LoHiqCCvP8M8qZ93okqHxZBZWXjl0XCVo+2HtxB8sPGKrOEB1Mkjc3t0l+V0af5EJJpbQpVgaf
4s8+6bQWnkCkCaEX3dyzeV1G6Fij/6it7DEzvqtvdw33qiDxmeIrvsHI0rSOuJZjMdMbQxhNKGwI
8kTQdQwlf7UY7uqho5VWGKad/+uib1R3n5/x8Ox8nPnmhanUQQZbSv8h9dhWsL9Hx9OTF3yhEIoL
EjzMdwA6LMWTDx9pYqxFP11C+whBK2X74P3UmreU0sgnkI+52icqjgbZUvh9Vqvq91oJwjoAN0Vz
1xmSo67P5l0cumD5awOWsx1eMKYxXHyiKNsZGauOS4GhWxHgEAPBMqrQOWMEpxyOrjzdBobpXQ8v
5j29XgS22cLfaSVWIeNwBqtt7iFcyMkcJIWXwtXrLbX3ht2tlvRRjO1SGW5fa4ell1bLTBYyzcXw
L6ZYGW2jlSPJh+8yzZDhtfPnpmaaE011Cti5jFv4C6UfRKFlTPvcjDYdoGbGm1ipwVkzVfHybIdu
92f+LWKhI/C1/tUnLEq0OK7JURIuxMC1i1BYOpuJbUQCP70jAPM2zGnbsl+CQMEDlcOU6T4DZV08
x35okwwy3YswO9AEeoBVmVHs1+PNKOahBlNLTaZZz2Wi8eAd2cCexLnglvoy5ijY+S/Gu1Iahn7i
OnNhgyFi7B7PAmlQnGsobpm4EcgP3/P7yN0kDEZdKojDudV67cN+zu+cNaXBZbB8B3NEXUoqgS8z
H5qsZJbn7bXbqiCOy4RSdiGLPRJ0+D0emDDRq8g8jyoY2GSnQFl6S6qvhloIVwZ8BHE9gMHoIP35
lJucxWjQX0wsByT1ApdexFLOYoN+2dXz+wqeSKJ1TfgyDlMNduf62BMPgs411dXRXEbAC6zrh6Fi
bdSYUAwJ7yBIZICEBdHwSPtkYTsnodQj5Uk1TE7mGz3t/ti4SbOsjupkHQTIwjfwldEGh+6r16v/
aqlJUt+mN9p9qsc0GYm8BgXQ7lTSDtV6eD2svoeYXQa5MAVF61WFHpLr23fe7w2tli1d27uIRYvO
WN1IjVKYFUgmcJgmYxhsOdyT4eIBlD/KvRk3arb3u5kKCsy84VooOyKg72Dz1a1WWlab8ND+tvM4
dOAeKPW45LsIaruM+DovxLI8E3kAX1q4wGM8dc+qNvpXBQNOCiLJPHmlNyoOuBmSBWOVRqVKkYGK
kAVej8FW2T12nuqJRMbUfZprqroeJFaDLUvxQg7GD5lOnLgsBm66wo4LbIHolH5ftHWqRoE1+1Ik
bpzHb97e2up+Q2sEwlIOVIo4h9GvPRxW6iuEj+9O+/kF0KM5zXdyO4UtHmhh41afqbPmWgU6gB5m
6nzAgNvo2j8oQIKhPNLK1JwkFvPYH30wBKSxg//gyhtansNVD5+BWpIGEBXVydopzujmx2RvvxvV
kxOZx2iQEDT188gyuSq5rH8Ofjobk+UmNKmH8cpCNJSnYSBa1W5aW+hOTnmMnV2ROw1uHy2Ha10i
Uvy6/X04fVyd4eLuDX7gq1/75seLLhUIwlKPceuFJSxG5ObOPuCtT0ZHuUEwpzNx3FRQ9F5oC0Zw
QpvSdyfDrhW2bNBMC2a69U7nQ3+8C6uxGmk6R3ZqR1nE/XdjLgu1xY9tjK6Q7C+KY28a9KxGyqWe
QtjMCjkz+rabN4/x/N8JDsQR5mR5K1dP/z8Mak15/WlzpnyVD1fQFKunmHOrOdTiWOWQmxRWnpku
wmthOvV7XI0lirAlOw4YOmLlLvuo8RxOxcOpthDAkN/zcmEsvpFKzBjMqOB1MUDBPa/WyWQf7xgW
tZxYijeN4vm9qrl+TV2lGkiFljG+xojF7Ju2vdsg0PsgfzV7w/Mdi/bSyJYCPSEvbGpIIgUwNE0L
VIJcBiGZXy23vIq5yJiISm5P+PF/s699wLzQX7ilEPgjaA3TrLNrXX00kteBUTPHc7wIKNkoVIy0
SkYKc8NoLEqZrEjSL1AadR4hNqhBq6C9s1pmoSwghZZymurDSpFrtbhFfA3IC6Kfk2SWNIi2HLiO
4cSdMioMCtM04czQw6Fz5D3x7qcE22MOmgPJH22SJmD6b7txYJ2QiIuqj87kc8VBoPov5LHYppxb
OaOIxuZlajed10/+dAXC2/BTsueeKvjRuACY4hYUgMy2N/IcxrCN7De6xyqDai128a4A+1Pi+UkL
WW0OdIP+pSlCsCWSXM2pRz3z/Pwp6dK58vYvb1JBo+FoI6odzVSS/5sjTb/g+s4UInATxrLO8Fip
YQqksFkyH0l1LcYj4UEM3BHaKULNom8i70ZCYKym217b+uekfWrEJnpgQGnuEbBo1in4f82mkzte
HSZAUDWQsnjNC0pldd8z5lX10HiZbjJiF3AVT1AAxEm1S9hWC+xt8vDSaUiZqwGy0N7qf2N94b49
hG5h1djq8TG8SM2ez79uab2rfBwWCzZhcZY5NSIKgXaNP+eh6H6LtavvVyiYecfENuXl8biBDmJ2
5YehtZE2gmEhdKBEMfZR0kDS7YaeuFbAuFUxyCuA4p//cYBzk7ZcUDNLeJ9UJ09pZ5715dC+FNrg
CSvk9usEWbxfw6+hPV/iykShaMjQkhBENckfPeqthAx02got/GT7W9NWqEwVi/2szR/tiFROuk50
sBwbITslihZmdDpUhHFNchjT71oL201olsWmtaJ++x3ulBAGZC3qgV4Q2VBh+m8M5YOYGsGygudf
OEzwkRO5/vSZOa6nQJyftbAQv8cOE0m3wsqCw02VQWX5BNUlINBpeRxKD5uq37lur6rOFmGC1OOj
MeSo6reOD0k0v05TE7fqT9RBTWWwaaBFrKglyqG6Yo/1zTBvbd0Kyiqa/Md2pbAn0QaE91IWVpvy
xMlo4QlR5QKCUR/cdtlR21Ui+P+qnhVR/NT7GEXYBL6nZmoETZ586POsxnyhbDu8Oa329Y5CsivT
9xmoQWABhcTf1N+Yf3RFHU1U1ec2QJk0irMR62CLz43fsdnpPMUNVJHa+ViaNGo7urcLGMO5XVp8
C6TM3H8xiUjF0epVC6i0MvKhp+wYDT8Ttnt5ZLKRACKR7XqE7wPju+5GpVqNLPcRkcAxNmLH2P2U
e60fXCshTqiUXSNFqHXufz1O3uuAOj5AleMUIr/Y9Uqy6dTKTUPjGh1tkt0F6H57tNlMZnL70Jrk
hwD2QEKnJhJXbIPIjefaPq40/QZRW55WEFWoc4dWZO9Bi6Ecp7hR3awkZL8/8KDY6maJqaWKyiWv
mTuml3HXcC5+4S9RogLL4yu2suq7Bq3bk6FVc7N6Fgm0ihMn+NTt1ugfi88fpMEZIkokO7XQB41D
TdLP7D+zQW+G6iSzO9UtXrzvS/rDEP4vzGWpHpjHJnPLnsjCuFni0fhpiaOXlj7XSgBLkyBSdAeo
pnDXGm67XKtgDTlxoa0oUDz+ayqp7Gw+3KNMdFc5x5vC3fSRA3tCqZh/kmFCfJPQFDcAthKiAU0Y
YkynbOaxK1AvsgnEg9SEkYfORVvud+wYTVSFiU+zs9Pytx/4az6wTxM5AoTzJBGYHdColOkmU3Ln
/yn4efNmy/EHVCfUdFqxHAamoua9d/EqBPIKYCDnMiWY4HTSKV2mS2MKVDmT6qzktWVni0ruWFQR
cMUbZ735wNaCHCqSAi0uD08mStyqfwoxsWDyrO2+DLxqDCiB1T9QOFU2W7Gd6ZayUTjSOBcyW7Bl
xHII9cjgItDM3Bq9ziN5TfAg8xfMtb1nBNXNRo4a9uMloLZegqK6nFb7fzhqVPJqp8s8iihnMlmc
8NiBsgvM1RGPN13Y1Vbz9ntsjEuJcHDqmFlWuoI3bnf2W9Q8ngEU3NoK7nmR9IL0cqxg/rFtDv/L
hBLZn2OCbzXw7GvzDrcD2wQJtTY24gSlIQeYmVQuefzM4/RanlpKC/Tj5pXb2lbsSa+Y5R2cnDB6
nDZjafINqTS4gpsCmaufDkNNYNBIkvYMw+j/VJATOEwsvCl5t3h8833/sWywG/+S7JdnNlQz0UCf
zFHNTWBkJwiBss4eru0Oo5EzVm0sNq3OKglP6MPWgkGiYNgQicAitiOryzvki0ICcxVRVmBZvnX6
hEquNHdLNdD3769XvcKWnieUApUzFrE4wtef9C3Z63VzUbwujzLVKKeEVEulCvvqcx06fwIcpPoo
uzCrgP7G6U08Mkf1Uki6WGXSHPvhFz0JHepFGmT+402V06iQ/nFJZwSS1cccIiLm55Oc3mTLhTkC
/JQEjHNvhduqeugccs/GjFKNk09JywDa+FzMYOU2HCkAQ8qRBCjtE56OlE2ODZIkc/VzdIaXWM/B
rcm8ZpFb9SpXk/HF7fZxc0GzWi+Q55lqfZLF9hyc6pmk1RW0qElW7JZe2XRMYtcQvnUaAlouKfEB
mXUbD5HU8g50ym0mZMrIpXWMJTshtKbjy6OmLoCZJC4/S0YpuimUIgfvCoWGEUGr+b/k9bgmhYBq
Q8BXp6/XzALR6MugHB1Pt7Dc8ijgTtQ1bdgru1PGyrJwh/OeA75d90ZkMg5DthFM8xurPOs2VCbt
gis7+Te5d+2XMBhSYvrZZYHK9316tnxy3jxH34aIh723K2qILh6FtdtgjEaTx3DaIEHw2NwpnrWi
yuabxS3KSEstfMMOuWk9ktAGrUO7bKoV5sHeDETNELbKLSLSfr8ldnc/DviwGeCa0shfLw45Kide
r9f1VqP8ykxGMG4bPAvxUzdCb9Ey+Z3oZjbo7viG/R1QtVAqaYX8q0K3f1wzTNVCBQApZq8eAZLs
zUmDQJw9wCsA0Nr7vSiy5mwkJFCfprH+sB4sR4/zHyNOFCi5iYMZDNOQpy4+0zpTB7CDK8M6wyho
VYWWv87FoZmo9jlB+RenVo7x/oY5uKWveHDiFQMqC7n1Jt4V6sWaU7TFEPubAZOk03x29fSwkV8o
PAFCZpAoljhdofh50sVA+3TAhxhrIuh3Fe+s1bs32qwmPyNyx4gogmk6BAoqFmHyTA46TLDdSU41
9X1Pcqh5iAREJtIVPc8IGHll8gy7vvcXQ+WQFMWRrZUs7QmtQtnkDTbfeKmpRT4jweGaop9wDUrw
FHH54OQSP5L1v0Dwh5PWom9ZL3bEVcpxfECa319nrrR33fNgI5v92MOMz6pMrY6VP/ulfKfH5d0x
3Dia5jLhIbWvXATjgYfG0XQplKc7HgEvzho1gXKPvZ1fnpfj21zGjNiZzvGMXBmqSXNUE7XMwfc/
edv39wls1d7ZTLu91oMGJuyTXX3sr9BtoBPVM9ad45ke55rSQWU0VU8UpPjazxFDkEoqDR8MEU/Z
l904DIq6Kyz1N7VxRkIgHKnMuFQ0Lavv8695e9pN9Gvznn9OaJjxio/HoV7jmyPdJSMlvMIQyQFW
wc9S00SV/c9yXmTMLQ2w8DZOvyN2lzQqs9dN9dLELXRp9TYwGLl9ppBef0a/3pmmEWoFqeIT9Y3i
OK4brxKEF0+BeNFRZLlDHq1DaEjFEl5zG/M7g0J/UhuopAhgAdRQgo1S9UNJiaKVCx9ydfUdfQTZ
zOcZHAZn/dULuqVrgM260CyFDWwhNXMkVrHm9LA6E2nSIczAFbMCuKwtUS0cqNEy7WZHe34KYHWN
5KMEFFj1UYug47flFW9iuf4GQd9XVf2Z9kVS9tArxe4Nu9OB7JCL05hk3SOxeCi9Tps/AmtV4LG4
CE/WY6PhN9zijiWivebuEFevRRn2Z1hHlpxUUrYVGFOi1LFtx3pxAXhXiWX+HBoj7uFCZHw8qsjV
76i9Nbx/nkPM+SacQkmOV6RC0cuRql0I+hPwngeF+PmlOFrnBMaqnuibFwkwNiBMHsmpNdwYJv26
ujBJVjUWzaCXMXmQgtk7dceQ2L7MV0VFj6tMDpOuvkDqeNZpqX6I6TdSHD9kpEh+Oy6YKpRSfEr+
KS0plHp+Sachr/hrw3oTp0o9mmuoHbPhoQZ1IUhN4KmBFEMEVMJSbtAhy26eB8BH3jJsjinZLm88
k6YRyUcm8wdb/804zcQiqftnVADIDP9iFHVcmmbkzz5gi6SEaUsM66+LJqa5Vdo2qIBaFfBrh4SK
z2IXE+totao57a9S4kQ0MKvjYE6lHgPwY0W1BTWgYNB/5L6K8RAGVQqVWUyr9jL2/DHIkTv+M7MI
k6NYsMKmkNzp1uoNU/bVwxZ/egGeWdZC1fZZtYmbt4nEi/DzPoN9qnDzP4bkweVdpXk4ftHQM6NR
OJnxyNBT9TZkNIKNm022LUGkSjI9bBxF6N+GU8JFwRujwdI/FtxTcW1yL37eKAHyXGkT0M/b2mcY
2NdkquU+LVhJN0oPkakBFiI+4wlWM/RWTd6pGS41jNL6QN+A79gZExF6xeI8CpZ5D4QQIB8b+Lz2
qlIKSfsK1Q3g2gaKQlTWvB/DoCzJ9lBPCVE+2Sg7IpT6MIUepTwRSuf0Bt7d7QM15eFVyY1SZEkX
LCzxyMKtoNEghGLkaKVi5TIme+2gMOAs/yc7Vrql1xKn87CqovoaXOPpAJ661NgzEE1HrgmhoByg
xIDa4bz8udsMxtGCyrMmyZGtIjWvtxGp3NMg1KxVPMBKrAxkJrDctgPjOoHFTnOMqCMOvIDP4snU
34olusox+exn8Yz+JmP4JKUBOcy8sFfsdtAhEXd+fD15aCqXLF5PZ8msU7m+PtEY+NJwMQ/eECiR
NASMOP0sETddNuvg9I6Bsq6TE4lXzV7iceTuiw74Ow+DVG10tRKibIjX1flQPjY/AKuNNzTgFIYG
h6jDBRcx5RFVwIqjE0kCgViiFJvt2OvMr12SvKaK6bFw/D3lIQ7VG15RnWXz7bXKIOCbS6JFwLCc
fkv4mmg9zH3LTQxPIe0pUyLKzbbjOq4SXkLgxNappkHVbKtoesYC4mvwKCLc0IVjfQtNgLN0mlR2
N9U/FHS/32gtXP6zgZ6A4+f22YChuylfqTzIWG+1u/wHSJzje6HQNPVHB/DRcnK6nb+tPXKkRlb1
839trmFToFsJ9+Ac5s0tIEm9GDqLKTejjCKw8rlN0i+UHQtIfSwUK2Wz02hnnm2iezlQvTwT8ln9
4uTtvxAA8aYoD5Z9dtuKQv7gC2Hh2bA1wD7o3Ut2eGzeMM6Ng9sBVnkjFjzzZX5Wr9llK5iZRapC
FXxV2YOgbzS+YynXfjoeriW5kvqn5FomgOkgLTtbCyZiaTyMGOqc+U2jdudHySSgF13krJQG9MWg
VvXmzkBUoqD8JTD/gn8zwBnhNJXH70jlnI+6XSvF6uT7XraKvka1RrBx1inuK52j5+Y/bGp69KqF
mFSlch/B+NSRPh59VIRN/ZmK4eU0zxB2T2XEsbtoHdzH2FUKS5wkIBhWp4cc4m1k53VTF6zfXZCj
G+/k1BAKVxASjtvbs4YHttt0S8UPS72wrGoBoFxENsAxxLQsobT55LQVBbQrmI2tESV5mIlylzp9
/gqYwHT85lXSliixrkU+LRshr2bLUyszTpgyTGy+cVdI6elbTQq+j6W8qoMOAk9qxOcvyaO1h5EP
thLGfNJI6L1Ma+rxd770ek01ClLp9mIUA0UT0TT2H1/I4OXmCsJ62/iLbpdj6rLYNgd3o/n/ZVdW
oKGrnHi8NR0SE0ZidxfbovTyS8vRQ5Wv8F/F+vlH1KzGJMELcNDTjmgSaul9i+Kh/kO0uS3ESwAn
r7fIbsWVv31dA2EaHpd4he1XkhMDdU7kQua/y17KE9ZAlWHRvIagBCyeV08t/8ecGcojYVpZqBeB
zX0rh+Ju2h4oKtVTSvukqoZMhVXX5SCzfnt3LDDWgCZ2YQO1lybQPS/O7nCQ0PnnJILTanH7VM36
6CZ52F5qBfkxckg7xen1SQuUnbKcvlXSX/oAsWS5kxiCkj3D/t/mS8T1dSQjFHY9umUst2P0yobt
olPJHUZGCEdCfZpMEvQXCtr2Q/kkT8WAXyAEAWxi7zSEWaBAjpZvcHAvEbhW6rYJ9PrOywr2+3xa
1JvkbA3iBvBo+kW6ftK9UUlAa39HKltgeNBqWDqXfwEKo3AlSqZ8yEjYwbfrVsufpkxKtTDM9AB1
+HLj5HyI7Xr5ille6xlsTnL7eSSQZgcgV9CsDK07f8/RqeHj0NmZb3aAKc39Cbdeyzd2pNMTlK+1
/vBcLUdcUfvwRuhqiqtIf3ZsBp12XcWmy/ZHb5h61VGC2gD1VPV+8aore+21gy56nAJpklt+J3rJ
SUm29gXVzXD3L7j7gGXiDXrhFQK0eS7rOSm+7A9RVHW6Vf6N8wJZscWveqi7lpxvhi2Vvx3jZSFh
9qBOjT57cabuA7EtQU7hZs9xGPFmDI3aeIYFkAxI6GSlWnEbdXx4+fmqZrGvEH50RHk7YgEQwBL7
gp73HA8LuVLaujDOAcj2tCwuOe+nJ6Osig3y1rDT45eCU+7qXv+rmj/mxhG75TAr6mdxonIIw8R8
SHoAxVMUAoECspghEKjF0YFsH8HaqdEEsTvn6eiVzZFVxOYZ5UhfBUK5bT1fgfF9+ibtEPZ1xWbZ
32qgZ61r0Yr/HmzoMEI6Bbc3/13GC/U4hh6LUbBcH9qLjT0JbHfofT17JUvngRyZjVRkd8ydZWAd
l1YZTC0A1u6OJrzVTsNEgthKbgKomQTgn03+iBVvtQqlgu1rgKMr3rbeh7zqX07Gc23pyHYrfIp+
QHIue94JmYuF9lEodDfeh1pkdS9giCEsrRTWyxNFWUd7AWfxD3O4zjx/y9WPN3WgpDSGGZDeORXT
J54czM32GPzIamlNSmAGCq/vybABqNDXFUppRBbgRz8I3DL0N9TvW7C6vFmGrbtNN9zwFO8wB79Z
MT5ScOmbB0w0wV7z7YnynnqpkY4JIoZ2/SWhhWoqKlmcSceIsT0LkaEb2Enze3dUl6CKqE4LR4mc
SzJfB05NeZwUCslPUPt9Xbf7vsJO1HNVbW2jtrdNHD9Ku1aRrwK3VrN6jm86aK3y3v7rGozZtZvB
ITDUnVsEn0fo1Xle1DB51CAc6K5+J2Lz/J3JZHjRo32n3+pWNwl3Qex12k5xeiJci4g8YqrUhA8f
RD8P5CqPP26RJHrXjJhmnGrGaUM3PLjRxibRyJaOig7oRf2Ug8ZcG59/Xd6z7SuHU5pf5VYJBunf
Y682+/g6Jr3WA/EhTrHYBsjJXw5e8YyutM6q5XaNqKLt9ZAGTsFeawuvbvhMsk2vekXRv25dCtBV
zV7zcGm/X3LS+DuGFakqMNxrSRAnOMrtFt6ekN3vcxys64N1nGR2reWCbibg0sl8mmIipz5Be50G
J0PrrG9aLJmd3RUaKOmiznblNBUXeCwlLV+FwYXNwUQRb4oCVW3AuWLyX1l2Oi5KZfgxyU28WgVH
nYfKs7vKcSrvXnmfKP1O/O0rqAuNNxe5AxCcIEiuXZ66kYokFy0/1YUEON7PLwUOTWVBFKKSAgxL
Z43cu0GkCR5w/vdLvoqKZ4F0/UJ92tDaq+iqtmYYFndxjdMh8wT+RWTPSPTmsViwM71/CmdDGilZ
OMVxSEMRp/t6MVYl4EdqsKjXal7Dp+Iwt24n4Q1iU0bdm0JoTnDPp6TD7V2qsTKkDm7o2uOjkOR0
2/sE85ypGYICCTV4aRvMNFXSlnldCO7y/NJbg/xlVpjsPTXlcaz/o28/73dRvH6VPw6S5QNS14a9
35AUO7SXIMsW+T0DeFxR76d8GJTRR9xYxuDAS82v2psHFhgl1uV3cKIpUYi3ij7F5ETW4hRkTCFP
7o2axRxg9adxo3YQLh25VcSkwH98wGQSqVX3LbHey0zn1SqILyMcSZU2kl6vWUB07ih9wCcOXtTG
EjUOuYqszss+5PJqSdcsKVgWBKVqM0J8a8X6AxSOQx/yVgjLerAkTAxJ9sx21SZ1vivv6S45MJAM
I5aFO54kWFZoQpaSj9o9a5kW8ReTykFMtLy11nBB24D90vUAJ4p3jYn04qSsbW2uDd/1msbsaEIN
DACkwHTyQW2TO7U7iMG2vyATTllZZELXZ9VTSmRcVun2SPRunm1Jt+fC1A5rsXsh5PTp0ck0hCYg
hEedH3WxnM1+lnN1As/r/bflLvEHf/Ffi0dttwSVy08ayRBWhBIPH54uGPt8CplCvNGxnM0D/fnV
XbbIY2DqsPXV8pnf/ttOWMb3VjLZeugwfynFtph86BL55lssbFi5LKV+HQenmwWeMgki/0bp1VWi
IRPPzdkSF3k3DvcaRBFG/3jzn3CBMb1hERTbDKbj+5m41bOuKKl8JqwfYqbA0dRnq80agZTN4y07
zZ+krtGeTD3zYOT67ey5fEchqxvrt3U9fjD7TDEamOSHnqD9BTNjyBXDSFmOyB7jrDb0H+/+jolK
8K49wE7vBQ7UQaNA0ejnYtQm64RZm0g13rKk72Nbvg1AXte2xx2bJnY+LcUxAaSYLwjg3gQ8yVt5
L0+veJt5GsNrRRU81fLQZZeOOPPR7RZJeSzn1B4g22ERg0CdQA7h2p30GE5mGLygcq/x8OfDk3bO
P1LNMSMNupC72qtCnjdKz8hYwvXqTaG3/p8Mg/ba/an+bFd+WRWiNbMDKpEQxa0u3fH8SFchMehe
IwRWtpVSRh3NxY9ffFT0GMsQUVWYUoZCQ2ZaAfOUvtheLToyj7U6lp7SyvBGfMFITQIyyfOaIfEX
2w3CqRWR//Au4BR3oRvJmnmb0dODECyx/tGa0so32Kcjo/Ej5/XJSOGzincqNltk3qgHSb9X8PVI
ffnZiHvr5Y3CSo1sjcDOP5ue3rcno09c+L6ZYgATBdAUizCfFlx86aOFZ2sxmYtr1E+U0i7z7Uby
8nkxlsof/3rWBN5HGORqqfJfqepcEVVNIL6y1/iXlSib8zUEpah5rUGd2p3Xn+HZayYVYv3O93IK
pN9yzusiCT4NY4f+dnrdRrKFANjUcnpk8QneQMMlJTQGnYDvT+FOqgTVWo9oeCrl1+guTEeKY03a
TFaZFSJK5DvMBgDBEIkWedVjHbK/d2L1Vawm+8a56hx04BSaQzZsKUEnziOlSbo+z0/DlBM/DY7l
x/ecVzJWHYB/fLvTYfhnfqJ0pFy8UvTUSZVZ4iuxSEMgEnGflGQ/b87SI4dafkYFfA8/yl2jgTfn
nmNxYUfID7pOhTJX0aJ6HahiWWl0us+V+bUvmrWfzKByoRzcfaxMtHl748RLFraGPztJJ37MVGGQ
rv7B/F85He//prNsjDKIuL5zzoe4mh7hYiCQntgTBRRp7qiQ1LQW+hNe1oC27j0y5t0gQ+/uqcUj
CFmYaVrAVq5QFBOTu2ZQpbDb9fpy6tAWdsK+CB3YCzYZXDpPN9jFIyaf1Wiv8C2dnJypBMGlIgOy
mL1rF9D6k2T9rfIrz18ZzMdhDKyW5FC4zLRML/cUvN0ABZN/O3gpyqgIXPZpCCDvBaBdee3XKCTk
nLWxbz0hRHaEplLTb2gxziUJwUtfx03wPVj1+7MxAr5NJCK+JgHc2UkExFCvmvYtif0mNBrkUS65
83+/QjKasoOfBprNhTTRZJe+MKliwanbCJwfq0k8iuCks0r6ZZ2Xj/N+wcqC5lDKgwu/xBpbjeqX
WbEZJ3PfQ0NBCfP3iQlzX47MAZVxVBQp8P+spmF+STzWi5BBwtiJL7YMPW1LgikRN1M62y7U+s1U
XGQY0UQQm9tlm14v1LOW61B4An8FTOADlkryQ4wOY88iziam8E7fHX181qAcTNZKy6VhIxosLJjE
SbYXOyv6bJcaFlPrF4ynBz1FJQz7PFB7+t4JtSgV+INSWaHtcPxF3EegTBI5IOeDSOXFN8l4mxsC
x+uxhwLEi7xL0vx1eXxPj8Q44UkrEJDM+xCT7cd4kSW/gRaOF9piPHNF7akbMdjG9YVH6lMOPBeV
AoqJYVP6mhZYtmppzNowrxepgVz8o3h2qBNMI1YwqjW8FFclLCFgES3/2MvVD+YmvVRFu5YYV9i+
lCQFAjH724hPTmYElErJnLzlS0A+CXMUg5nQ+8aPJ1KyGpURDo2fQy6tDGTTu6bAyBFMAUdkWerM
QD9m1HimJRetfnN53AauDfgKc5ia16oeIuzA5znuMiU+2ZjeH8Dnz/jAU77+/EaALNrBnQTV9qJI
ChSE51y/yl0n9o5FqqJJgm5QLTusO6ur1tgo2+tRMb2aeciPstnTqqgoH0olcNTZp4hTYNVrCwaD
cFrNv4YD7fMyLVo5Ib7WZ/ukIyXKiNuz1gcck4cSywRUF1wIseuf3XNYkLFnU3p0TCC0e82dlNfq
IvfkTCY1SfOurqlHEj0HxqPciH5LfYqPjZ8rzTYuK3BTyeUPpxWLimvZ/N2yToqKFw5pB1FW8sGo
eX+swhZy42WbkgH3bXRe+GwCWzQNX1mQkqoH0vKlMdfkRjjfZ6xteYLuG5C/gmIjgMolFl5SLIkg
XWgC1DoRzlx63lxNG+w+jazMBwh7cQoyvk8JzBo3/Wy7ZPqjzfeOO3+VE1b4B4kic2/usbJrz23a
HGnVCf3w3DJeeAKGnjxekFblo6ElYdWlaSkixS6ZqolmlcrbFjYKeSGlygmJtFcnJS+jJ7GxC4MK
4p3acie/Uj53/s/9fC0OKuaSGth5YBQXsVEbaoknmDtuR1AL0CpK0BR1yCxaNPwrt623uu9oxOHr
oNLN0nS+mpIRvpCzndIwT6kCYLZ4BAyotKV1kcbDio1EvMCSgpLFRxmH/BEXcfwEDuTeIt+/ycky
AdffBk40oZ8+Czaw9UwIrhRXcCvUA5Lp5z8Yd2n/f6pLxnavsAqH7uyyj/L4rbNp67cFMF7cApyc
qKkNafP9KHsOdfu2+k3Sw3IChV1937JObBUsz/h/j1SREuDDWLgsefm2saju+T3dk8hRBOUnD+QY
KpLSIPXVkZzoBR8SQst+XVAP7MYoSeJ1H3Omhe3mcWGilLSC/vz70EnuqEbWzozKZdvqyNugb7Dx
BR8tVhBl6Fm1Z2C2Mpt77udDC8O0p6sjb0Sr3b6dJx5l/xpvHyR1SGZ0AojHrELIZVE2dgUYDZWl
pOFdaa017hPlOthJxwaZkEwJhr6dat7hxerQx8v8Z2Q7cmYIp84MI2mdh1n9EOjcEyI+c+6+Gqd6
pobgboBvLgjJxxNKS4wPvu3zx1jvqzth+y+q65+6x7gjM1QQIhIBA3zDB962G4KG5YuN1dbBPkaO
mJH2b2LN3SlTj0s57SSnkvRSABgF+DHfg2w/rzVwJ1+HoAMN2jReQ+jtGDW+vpt3SRKs0obwG69E
xzCT2ozmL7L/jLDhiFzrkolEWcvQwxlYJl/eI+UewrxTy3M2tuNk0d4k6Kkt3QreFR198uhaoAez
wHFMOAQ0WRRlSf4Q6y8+2xs38QWEYL1lq63x4jDqkQfstJhDbiHCTt5eqPtNObn4TZTd8cl8JD5K
XdxL+/EiIsu3U7U18Z6Nin0g7l770zSfWEtZRiM/HJIMagzhngfCcAbIsFFgfPOL8TuO78O9NHAv
ntmU2tFSQuXz2noqZLKFk7/sZHnvp+jSkwAkifryTAhpoDc9gXSUq1Rx1q9oWaoEo7fCaWPEDYSa
djwocA10Nd6ZC6eAu96DOH7KGn9KdeJ3PMD54dJZ5W1WT6PrkQgXii0bal0mIHkzFN+IzW9zWKQN
6jfQnmWIMRZmKrWNpLsu1VFgLXoD1nd7rv+xJsYZW+P31jaiMfos188xVD46fbQmwVMSjC5nWZxY
MTxInq/66HubzU5xIwJGp6jqgmCt19T7qBdJcuqtT7i97J5klCicHBuwj+RGfw5r2TSw79SWOUT+
KLHQsc1ByFHNyZiYAlWNJI317w1OpWAJiiwSiwjpvutCinU8KayVtFl7QDp0Sl7u76H+r2S8AFNS
4LKNt5zky+hSzq4ZQKcuUPLgLUP4il+nOvtW+MDLzog3zgZDRbD+3+9V7msGDcl7wdin7G/26RSJ
2fBZwqms8+BBf5sflOCrHczQqnUl+as7iEWGoxmrGN9P7GSK4TxoJ7+s9rtjmX2mWJKH+wuG7vOO
Qol1SS4y+K4i5vlEQJyN/jd+dolcvAyI3I7DOznutuKQhkg9LXE4cswYqhTbu7u6xa3BX9gRwzkL
Q4TYG+Krq+7szUn9QSOVkW9RG+3JFMr7XYp3tE2+JRNRCXnUupXK3vSqrAyssKQsa5sNXaxbJNpO
NohjipcRY60e7AzW36DqCeCqhYhHEnQ/eeJGlMW6uxbtBnzvkPox1jk9YgTCxhejRopbm4L23lZD
I911GaBzuKQDCkmQy0mhIr5vlmh5nmb/Yx7U2VO9pd3h/OtrOTel6KnruiW71KnPl34ctpBr+LCH
yA2AlizbwlC2RkThyPAhsGLFUsZ0YwNJT9I0qsvS+TMVkKL3sypr5kBNbskelyHtRHh6wNzN5Dtb
CdTHWS/OTyl/16IcFE90QIP8VtpVPyQ2v/lx5vGLjXG6QBdrvgEfUUE+5H30IPpUSNGGYYmJMY1G
vagF7lLZlQqTJC9CHqfgq9lmt/yij1vzlcQBawx/R0fXqnVolIpfNIToTAUjCuXMGP/LG3hPaKvd
xsf/4wjAMXRaftKCYorRV3t+iln8bPBbrQpXE5zm8FfdWXKDMNjSIy8jOGJIpaj/W5eDjUNBdkbp
tQAriDb76SqyN9cdyKbkzXt1qPBP4YGvKJLqAhaS2lEgnwa8qaOklSZ+sq8KI2vzcGQuNz1uTJpH
yAA38ph84zt6mkbFvH/jK9dy09V5VA/RVz8/psc6Yy46T7dDBV/IL+tJqHHIGzptu1eZfqA0c3I7
NObqxjHJZSzSTZoW/5BUBJ5/6warO9euwmSBSs3qUNZZnvd3l8UYpXf90iSntxaEABPuMRzgbajp
uKjkQDoF0in8TFO/CqcG80wEyiuvogdb/AJqtmkC+GA3Zx9M/GCR4tthAKiNlX1IRUKpQMAI5pfP
pV30cWLFrg0Ds1lmp+PpK2tibfMvP/FK7hPHkCSS3su+9bHl6Qt9I+yQ0BfKehKQbMPdR6ydIwRc
iqNbDs77rFyIy/Hhtw9H6sdgkZ864a3UA3r57h6h5Ku1ozxrEVtAYsx/7h0lI1tmboF6k2RrSFqf
jpc6yLdwsIuLUNcISqpRxNLy3uf8g6suD72MXBSlPwcuOMnXEnPWJZK0OJDqSBo1dRM/NM5smkPG
nhSE5B8rUDa60TtkcI+MfPv/EkxgO3LJB7yhx1OXytzYu4WBOLA0lkBFuCepTgm54ZKdMNShXYsa
7OeroFcFWBFp2NxPwjbbhGQk7xCZhL/vEZdZViCJVnQ7znxM3By1wbEYXM7BqTdez7bXEln1Q/iL
mq7LWqrMbrg+hz8oHvPASl97CbFvqv4W0X8H5jqZI2n1YIyYs4H8s1DNJBhC2NcX+a/Z6EM2mku4
KOwxOA1SZtukmOFgxzGMlBQvbvIMgXfBCgHhnas1wndt6glUPmw9HAP18c5MKtQ7Hhq049jTdrpk
orhI9tPnRA9cBzv5ozu59zqU5hDCVnKANVyw6y8pNA6tjUFaetL6hqcnN8E9iJiGj0OjRCBpLBuF
fv1k33rukBvocABfNqkQ4uD8BCeVMiO+nbgwt1N+8cr4zJFjHgzNnzzJ9Ie3Kc/7JGjxEfkvsWgb
HZfS23B5tv9BLEA7Ni/gR38h8b/vgJwtTo92Tt76+ZInn33FyGEddjzxDuW1uzdK4oUetTyecdK7
nH2Y/e0KoyfvbyPr96vOs3/mrA/LEDLSu4TtbXLTbd1dljZtV/t+woDa1x0r
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
