// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Aug  7 11:12:43 2024
// Host        : toluntosun-Ubuntu running 64-bit Ubuntu 23.10
// Command     : write_verilog -force -mode funcsim
//               /home/toluntosun/Desktop/PhD/fpga_acceleration/karatsuba_dsp/karatsuba_dsp.gen/sources_1/ip/dsp_macro_karatsuba_34x43_2_s0ff/dsp_macro_karatsuba_34x43_2_s0ff_sim_netlist.v
// Design      : dsp_macro_karatsuba_34x43_2_s0ff
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_karatsuba_34x43_2_s0ff,dsp_macro_v1_0_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_3,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dsp_macro_karatsuba_34x43_2_s0ff
   (CLK,
    A,
    B,
    PCOUT,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [17:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcout_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME pcout_intf, LAYERED_METADATA undef" *) output [47:0]PCOUT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [35:0]P;

  wire [17:0]A;
  wire [17:0]B;
  wire CLK;
  wire [35:0]P;
  wire [47:0]PCOUT;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;

  (* C_A_WIDTH = "18" *) 
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
  (* C_P_MSB = "35" *) 
  (* C_REG_CONFIG = "00000000000011000000000000000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dsp_macro_karatsuba_34x43_2_s0ff_dsp_macro_v1_0_3 U0
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
coB2yGVG1m7vVA7WKVd5Xbt/A+Rz1KsrHIgVXWXgHBoRYp9m/VCF8Z/BntnzcABd5mmaTPNrDVNY
S9SlMp2zJDgKZ7VS5TMLNGm0vn3wZL4Af1N61Y0lH00+5nvxWdsOgrpfVcnD8o6afhJeFmPXjBee
E9Wa74ZHwcUeL3WEPYNtmnOvCgxDLCvXYp2NP30IDJx9XBbeKZyZQ7jB3BO8u/OwdspyLxWeJOge
SE7THKF37w+chfuqeLiPR0SrGQtNykJm0Jktf0x8UtyhGIXvJf1pOvvaiLLxRft3hEuuMWnF5/Zu
AGL2OfRQnZEF6nppnqJ+4zWxgyT0UtCF/GDJIw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mIS96GrZeRxc4kc7/tjDvSWUngXgRkVanDVz6Zy/sKUYKfRvVDNb/31ERixLk6/xrj7FuwXOmMVf
KIRu3eO23/vGv9qQrkZUznlBzNzyoV25B4Zw32COH9Bn8DWgcHSY0s9tJ48mtyawh2UcD1REceFL
bb2J+lnNGxJWk9gCT+1KMtEDrP7s5+xlZ5mmONnAbihh790RNZd+Cs8bTpY1yA/0dD2LUQkmLNEE
HF4MnrYSY+Y2RUJR+GsaRoJBgIF/8iOJFAwzbw106Ivl58DW4fPRCaa6Jui7iXvfs+gqMh0fqekK
FeKYQwTpU7wkyjzQVoU+d1hZTruFpNWeugUzJg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22256)
`pragma protect data_block
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
WDJkROzzOGtF7Y9HSQ22pcLFHqxFZAjFdds=
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
